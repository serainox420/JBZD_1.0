package com.applovin.impl.adview;

import android.app.Activity;
import com.applovin.adview.AppLovinInterstitialAdDialog;
import com.applovin.adview.InterstitialAdDialogCreator;
import com.applovin.sdk.AppLovinSdk;
import java.lang.ref.WeakReference;
/* loaded from: classes.dex */
public class InterstitialAdDialogCreatorImpl implements InterstitialAdDialogCreator {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f1535a = new Object();
    private static WeakReference b = new WeakReference(null);
    private static WeakReference c = new WeakReference(null);

    @Override // com.applovin.adview.InterstitialAdDialogCreator
    public AppLovinInterstitialAdDialog createInterstitialAdDialog(AppLovinSdk appLovinSdk, Activity activity) {
        ah ahVar;
        if (appLovinSdk == null) {
            appLovinSdk = AppLovinSdk.getInstance(activity);
        }
        synchronized (f1535a) {
            ahVar = (ah) b.get();
            if (ahVar == null || !ahVar.isShowing() || c.get() != activity) {
                ahVar = new ah(appLovinSdk, activity);
                b = new WeakReference(ahVar);
                c = new WeakReference(activity);
            } else {
                appLovinSdk.getLogger().w("InterstitialAdDialogCreator", "An interstitial dialog is already showing, returning it");
            }
        }
        return ahVar;
    }
}
