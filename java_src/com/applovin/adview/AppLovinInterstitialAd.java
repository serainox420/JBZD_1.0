package com.applovin.adview;

import android.app.Activity;
import android.util.AttributeSet;
import android.view.View;
import com.applovin.impl.adview.InterstitialAdDialogCreatorImpl;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinSdk;
/* loaded from: classes.dex */
public class AppLovinInterstitialAd extends View {

    /* renamed from: a  reason: collision with root package name */
    private AppLovinInterstitialAdDialog f1510a;

    public AppLovinInterstitialAd(Activity activity, AttributeSet attributeSet) {
        this(activity, attributeSet, 0);
    }

    public AppLovinInterstitialAd(Activity activity, AttributeSet attributeSet, int i) {
        super(activity, attributeSet, i);
        this.f1510a = null;
        AppLovinSdk appLovinSdk = AppLovinSdk.getInstance(activity);
        if (appLovinSdk != null && !appLovinSdk.hasCriticalErrors()) {
            this.f1510a = new InterstitialAdDialogCreatorImpl().createInterstitialAdDialog(appLovinSdk, activity);
        }
        setVisibility(8);
    }

    public static AppLovinInterstitialAdDialog create(AppLovinSdk appLovinSdk, Activity activity) {
        if (appLovinSdk == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        if (activity != null) {
            return new InterstitialAdDialogCreatorImpl().createInterstitialAdDialog(appLovinSdk, activity);
        }
        throw new IllegalArgumentException("No activity specified");
    }

    public static boolean isAdReadyToDisplay(Activity activity) {
        return AppLovinSdk.getInstance(activity).getAdService().hasPreloadedAd(AppLovinAdSize.INTERSTITIAL);
    }

    public static void show(Activity activity) {
        show(activity, null);
    }

    public static void show(Activity activity, String str) {
        if (activity == null) {
            throw new IllegalArgumentException("No activity specified");
        }
        AppLovinSdk appLovinSdk = AppLovinSdk.getInstance(activity);
        if (appLovinSdk == null || appLovinSdk.hasCriticalErrors()) {
            return;
        }
        show(appLovinSdk, activity, str);
    }

    public static void show(AppLovinSdk appLovinSdk, Activity activity, String str) {
        if (appLovinSdk == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        if (activity == null) {
            throw new IllegalArgumentException("No activity specified");
        }
        activity.runOnUiThread(new u(appLovinSdk, activity, str));
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f1510a != null) {
            this.f1510a.show();
        }
    }
}
