package com.app.livetvstrean.fragments;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import android.util.Log;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;

import com.app.livetvstrean.Config;
import com.app.livetvstrean.R;
import com.app.livetvstrean.activities.ActivityDetailCategory;
import com.app.livetvstrean.adapters.AdapterCategory;
import com.app.livetvstrean.callbacks.CallbackCategories;
import com.app.livetvstrean.models.Category;
import com.app.livetvstrean.rests.ApiInterface;
import com.app.livetvstrean.rests.RestAdapter;
import com.app.livetvstrean.utils.Constant;
import com.app.livetvstrean.utils.NetworkCheck;
import com.app.livetvstrean.utils.Tools;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.InterstitialAd;
import com.google.android.gms.ads.MobileAds;

import java.util.ArrayList;
import java.util.List;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class FragmentCategory extends Fragment {

    private View root_view, parent_view;
    private RecyclerView recyclerView;
    private SwipeRefreshLayout swipeRefreshLayout;
    private AdapterCategory adapterCategory;
    public static final String EXTRA_OBJC = "key.EXTRA_OBJC";
    private Call<CallbackCategories> callbackCall = null;
    private StaggeredGridLayoutManager gaggeredGridLayoutManager;
    private InterstitialAd interstitialAd;
    int counter = 1;

    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        root_view = inflater.inflate(R.layout.fragment_category, null);
        parent_view = getActivity().findViewById(R.id.lyt_content);

        loadInterstitialAd();

        swipeRefreshLayout = (SwipeRefreshLayout) root_view.findViewById(R.id.swipe_refresh_layout_category);
        swipeRefreshLayout.setColorSchemeResources(R.color.orange, R.color.green, R.color.blue, R.color.red);

        recyclerView = (RecyclerView) root_view.findViewById(R.id.recyclerViewCategory);
        recyclerView.setHasFixedSize(true);

        gaggeredGridLayoutManager = new StaggeredGridLayoutManager(1, 1);
        recyclerView.setLayoutManager(gaggeredGridLayoutManager);

        //set data and list adapter
        adapterCategory = new AdapterCategory(getActivity(), new ArrayList<Category>());
        recyclerView.setAdapter(adapterCategory);

        // on item list clicked
        adapterCategory.setOnItemClickListener(new AdapterCategory.OnItemClickListener() {
            @Override
            public void onItemClick(View v, Category obj, int position) {
                Intent intent = new Intent(getActivity(), ActivityDetailCategory.class);
                intent.putExtra(EXTRA_OBJC, obj);
                startActivity(intent);

                showInterstitialAd();
            }
        });

        // on swipe list
        swipeRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() {
            @Override
            public void onRefresh() {
                adapterCategory.resetListData();
                requestAction();
            }
        });

        requestAction();

        return root_view;
    }

    private void displayApiResult(final List<Category> categories) {
        adapterCategory.setListData(categories);
        swipeProgress(false);
        if (categories.size() == 0) {
            showNoItemView(true);
        }
    }

    private void requestCategoriesApi() {
        ApiInterface apiInterface = RestAdapter.createAPI();
        callbackCall = apiInterface.getAllCategories();
        callbackCall.enqueue(new Callback<CallbackCategories>() {
            @Override
            public void onResponse(Call<CallbackCategories> call, Response<CallbackCategories> response) {
                CallbackCategories resp = response.body();
                if (resp != null && resp.status.equals("ok")) {
                    displayApiResult(resp.categories);
                } else {
                    onFailRequest();
                }
            }

            @Override
            public void onFailure(Call<CallbackCategories> call, Throwable t) {
                if (!call.isCanceled()) onFailRequest();
            }

        });
    }

    private void onFailRequest() {
        swipeProgress(false);
        if (NetworkCheck.isConnect(getActivity())) {
            showFailedView(true, getString(R.string.failed_text));
        } else {
            showFailedView(true, getString(R.string.no_internet_text));
        }
    }

    private void requestAction() {
        showFailedView(false, "");
        swipeProgress(true);
        showNoItemView(false);
        new Handler().postDelayed(new Runnable() {
            @Override
            public void run() {
                requestCategoriesApi();
            }
        }, Constant.DELAY_TIME);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        swipeProgress(false);
        if(callbackCall != null && callbackCall.isExecuted()){
            callbackCall.cancel();
        }
    }

    private void showFailedView(boolean flag, String message) {
        View lyt_failed = (View) root_view.findViewById(R.id.lyt_failed_category);
        ((TextView) root_view.findViewById(R.id.failed_message)).setText(message);
        if (flag) {
            recyclerView.setVisibility(View.GONE);
            lyt_failed.setVisibility(View.VISIBLE);
        } else {
            recyclerView.setVisibility(View.VISIBLE);
            lyt_failed.setVisibility(View.GONE);
        }
        ((Button) root_view.findViewById(R.id.failed_retry)).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                requestAction();
            }
        });
    }

    private void showNoItemView(boolean show) {
        View lyt_no_item = (View) root_view.findViewById(R.id.lyt_no_item_category);
        ((TextView) root_view.findViewById(R.id.no_item_message)).setText(R.string.no_category_found);
        if (show) {
            recyclerView.setVisibility(View.GONE);
            lyt_no_item.setVisibility(View.VISIBLE);
        } else {
            recyclerView.setVisibility(View.VISIBLE);
            lyt_no_item.setVisibility(View.GONE);
        }
    }

    private void swipeProgress(final boolean show) {
        if (!show) {
            swipeRefreshLayout.setRefreshing(show);
            return;
        }
        swipeRefreshLayout.post(new Runnable() {
            @Override
            public void run() {
                swipeRefreshLayout.setRefreshing(show);
            }
        });
    }

    private int dpToPx(int dp) {
        Resources r = getResources();
        return Math.round(TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_DIP, dp, r.getDisplayMetrics()));
    }

    private void loadInterstitialAd() {
        if (Config.ENABLE_ADMOB_INTERSTITIAL_ADS) {
            MobileAds.initialize(getActivity(), getResources().getString(R.string.admob_app_id));
            interstitialAd = new InterstitialAd(getActivity());
            interstitialAd.setAdUnitId(getResources().getString(R.string.admob_interstitial_unit_id));
           interstitialAd.loadAd(Tools.getAdRequest(getActivity()));
            interstitialAd.setAdListener(new AdListener() {
                @Override
                public void onAdClosed() {
                    interstitialAd.loadAd(Tools.getAdRequest(getActivity()));
                }
            });
        } else {
            Log.d("AdMob", "AdMob Interstitial is Disabled");
        }
    }

    private void showInterstitialAd() {
        if (Config.ENABLE_ADMOB_INTERSTITIAL_ADS) {
            if (interstitialAd != null && interstitialAd.isLoaded()) {
                if (counter == Config.ADMOB_INTERSTITIAL_ADS_INTERVAL) {
                    interstitialAd.show();
                    counter = 1;
                } else {
                    counter++;
                }
            } else {
                Log.d("AdMob", "Interstitial Ad is Disabled");
            }
        } else {
            Log.d("AdMob", "AdMob Interstitial is Disabled");
        }
    }

}
