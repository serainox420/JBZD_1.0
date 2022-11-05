package com.intentsoftware.addapptr.fullscreens;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.location.Location;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import com.intentsoftware.addapptr.BannerSize;
import com.intentsoftware.addapptr.ad.FullscreenAd;
import com.intentsoftware.addapptr.c.b;
import com.intentsoftware.addapptr.c.c;
import com.intentsoftware.addapptr.c.k;
import com.smartadserver.android.library.SASBannerView;
import com.smartadserver.android.library.model.SASAdElement;
import com.smartadserver.android.library.ui.SASAdView;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class SmartAdServerFullscreen extends FullscreenAd {
    private static SparseArray<SASBannerView> cachedViews = new SparseArray<>();
    private BroadcastReceiver broadcastReceiver;
    private int height;
    private IntentFilter intentFilter;
    private SASBannerView interstitialView;
    private int orientation;
    private boolean shown;
    private int width;

    @Override // com.intentsoftware.addapptr.ad.a
    public void load(Activity activity, String str, BannerSize bannerSize, k kVar) {
        super.load(activity, str, bannerSize, kVar);
        String[] split = str.split(":");
        if (split.length < 5) {
            if (c.isLoggable(5)) {
                c.w(this, "not enough arguments for SmartAdServer config");
            }
            notifyListenerThatAdFailedToLoad("not enough arguments in adId.");
            return;
        }
        String str2 = split[0] + ":" + split[1];
        try {
            int parseInt = Integer.parseInt(split[2]);
            String str3 = split[3];
            int parseInt2 = Integer.parseInt(split[4]);
            this.interstitialView = new SASBannerView(activity);
            SASAdView.setBaseUrl(str2);
            Location location = b.getLocation();
            if (location != null) {
                this.interstitialView.setLocation(location);
            }
            String str4 = "";
            if (kVar != null) {
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                for (Map.Entry<String, List<String>> entry : kVar.getMap().entrySet()) {
                    for (String str5 : entry.getValue()) {
                        if (TextUtils.isDigitsOnly(str5)) {
                            arrayList2.add(entry.getKey() + "=" + str5);
                        } else {
                            arrayList.add(entry.getKey() + "=" + str5);
                        }
                    }
                }
                if (arrayList2.isEmpty()) {
                    str4 = TextUtils.join(";", arrayList);
                } else {
                    str4 = TextUtils.join(";", arrayList) + ";|" + TextUtils.join(";", arrayList2);
                }
            }
            this.interstitialView.setVisibility(4);
            this.interstitialView.setEnabled(false);
            this.interstitialView.setClickable(false);
            this.interstitialView.a(parseInt2, str3, parseInt, true, str4, createResponseHandler());
        } catch (NumberFormatException e) {
            if (c.isLoggable(5)) {
                c.w(this, "cannot parse integers for SmartAdServer config");
            }
            notifyListenerThatAdFailedToLoad("cannot parse adId.");
        }
    }

    private SASAdView.a createResponseHandler() {
        return new SASAdView.a() { // from class: com.intentsoftware.addapptr.fullscreens.SmartAdServerFullscreen.1
            @Override // com.smartadserver.android.library.ui.SASAdView.a
            public void adLoadingFailed(Exception exc) {
                SmartAdServerFullscreen.this.notifyListenerThatAdFailedToLoad(exc.getMessage());
            }

            @Override // com.smartadserver.android.library.ui.SASAdView.a
            public void adLoadingCompleted(SASAdElement sASAdElement) {
                final Activity activity = SmartAdServerFullscreen.this.getActivity();
                if (activity != null) {
                    SmartAdServerFullscreen.this.orientation = activity.getResources().getConfiguration().orientation;
                    activity.runOnUiThread(new Runnable() { // from class: com.intentsoftware.addapptr.fullscreens.SmartAdServerFullscreen.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (SmartAdServerFullscreen.this.interstitialView != null) {
                                View findViewById = activity.findViewById(16908290);
                                if (findViewById != null) {
                                    SmartAdServerFullscreen.this.width = findViewById.getWidth();
                                    SmartAdServerFullscreen.this.height = findViewById.getHeight();
                                }
                                activity.addContentView(SmartAdServerFullscreen.this.interstitialView, new ViewGroup.LayoutParams(SmartAdServerFullscreen.this.width, SmartAdServerFullscreen.this.height));
                            }
                        }
                    });
                }
                SmartAdServerFullscreen.cachedViews.put(SmartAdServerFullscreen.this.interstitialView.hashCode(), SmartAdServerFullscreen.this.interstitialView);
                SmartAdServerFullscreen.this.notifyListenerThatAdWasLoaded();
            }
        };
    }

    @Override // com.intentsoftware.addapptr.ad.FullscreenAd
    public boolean show() {
        this.broadcastReceiver = createBroadcastReceiver();
        this.intentFilter = new IntentFilter();
        this.intentFilter.addAction(SmartAdServerFullscreenActivity.SMART_AD_SERVER_CLICKED);
        this.intentFilter.addAction(SmartAdServerFullscreenActivity.SMART_AD_SERVER_FAILED);
        this.intentFilter.addAction(SmartAdServerFullscreenActivity.SMART_AD_SERVER_FINISH);
        getActivity().registerReceiver(this.broadcastReceiver, this.intentFilter);
        this.shown = true;
        notifyListenerThatAdIsShown();
        Intent intent = new Intent(getActivity(), SmartAdServerFullscreenActivity.class);
        intent.putExtra(SmartAdServerFullscreenActivity.HASH_PARAM_NAME, this.interstitialView.hashCode());
        intent.putExtra("orientation", this.orientation);
        intent.putExtra("width", this.width);
        intent.putExtra("height", this.height);
        getActivity().startActivity(intent);
        return true;
    }

    private BroadcastReceiver createBroadcastReceiver() {
        return new BroadcastReceiver() { // from class: com.intentsoftware.addapptr.fullscreens.SmartAdServerFullscreen.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                if (SmartAdServerFullscreen.this.broadcastReceiver == null || !intent.getAction().equals(SmartAdServerFullscreenActivity.SMART_AD_SERVER_CLICKED)) {
                    if (SmartAdServerFullscreen.this.broadcastReceiver == null || !intent.getAction().equals(SmartAdServerFullscreenActivity.SMART_AD_SERVER_FAILED)) {
                        if (SmartAdServerFullscreen.this.broadcastReceiver != null && intent.getAction().equals(SmartAdServerFullscreenActivity.SMART_AD_SERVER_FINISH)) {
                            SmartAdServerFullscreen.this.tryUnregisterReceiver();
                            SmartAdServerFullscreen.this.broadcastReceiver = null;
                            return;
                        }
                        return;
                    }
                    SmartAdServerFullscreen.this.tryUnregisterReceiver();
                    SmartAdServerFullscreen.this.notifyListenerThatAdFailedToLoad(null);
                    SmartAdServerFullscreen.this.broadcastReceiver = null;
                    return;
                }
                SmartAdServerFullscreen.this.tryUnregisterReceiver();
                SmartAdServerFullscreen.this.notifyListenerThatAdWasClicked();
                SmartAdServerFullscreen.this.broadcastReceiver = null;
            }
        };
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void unload() {
        if (this.interstitialView != null) {
            ViewGroup viewGroup = (ViewGroup) this.interstitialView.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(this.interstitialView);
            }
            int indexOfValue = cachedViews.indexOfValue(this.interstitialView);
            if (indexOfValue >= 0) {
                cachedViews.remove(indexOfValue);
            }
            this.interstitialView.b();
            this.interstitialView = null;
        }
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
                if (c.isLoggable(5)) {
                    c.w(this, "Broadcast receiver already unregistered!");
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static SASBannerView getCachedView(int i) {
        SASBannerView sASBannerView = cachedViews.get(i);
        cachedViews.remove(i);
        return sASBannerView;
    }
}
