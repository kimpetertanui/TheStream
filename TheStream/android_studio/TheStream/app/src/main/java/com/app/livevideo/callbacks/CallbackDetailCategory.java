package com.app.livevideo.callbacks;

import com.app.livevideo.models.Category;
import com.app.livevideo.models.Channel;

import java.util.ArrayList;
import java.util.List;

public class CallbackDetailCategory {

    public String status = "";
    public int count = -1;
    public int count_total = -1;
    public int pages = -1;
    public Category category = null;
    public List<Channel> posts = new ArrayList<>();

}
