-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2018 at 10:24 AM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `the_stream`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `cid` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`cid`, `category_name`, `category_image`) VALUES
(32, 'Entertainment', '3455-2017-04-13.png'),
(33, 'Sports', '2277-2017-04-13.png'),
(34, 'Education', '6094-2017-04-13.png'),
(35, 'Music', '7102-2017-04-13.png'),
(36, 'News', '2999-2017-04-20.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_channel`
--

CREATE TABLE `tbl_channel` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `channel_name` varchar(255) NOT NULL,
  `channel_image` varchar(255) NOT NULL,
  `channel_url` varchar(255) NOT NULL,
  `channel_description` text NOT NULL,
  `channel_type` varchar(45) NOT NULL DEFAULT 'URL',
  `video_id` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_channel`
--

INSERT INTO `tbl_channel` (`id`, `category_id`, `channel_name`, `channel_image`, `channel_url`, `channel_description`, `channel_type`, `video_id`) VALUES
(80, 32, 'Bloomberg TV', '1511660016_7My2hMBt.jpg', 'https://live-bloomberg-ap-north.global.ssl.fastly.net/ap/AP1000kb_live.m3u8', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dicet pro me ipsa virtus nec dubitabit isti vestro beato M. Effluit igitur voluptas corporis et prima quaeque avolat saepiusque relinquit causam paenitendi quam recordandi. Duo Reges: constructio interrete. Illis videtur, qui illud non dubitant bonum dicere -; Expectoque quid ad id, quod quaerebam, respondeas.</p>\r\n\r\n<p>Quem ad modum quis ambulet, sedeat, qui ductus oris, qui vultus in quoque sit? Iam id ipsum absurdum, maximum malum neglegi. Cur post Tarentum ad Archytam? Si quicquam extra virtutem habeatur in bonis. Quid enim possumus hoc agere divinius? Aliter homines, aliter philosophos loqui putas oportere? Tu vero, inquam, ducas licet, si sequetur; Videsne quam sit magna dissensio? Erit enim mecum, si tecum erit. Theophrasti igitur, inquit, tibi liber ille placet de beata vita? Quod idem cum vestri faciant, non satis magnam tribuunt inventoribus gratiam.</p>\r\n\r\n<p>Odium autem et invidiam facile vitabis. Bonum liberi: misera orbitas. Minime vero, inquit ille, consentit. Quae hic rei publicae vulnera inponebat, eadem ille sanabat.</p>\r\n\r\n<p>Ea possunt paria non esse. Quae hic rei publicae vulnera inponebat, eadem ille sanabat. Teneo, inquit, finem illi videri nihil dolere. Quid ergo attinet dicere: Nihil haberem, quod reprehenderem, si finitas cupiditates haberent? Inde igitur, inquit, ordiendum est.</p>\r\n', 'URL', ''),
(81, 32, 'DAAI TV', '1511659686_DAAI-06.jpg', 'https://edge.nim.mivo.tv/daaitv/daaitv2_all/playlist.m3u8', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dicet pro me ipsa virtus nec dubitabit isti vestro beato M. Effluit igitur voluptas corporis et prima quaeque avolat saepiusque relinquit causam paenitendi quam recordandi. Duo Reges: constructio interrete. Illis videtur, qui illud non dubitant bonum dicere -; Expectoque quid ad id, quod quaerebam, respondeas.</p>\r\n\r\n<p>Quem ad modum quis ambulet, sedeat, qui ductus oris, qui vultus in quoque sit? Iam id ipsum absurdum, maximum malum neglegi. Cur post Tarentum ad Archytam? Si quicquam extra virtutem habeatur in bonis. Quid enim possumus hoc agere divinius? Aliter homines, aliter philosophos loqui putas oportere? Tu vero, inquam, ducas licet, si sequetur; Videsne quam sit magna dissensio? Erit enim mecum, si tecum erit. Theophrasti igitur, inquit, tibi liber ille placet de beata vita? Quod idem cum vestri faciant, non satis magnam tribuunt inventoribus gratiam.</p>\r\n\r\n<p>Odium autem et invidiam facile vitabis. Bonum liberi: misera orbitas. Minime vero, inquit ille, consentit. Quae hic rei publicae vulnera inponebat, eadem ille sanabat.</p>\r\n\r\n<p>Ea possunt paria non esse. Quae hic rei publicae vulnera inponebat, eadem ille sanabat. Teneo, inquit, finem illi videri nihil dolere. Quid ergo attinet dicere: Nihil haberem, quod reprehenderem, si finitas cupiditates haberent? Inde igitur, inquit, ordiendum est.</p>\r\n', 'URL', ''),
(82, 32, 'CBS News', '1511659909_cbsnewscard_0.jpg', 'https://dai.google.com/linear/hls/event/Sid4xiTQTkCT1SLu6rjUSQ/master.m3u8', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dicet pro me ipsa virtus nec dubitabit isti vestro beato M. Effluit igitur voluptas corporis et prima quaeque avolat saepiusque relinquit causam paenitendi quam recordandi. Duo Reges: constructio interrete. Illis videtur, qui illud non dubitant bonum dicere -; Expectoque quid ad id, quod quaerebam, respondeas.</p>\r\n\r\n<p>Quem ad modum quis ambulet, sedeat, qui ductus oris, qui vultus in quoque sit? Iam id ipsum absurdum, maximum malum neglegi. Cur post Tarentum ad Archytam? Si quicquam extra virtutem habeatur in bonis. Quid enim possumus hoc agere divinius? Aliter homines, aliter philosophos loqui putas oportere? Tu vero, inquam, ducas licet, si sequetur; Videsne quam sit magna dissensio? Erit enim mecum, si tecum erit. Theophrasti igitur, inquit, tibi liber ille placet de beata vita? Quod idem cum vestri faciant, non satis magnam tribuunt inventoribus gratiam.</p>\r\n\r\n<p>Odium autem et invidiam facile vitabis. Bonum liberi: misera orbitas. Minime vero, inquit ille, consentit. Quae hic rei publicae vulnera inponebat, eadem ille sanabat.</p>\r\n\r\n<p>Ea possunt paria non esse. Quae hic rei publicae vulnera inponebat, eadem ille sanabat. Teneo, inquit, finem illi videri nihil dolere. Quid ergo attinet dicere: Nihil haberem, quod reprehenderem, si finitas cupiditates haberent? Inde igitur, inquit, ordiendum est.</p>\r\n', 'URL', ''),
(83, 32, 'Inspira TV', '1511660462_inspira.jpg', 'http://stream1.ninmedia.tv/live/nin-inspira.stream_nin/playlist.m3u8', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dicet pro me ipsa virtus nec dubitabit isti vestro beato M. Effluit igitur voluptas corporis et prima quaeque avolat saepiusque relinquit causam paenitendi quam recordandi. Duo Reges: constructio interrete. Illis videtur, qui illud non dubitant bonum dicere -; Expectoque quid ad id, quod quaerebam, respondeas.</p>\r\n\r\n<p>Quem ad modum quis ambulet, sedeat, qui ductus oris, qui vultus in quoque sit? Iam id ipsum absurdum, maximum malum neglegi. Cur post Tarentum ad Archytam? Si quicquam extra virtutem habeatur in bonis. Quid enim possumus hoc agere divinius? Aliter homines, aliter philosophos loqui putas oportere? Tu vero, inquam, ducas licet, si sequetur; Videsne quam sit magna dissensio? Erit enim mecum, si tecum erit. Theophrasti igitur, inquit, tibi liber ille placet de beata vita? Quod idem cum vestri faciant, non satis magnam tribuunt inventoribus gratiam.</p>\r\n\r\n<p>Odium autem et invidiam facile vitabis. Bonum liberi: misera orbitas. Minime vero, inquit ille, consentit. Quae hic rei publicae vulnera inponebat, eadem ille sanabat.</p>\r\n\r\n<p>Ea possunt paria non esse. Quae hic rei publicae vulnera inponebat, eadem ille sanabat. Teneo, inquit, finem illi videri nihil dolere. Quid ergo attinet dicere: Nihil haberem, quod reprehenderem, si finitas cupiditates haberent? Inde igitur, inquit, ordiendum est.</p>\r\n', 'URL', ''),
(84, 32, 'iNews TV', '1511660318_inews tv [ningali-tv.blogspot.com].jpg', 'http://edge.okezone.com/live/inewsokezone.com.m3u8', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dicet pro me ipsa virtus nec dubitabit isti vestro beato M. Effluit igitur voluptas corporis et prima quaeque avolat saepiusque relinquit causam paenitendi quam recordandi. Duo Reges: constructio interrete. Illis videtur, qui illud non dubitant bonum dicere -; Expectoque quid ad id, quod quaerebam, respondeas.</p>\r\n\r\n<p>Quem ad modum quis ambulet, sedeat, qui ductus oris, qui vultus in quoque sit? Iam id ipsum absurdum, maximum malum neglegi. Cur post Tarentum ad Archytam? Si quicquam extra virtutem habeatur in bonis. Quid enim possumus hoc agere divinius? Aliter homines, aliter philosophos loqui putas oportere? Tu vero, inquam, ducas licet, si sequetur; Videsne quam sit magna dissensio? Erit enim mecum, si tecum erit. Theophrasti igitur, inquit, tibi liber ille placet de beata vita? Quod idem cum vestri faciant, non satis magnam tribuunt inventoribus gratiam.</p>\r\n\r\n<p>Odium autem et invidiam facile vitabis. Bonum liberi: misera orbitas. Minime vero, inquit ille, consentit. Quae hic rei publicae vulnera inponebat, eadem ille sanabat.</p>\r\n\r\n<p>Ea possunt paria non esse. Quae hic rei publicae vulnera inponebat, eadem ille sanabat. Teneo, inquit, finem illi videri nihil dolere. Quid ergo attinet dicere: Nihil haberem, quod reprehenderem, si finitas cupiditates haberent? Inde igitur, inquit, ordiendum est.</p>\r\n', 'URL', ''),
(85, 32, 'Metro TV', '0848-2017-04-20.jpg', 'http://edge.metrotvnews.com:1935/live-edge/smil:metro.smil/chunklist_w213916581_b500000_sleng.m3u8', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dicet pro me ipsa virtus nec dubitabit isti vestro beato M. Effluit igitur voluptas corporis et prima quaeque avolat saepiusque relinquit causam paenitendi quam recordandi. Duo Reges: constructio interrete. Illis videtur, qui illud non dubitant bonum dicere -; Expectoque quid ad id, quod quaerebam, respondeas.</p>\r\n\r\n<p>Quem ad modum quis ambulet, sedeat, qui ductus oris, qui vultus in quoque sit? Iam id ipsum absurdum, maximum malum neglegi. Cur post Tarentum ad Archytam? Si quicquam extra virtutem habeatur in bonis. Quid enim possumus hoc agere divinius? Aliter homines, aliter philosophos loqui putas oportere? Tu vero, inquam, ducas licet, si sequetur; Videsne quam sit magna dissensio? Erit enim mecum, si tecum erit. Theophrasti igitur, inquit, tibi liber ille placet de beata vita? Quod idem cum vestri faciant, non satis magnam tribuunt inventoribus gratiam.</p>\r\n\r\n<p>Odium autem et invidiam facile vitabis. Bonum liberi: misera orbitas. Minime vero, inquit ille, consentit. Quae hic rei publicae vulnera inponebat, eadem ille sanabat.</p>\r\n\r\n<p>Ea possunt paria non esse. Quae hic rei publicae vulnera inponebat, eadem ille sanabat. Teneo, inquit, finem illi videri nihil dolere. Quid ergo attinet dicere: Nihil haberem, quod reprehenderem, si finitas cupiditates haberent? Inde igitur, inquit, ordiendum est.</p>\r\n', 'URL', ''),
(86, 32, 'MNC Life', '1446-2017-04-20.jpg', 'https://edge.okezone.com/live/life.m3u8', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dicet pro me ipsa virtus nec dubitabit isti vestro beato M. Effluit igitur voluptas corporis et prima quaeque avolat saepiusque relinquit causam paenitendi quam recordandi. Duo Reges: constructio interrete. Illis videtur, qui illud non dubitant bonum dicere -; Expectoque quid ad id, quod quaerebam, respondeas.</p>\r\n\r\n<p>Quem ad modum quis ambulet, sedeat, qui ductus oris, qui vultus in quoque sit? Iam id ipsum absurdum, maximum malum neglegi. Cur post Tarentum ad Archytam? Si quicquam extra virtutem habeatur in bonis. Quid enim possumus hoc agere divinius? Aliter homines, aliter philosophos loqui putas oportere? Tu vero, inquam, ducas licet, si sequetur; Videsne quam sit magna dissensio? Erit enim mecum, si tecum erit. Theophrasti igitur, inquit, tibi liber ille placet de beata vita? Quod idem cum vestri faciant, non satis magnam tribuunt inventoribus gratiam.</p>\r\n\r\n<p>Odium autem et invidiam facile vitabis. Bonum liberi: misera orbitas. Minime vero, inquit ille, consentit. Quae hic rei publicae vulnera inponebat, eadem ille sanabat.</p>\r\n\r\n<p>Ea possunt paria non esse. Quae hic rei publicae vulnera inponebat, eadem ille sanabat. Teneo, inquit, finem illi videri nihil dolere. Quid ergo attinet dicere: Nihil haberem, quod reprehenderem, si finitas cupiditates haberent? Inde igitur, inquit, ordiendum est.</p>\r\n', 'URL', ''),
(87, 33, 'Aljazeera', '1511659284_aljazeera.jpg', 'https://english.streaming.aljazeera.net/aljazeera/english2/index576.m3u8', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dicet pro me ipsa virtus nec dubitabit isti vestro beato M. Effluit igitur voluptas corporis et prima quaeque avolat saepiusque relinquit causam paenitendi quam recordandi. Duo Reges: constructio interrete. Illis videtur, qui illud non dubitant bonum dicere -; Expectoque quid ad id, quod quaerebam, respondeas.</p>\r\n\r\n<p>Quem ad modum quis ambulet, sedeat, qui ductus oris, qui vultus in quoque sit? Iam id ipsum absurdum, maximum malum neglegi. Cur post Tarentum ad Archytam? Si quicquam extra virtutem habeatur in bonis. Quid enim possumus hoc agere divinius? Aliter homines, aliter philosophos loqui putas oportere? Tu vero, inquam, ducas licet, si sequetur; Videsne quam sit magna dissensio? Erit enim mecum, si tecum erit. Theophrasti igitur, inquit, tibi liber ille placet de beata vita? Quod idem cum vestri faciant, non satis magnam tribuunt inventoribus gratiam.</p>\r\n\r\n<p>Odium autem et invidiam facile vitabis. Bonum liberi: misera orbitas. Minime vero, inquit ille, consentit. Quae hic rei publicae vulnera inponebat, eadem ille sanabat.</p>\r\n\r\n<p>Ea possunt paria non esse. Quae hic rei publicae vulnera inponebat, eadem ille sanabat. Teneo, inquit, finem illi videri nihil dolere. Quid ergo attinet dicere: Nihil haberem, quod reprehenderem, si finitas cupiditates haberent? Inde igitur, inquit, ordiendum est.</p>\r\n', 'URL', ''),
(88, 36, 'TVRI', '3676-2017-04-20.jpg', 'http://ott.tvri.co.id/Content/HLS/Live/Channel(TVRINasional)/Stream(04)/index.m3u8', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dicet pro me ipsa virtus nec dubitabit isti vestro beato M. Effluit igitur voluptas corporis et prima quaeque avolat saepiusque relinquit causam paenitendi quam recordandi. Duo Reges: constructio interrete. Illis videtur, qui illud non dubitant bonum dicere -; Expectoque quid ad id, quod quaerebam, respondeas.</p>\r\n\r\n<p>Quem ad modum quis ambulet, sedeat, qui ductus oris, qui vultus in quoque sit? Iam id ipsum absurdum, maximum malum neglegi. Cur post Tarentum ad Archytam? Si quicquam extra virtutem habeatur in bonis. Quid enim possumus hoc agere divinius? Aliter homines, aliter philosophos loqui putas oportere? Tu vero, inquam, ducas licet, si sequetur; Videsne quam sit magna dissensio? Erit enim mecum, si tecum erit. Theophrasti igitur, inquit, tibi liber ille placet de beata vita? Quod idem cum vestri faciant, non satis magnam tribuunt inventoribus gratiam.</p>\r\n\r\n<p>Odium autem et invidiam facile vitabis. Bonum liberi: misera orbitas. Minime vero, inquit ille, consentit. Quae hic rei publicae vulnera inponebat, eadem ille sanabat.</p>\r\n\r\n<p>Ea possunt paria non esse. Quae hic rei publicae vulnera inponebat, eadem ille sanabat. Teneo, inquit, finem illi videri nihil dolere. Quid ergo attinet dicere: Nihil haberem, quod reprehenderem, si finitas cupiditates haberent? Inde igitur, inquit, ordiendum est.</p>\r\n', 'URL', ''),
(89, 34, 'Rodja TV', '2972-2017-04-20.jpg', 'http://vids.rodja.tv:1935/live/rodja/chunklist_w1534883362.m3u8', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dicet pro me ipsa virtus nec dubitabit isti vestro beato M. Effluit igitur voluptas corporis et prima quaeque avolat saepiusque relinquit causam paenitendi quam recordandi. Duo Reges: constructio interrete. Illis videtur, qui illud non dubitant bonum dicere -; Expectoque quid ad id, quod quaerebam, respondeas.</p>\r\n\r\n<p>Quem ad modum quis ambulet, sedeat, qui ductus oris, qui vultus in quoque sit? Iam id ipsum absurdum, maximum malum neglegi. Cur post Tarentum ad Archytam? Si quicquam extra virtutem habeatur in bonis. Quid enim possumus hoc agere divinius? Aliter homines, aliter philosophos loqui putas oportere? Tu vero, inquam, ducas licet, si sequetur; Videsne quam sit magna dissensio? Erit enim mecum, si tecum erit. Theophrasti igitur, inquit, tibi liber ille placet de beata vita? Quod idem cum vestri faciant, non satis magnam tribuunt inventoribus gratiam.</p>\r\n\r\n<p>Odium autem et invidiam facile vitabis. Bonum liberi: misera orbitas. Minime vero, inquit ille, consentit. Quae hic rei publicae vulnera inponebat, eadem ille sanabat.</p>\r\n\r\n<p>Ea possunt paria non esse. Quae hic rei publicae vulnera inponebat, eadem ille sanabat. Teneo, inquit, finem illi videri nihil dolere. Quid ergo attinet dicere: Nihil haberem, quod reprehenderem, si finitas cupiditates haberent? Inde igitur, inquit, ordiendum est.</p>\r\n', 'URL', ''),
(90, 36, 'Berita Satu', '3160-2017-04-20.jpg', 'http://edge.linknetott.swiftserve.com/live/BsNew/amlst:bsnew/chunklist_b2121000.m3u8', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dicet pro me ipsa virtus nec dubitabit isti vestro beato M. Effluit igitur voluptas corporis et prima quaeque avolat saepiusque relinquit causam paenitendi quam recordandi. Duo Reges: constructio interrete. Illis videtur, qui illud non dubitant bonum dicere -; Expectoque quid ad id, quod quaerebam, respondeas.</p>\r\n\r\n<p>Quem ad modum quis ambulet, sedeat, qui ductus oris, qui vultus in quoque sit? Iam id ipsum absurdum, maximum malum neglegi. Cur post Tarentum ad Archytam? Si quicquam extra virtutem habeatur in bonis. Quid enim possumus hoc agere divinius? Aliter homines, aliter philosophos loqui putas oportere? Tu vero, inquam, ducas licet, si sequetur; Videsne quam sit magna dissensio? Erit enim mecum, si tecum erit. Theophrasti igitur, inquit, tibi liber ille placet de beata vita? Quod idem cum vestri faciant, non satis magnam tribuunt inventoribus gratiam.</p>\r\n\r\n<p>Odium autem et invidiam facile vitabis. Bonum liberi: misera orbitas. Minime vero, inquit ille, consentit. Quae hic rei publicae vulnera inponebat, eadem ille sanabat.</p>\r\n\r\n<p>Ea possunt paria non esse. Quae hic rei publicae vulnera inponebat, eadem ille sanabat. Teneo, inquit, finem illi videri nihil dolere. Quid ergo attinet dicere: Nihil haberem, quod reprehenderem, si finitas cupiditates haberent? Inde igitur, inquit, ordiendum est.</p>\r\n', 'URL', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_fcm_api_key`
--

CREATE TABLE `tbl_fcm_api_key` (
  `id` int(11) NOT NULL,
  `app_fcm_key` text NOT NULL,
  `api_key` varchar(255) NOT NULL,
  `package_name` varchar(255) NOT NULL DEFAULT 'com.app.thestream',
  `onesignal_app_id` varchar(500) NOT NULL DEFAULT '0',
  `onesignal_rest_api_key` varchar(500) NOT NULL DEFAULT '0',
  `privacy_policy` text NOT NULL,
  `providers` varchar(45) NOT NULL DEFAULT 'onesignal',
  `protocol_type` varchar(10) NOT NULL DEFAULT 'http://'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_fcm_api_key`
--

INSERT INTO `tbl_fcm_api_key` (`id`, `app_fcm_key`, `api_key`, `package_name`, `onesignal_app_id`, `onesignal_rest_api_key`, `privacy_policy`, `providers`, `protocol_type`) VALUES
(1, '0', 'cda11uT8cBLzm6a1YvsiUWOEgrFowk95K2DM3tHAPRCX4ypGjN', 'com.app.thestream', '0', '0', '<h1>Privacy Policy</h1>\r\n\r\n<p>Effective date: August 24, 2018</p>\r\n\r\n<p>The Stream App (&quot;us&quot;, &quot;we&quot;, or &quot;our&quot;) operates the website and the The Stream App mobile application (hereinafter referred to as the &quot;Service&quot;).</p>\r\n\r\n<p>This page informs you of our policies regarding the collection, use, and disclosure of personal data when you use our Service and the choices you have associated with that data.&nbsp;</p>\r\n\r\n<p>We use your data to provide and improve the Service. By using the Service, you agree to the collection and use of information in accordance with this policy. Unless otherwise defined in this Privacy Policy, the terms used in this Privacy Policy have the same meanings as in our Terms and Conditions.</p>\r\n\r\n<h2>Information Collection And Use</h2>\r\n\r\n<p>We collect several different types of information for various purposes to provide and improve our Service to you.</p>\r\n\r\n<h3>Types of Data Collected</h3>\r\n\r\n<p>Personal Data</p>\r\n\r\n<p>While using our Service, we may ask you to provide us with certain personally identifiable information that can be used to contact or identify you (&quot;Personal Data&quot;). Personally identifiable information may include, but is not limited to:</p>\r\n\r\n<ul>\r\n	<li>Email address</li>\r\n	<li>Cookies and Usage Data</li>\r\n</ul>\r\n\r\n<p>Usage Data</p>\r\n\r\n<p>We may also collect information that your browser sends whenever you visit our Service or when you access the Service by or through a mobile device (&quot;Usage Data&quot;).</p>\r\n\r\n<p>This Usage Data may include information such as your computer&#39;s Internet Protocol address (e.g. IP address), browser type, browser version, the pages of our Service that you visit, the time and date of your visit, the time spent on those pages, unique device identifiers and other diagnostic data.</p>\r\n\r\n<p>When you access the Service with a mobile device, this Usage Data may include information such as the type of mobile device you use, your mobile device unique ID, the IP address of your mobile device, your mobile operating system, the type of mobile Internet browser you use, unique device identifiers and other diagnostic data.</p>\r\n\r\n<p>Tracking &amp; Cookies Data</p>\r\n\r\n<p>We use cookies and similar tracking technologies to track the activity on our Service and hold certain information.</p>\r\n\r\n<p>Cookies are files with small amount of data which may include an anonymous unique identifier. Cookies are sent to your browser from a website and stored on your device. Tracking technologies also used are beacons, tags, and scripts to collect and track information and to improve and analyze our Service.</p>\r\n\r\n<p>You can instruct your browser to refuse all cookies or to indicate when a cookie is being sent. However, if you do not accept cookies, you may not be able to use some portions of our Service.</p>\r\n\r\n<p>Examples of Cookies we use:</p>\r\n\r\n<ul>\r\n	<li><strong>Session Cookies.</strong> We use Session Cookies to operate our Service.</li>\r\n	<li><strong>Preference Cookies.</strong> We use Preference Cookies to remember your preferences and various settings.</li>\r\n	<li><strong>Security Cookies.</strong> We use Security Cookies for security purposes.</li>\r\n</ul>\r\n\r\n<h2>Use of Data</h2>\r\n\r\n<p>The Stream App uses the collected data for various purposes:</p>\r\n\r\n<ul>\r\n	<li>To provide and maintain the Service</li>\r\n	<li>To notify you about changes to our Service</li>\r\n	<li>To allow you to participate in interactive features of our Service when you choose to do so</li>\r\n	<li>To provide customer care and support</li>\r\n	<li>To provide analysis or valuable information so that we can improve the Service</li>\r\n	<li>To monitor the usage of the Service</li>\r\n	<li>To detect, prevent and address technical issues</li>\r\n</ul>\r\n\r\n<h2>Transfer Of Data</h2>\r\n\r\n<p>Your information, including Personal Data, may be transferred to &mdash; and maintained on &mdash; computers located outside of your state, province, country or other governmental jurisdiction where the data protection laws may differ than those from your jurisdiction.</p>\r\n\r\n<p>If you are located outside Indonesia and choose to provide information to us, please note that we transfer the data, including Personal Data, to Indonesia and process it there.</p>\r\n\r\n<p>Your consent to this Privacy Policy followed by your submission of such information represents your agreement to that transfer.</p>\r\n\r\n<p>The Stream App will take all steps reasonably necessary to ensure that your data is treated securely and in accordance with this Privacy Policy and no transfer of your Personal Data will take place to an organization or a country unless there are adequate controls in place including the security of your data and other personal information.</p>\r\n\r\n<h2>Disclosure Of Data</h2>\r\n\r\n<h3>Legal Requirements</h3>\r\n\r\n<p>The Stream App may disclose your Personal Data in the good faith belief that such action is necessary to:</p>\r\n\r\n<ul>\r\n	<li>To comply with a legal obligation</li>\r\n	<li>To protect and defend the rights or property of The Stream App</li>\r\n	<li>To prevent or investigate possible wrongdoing in connection with the Service</li>\r\n	<li>To protect the personal safety of users of the Service or the public</li>\r\n	<li>To protect against legal liability</li>\r\n</ul>\r\n\r\n<h2>Security Of Data</h2>\r\n\r\n<p>The security of your data is important to us, but remember that no method of transmission over the Internet, or method of electronic storage is 100% secure. While we strive to use commercially acceptable means to protect your Personal Data, we cannot guarantee its absolute security.</p>\r\n\r\n<h2>Service Providers</h2>\r\n\r\n<p>We may employ third party companies and individuals to facilitate our Service (&quot;Service Providers&quot;), to provide the Service on our behalf, to perform Service-related services or to assist us in analyzing how our Service is used.</p>\r\n\r\n<p>These third parties have access to your Personal Data only to perform these tasks on our behalf and are obligated not to disclose or use it for any other purpose.</p>\r\n\r\n<h2>Links To Other Sites</h2>\r\n\r\n<p>Our Service may contain links to other sites that are not operated by us. If you click on a third party link, you will be directed to that third party&#39;s site. We strongly advise you to review the Privacy Policy of every site you visit.</p>\r\n\r\n<p>We have no control over and assume no responsibility for the content, privacy policies or practices of any third party sites or services.</p>\r\n\r\n<h2>Children&#39;s Privacy</h2>\r\n\r\n<p>Our Service does not address anyone under the age of 18 (&quot;Children&quot;).</p>\r\n\r\n<p>We do not knowingly collect personally identifiable information from anyone under the age of 18. If you are a parent or guardian and you are aware that your Children has provided us with Personal Data, please contact us. If we become aware that we have collected Personal Data from children without verification of parental consent, we take steps to remove that information from our servers.</p>\r\n\r\n<h2>Changes To This Privacy Policy</h2>\r\n\r\n<p>We may update our Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on this page.</p>\r\n\r\n<p>We will let you know via email and/or a prominent notice on our Service, prior to the change becoming effective and update the &quot;effective date&quot; at the top of this Privacy Policy.</p>\r\n\r\n<p>You are advised to review this Privacy Policy periodically for any changes. Changes to this Privacy Policy are effective when they are posted on this page.</p>\r\n\r\n<h2>Contact Us</h2>\r\n\r\n<p>If you have any questions about this Privacy Policy, please contact us:</p>\r\n\r\n<ul>\r\n	<li>By email: developer.solodroid@gmail.com</li>\r\n</ul>\r\n', 'onesignal', 'http://');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_fcm_template`
--

CREATE TABLE `tbl_fcm_template` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT 'Notification',
  `message` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_fcm_template`
--

INSERT INTO `tbl_fcm_template` (`id`, `title`, `message`, `image`) VALUES
(22, 'The Stream', 'Hello World! this is The Stream App, you can purchase it on Codecanyon officially.', '7391-2017-04-23.png'),
(24, 'The Stream v2.3.1', 'New updated version available now on Codecanyon!', '7351-2018-11-24.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_fcm_token`
--

CREATE TABLE `tbl_fcm_token` (
  `id` int(11) NOT NULL,
  `user_android_token` varchar(500) NOT NULL,
  `user_unique_id` varchar(255) NOT NULL,
  `app_version` varchar(255) NOT NULL,
  `os_version` varchar(255) NOT NULL,
  `device_model` varchar(255) NOT NULL,
  `device_manufacturer` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchase_code`
--

CREATE TABLE `tbl_purchase_code` (
  `id` int(11) NOT NULL,
  `item_purchase_code` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `user_role` enum('100','101','102') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `password`, `email`, `user_role`) VALUES
(1, 'admin', 'd82494f05d6917ba02f7aaa29689ccb444bb73f20380876cb05d1f37537b7892', 'developer.solodroid@gmail.com', '100');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `tbl_channel`
--
ALTER TABLE `tbl_channel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_fcm_api_key`
--
ALTER TABLE `tbl_fcm_api_key`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_fcm_template`
--
ALTER TABLE `tbl_fcm_template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_fcm_token`
--
ALTER TABLE `tbl_fcm_token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_purchase_code`
--
ALTER TABLE `tbl_purchase_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tbl_channel`
--
ALTER TABLE `tbl_channel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `tbl_fcm_api_key`
--
ALTER TABLE `tbl_fcm_api_key`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_fcm_template`
--
ALTER TABLE `tbl_fcm_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_fcm_token`
--
ALTER TABLE `tbl_fcm_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_purchase_code`
--
ALTER TABLE `tbl_purchase_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
