package com.intentsoftware.addapptr.fullscreens;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.util.DisplayMetrics;
import com.intentsoftware.addapptr.BannerSize;
import com.intentsoftware.addapptr.ad.FullscreenAd;
import com.intentsoftware.addapptr.b.c;
import com.intentsoftware.addapptr.c;
import com.intentsoftware.addapptr.c.k;
import com.pubmatic.sdk.common.CommonConstants;
/* loaded from: classes2.dex */
public class NexageFullscreen extends FullscreenAd {
    private static final String BASE_URL = "http://bos.ads.nexage.com/adServe";
    private String baseUrl;
    private BroadcastReceiver broadcastReceiver;
    private String finalHtml;
    private IntentFilter intentFilter;
    private boolean shown;

    @Override // com.intentsoftware.addapptr.ad.FullscreenAd
    public boolean show() {
        this.broadcastReceiver = createBroadcastReceiver();
        this.intentFilter = new IntentFilter();
        this.intentFilter.addAction(NexageFullscreenActivity.AdClicked);
        this.intentFilter.addAction(NexageFullscreenActivity.ActivityFinish);
        getActivity().registerReceiver(this.broadcastReceiver, this.intentFilter);
        this.shown = true;
        notifyListenerThatAdIsShown();
        Intent intent = new Intent(getActivity(), NexageFullscreenActivity.class);
        intent.putExtra(NexageFullscreenActivity.INTENT_BASE_URL, this.baseUrl);
        intent.putExtra(NexageFullscreenActivity.INTENT_HTML, this.finalHtml);
        getActivity().startActivity(intent);
        return true;
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void load(Activity activity, String str, BannerSize bannerSize, k kVar) {
        String str2;
        super.load(activity, str, bannerSize, kVar);
        if (c.getGoogleAdvertisingIdString() == null) {
            notifyListenerThatAdFailedToLoad("no Google Advertising ID available.");
            return;
        }
        DisplayMetrics displayMetrics = activity.getResources().getDisplayMetrics();
        if (displayMetrics.widthPixels >= 768 && displayMetrics.heightPixels >= 1024 && activity.getResources().getConfiguration().orientation == 1) {
            str2 = "768x1024";
        } else if (displayMetrics.widthPixels >= 1024 && displayMetrics.heightPixels >= 768) {
            str2 = "1024x768";
        } else {
            str2 = "fullpage";
        }
        String str3 = "";
        String[] split = str.split(":");
        String str4 = split[0];
        if (split.length > 1) {
            str3 = split[1];
        }
        this.baseUrl = createUrl(str4, str2, str3);
        new com.intentsoftware.addapptr.b.c(activity, this.baseUrl, new c.a() { // from class: com.intentsoftware.addapptr.fullscreens.NexageFullscreen.1
            @Override // com.intentsoftware.addapptr.b.c.a
            public void onHtmlDownloadingError() {
                NexageFullscreen.this.notifyListenerThatAdFailedToLoad("error downloading HTML.");
            }

            @Override // com.intentsoftware.addapptr.b.c.a
            public void onHtmlDownloaded(String str5) {
                if (str5.matches("<body>.{0,5}</body>")) {
                    NexageFullscreen.this.notifyListenerThatAdFailedToLoad("response too short.");
                    return;
                }
                NexageFullscreen.this.finalHtml = "<html><head><style>body {width: 100%; height: 100%; padding:0; margin:0; display: table; background-color: black} center {display: table-cell; vertical-align: middle;} img {max-width:100%; max-height:100%; width:auto; position: absolute; margin: auto; top: 0; left: 0; right: 0; bottom: 0;}</style></head><body marginwidth=0 marginheight=0><center>" + str5 + "</center></body></html>";
                NexageFullscreen.this.notifyListenerThatAdWasLoaded();
            }
        });
    }

    private BroadcastReceiver createBroadcastReceiver() {
        return new BroadcastReceiver() { // from class: com.intentsoftware.addapptr.fullscreens.NexageFullscreen.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                if (NexageFullscreen.this.broadcastReceiver == null || !intent.getAction().equals(NexageFullscreenActivity.AdClicked)) {
                    if (NexageFullscreen.this.broadcastReceiver != null && intent.getAction().equals(NexageFullscreenActivity.ActivityFinish)) {
                        NexageFullscreen.this.tryUnregisterReceiver();
                        NexageFullscreen.this.broadcastReceiver = null;
                        return;
                    }
                    return;
                }
                NexageFullscreen.this.tryUnregisterReceiver();
                NexageFullscreen.this.notifyListenerThatAdWasClicked();
                NexageFullscreen.this.broadcastReceiver = null;
            }
        };
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void unload() {
        tryUnregisterReceiver();
        this.broadcastReceiver = null;
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void resume(Activity activity) {
        super.resume(activity);
        if (this.broadcastReceiver != null && activity != null && !this.shown) {
            activity.registerReceiver(this.broadcastReceiver, this.intentFilter);
        }
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void pause() {
        super.pause();
        if (!this.shown) {
            tryUnregisterReceiver();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tryUnregisterReceiver() {
        if (getActivity() != null && this.broadcastReceiver != null) {
            try {
                getActivity().unregisterReceiver(this.broadcastReceiver);
            } catch (IllegalArgumentException e) {
                if (com.intentsoftware.addapptr.c.c.isLoggable(5)) {
                    com.intentsoftware.addapptr.c.c.w(this, "Broadcast receiver already unregistered!");
                }
            }
        }
    }

    private String createUrl(String str, String str2, String str3) {
        Uri parse = Uri.parse(BASE_URL);
        Uri.Builder builder = new Uri.Builder();
        builder.scheme(parse.getScheme());
        builder.authority(parse.getAuthority());
        builder.path(parse.getPath());
        String property = System.getProperty("http.agent");
        builder.appendQueryParameter("dcn", str);
        builder.appendQueryParameter("pos", str2);
        builder.appendQueryParameter("ua", property);
        builder.appendQueryParameter(CommonConstants.REQUESTPARAM_IP, com.intentsoftware.addapptr.b.a.getIP());
        builder.appendQueryParameter("d(id24)", com.intentsoftware.addapptr.c.getGoogleAdvertisingIdString());
        builder.appendQueryParameter("grp", str3);
        return builder.build().toString();
    }
}
