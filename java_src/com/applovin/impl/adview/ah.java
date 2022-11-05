package com.applovin.impl.adview;

import android.app.Activity;
import android.content.Intent;
import com.applovin.adview.AppLovinInterstitialActivity;
import com.applovin.adview.AppLovinInterstitialAdDialog;
import com.applovin.impl.sdk.AppLovinAdImpl;
import com.applovin.impl.sdk.AppLovinSdkImpl;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
/* loaded from: classes.dex */
public class ah implements AppLovinInterstitialAdDialog {
    private static volatile boolean o;
    private final String d;
    private final AppLovinSdkImpl e;
    private final WeakReference f;
    private volatile AppLovinAdLoadListener g;
    private volatile AppLovinAdDisplayListener h;
    private volatile AppLovinAdVideoPlaybackListener i;
    private volatile AppLovinAdClickListener j;
    private volatile AppLovinAdImpl k;
    private volatile AppLovinAdImpl.AdTarget l;
    private volatile w m;
    private volatile String n;
    private static final Map c = Collections.synchronizedMap(new HashMap());

    /* renamed from: a  reason: collision with root package name */
    public static volatile boolean f1544a = false;
    public static volatile boolean b = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ah(AppLovinSdk appLovinSdk, Activity activity) {
        if (appLovinSdk == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        if (activity == null) {
            throw new IllegalArgumentException("No activity specified");
        }
        this.e = (AppLovinSdkImpl) appLovinSdk;
        this.d = UUID.randomUUID().toString();
        f1544a = true;
        b = false;
        this.f = new WeakReference(activity);
    }

    public static ah a(String str) {
        return (ah) c.get(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i) {
        Activity i2 = i();
        if (i2 != null) {
            i2.runOnUiThread(new al(this, i));
        } else {
            this.e.getLogger().userError("InterstitialAdDialogWrapper", "Failed to notify load listener: activity reference is stale");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Activity activity) {
        x xVar = new x(this.e, activity);
        xVar.a(this);
        this.m = xVar;
        xVar.a(this.k, this.n);
    }

    private void a(AppLovinAd appLovinAd) {
        if (this.h != null) {
            this.h.adHidden(appLovinAd);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Activity activity) {
        Intent intent = new Intent(activity, AppLovinInterstitialActivity.class);
        intent.putExtra(AppLovinInterstitialActivity.KEY_WRAPPER_ID, this.d);
        AppLovinInterstitialActivity.lastKnownWrapper = this;
        activity.startActivity(intent);
        a(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(AppLovinAd appLovinAd) {
        Activity i = i();
        if (i != null) {
            i.runOnUiThread(new ak(this, appLovinAd));
        } else {
            this.e.getLogger().userError("InterstitialAdDialogWrapper", "Failed to notify load listener: activity reference is stale");
        }
    }

    private Activity i() {
        if (this.f != null) {
            return (Activity) this.f.get();
        }
        return null;
    }

    public AppLovinSdk a() {
        return this.e;
    }

    public void a(w wVar) {
        this.m = wVar;
    }

    public void a(boolean z) {
        o = z;
    }

    public AppLovinAd b() {
        return this.k;
    }

    public AppLovinAdVideoPlaybackListener c() {
        return this.i;
    }

    public AppLovinAdDisplayListener d() {
        return this.h;
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void dismiss() {
        Activity i = i();
        if (i == null) {
            this.e.getLogger().userError("InterstitialAdDialogWrapper", "Failed to notify load listener: activity reference is stale");
        } else if (this.m == null) {
        } else {
            i.runOnUiThread(new am(this));
        }
    }

    public AppLovinAdClickListener e() {
        return this.j;
    }

    public AppLovinAdImpl.AdTarget f() {
        return this.l;
    }

    public String g() {
        return this.n;
    }

    public void h() {
        f1544a = false;
        b = true;
        c.remove(this.d);
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public boolean isAdReadyToDisplay() {
        return this.e.getAdService().hasPreloadedAd(AppLovinAdSize.INTERSTITIAL);
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public boolean isShowing() {
        return o;
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void setAdClickListener(AppLovinAdClickListener appLovinAdClickListener) {
        this.j = appLovinAdClickListener;
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void setAdDisplayListener(AppLovinAdDisplayListener appLovinAdDisplayListener) {
        this.h = appLovinAdDisplayListener;
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void setAdLoadListener(AppLovinAdLoadListener appLovinAdLoadListener) {
        this.g = appLovinAdLoadListener;
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void setAdVideoPlaybackListener(AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        this.i = appLovinAdVideoPlaybackListener;
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void show() {
        show(null);
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void show(String str) {
        this.e.getAdService().loadNextAd(AppLovinAdSize.INTERSTITIAL, new ai(this, str));
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void showAndRender(AppLovinAd appLovinAd) {
        showAndRender(appLovinAd, null);
    }

    @Override // com.applovin.adview.AppLovinInterstitialAdDialog
    public void showAndRender(AppLovinAd appLovinAd, String str) {
        if (isShowing()) {
            this.e.getLogger().userError("AppLovinInterstitialAdDialog", "Attempted to show an interstitial while one is already displayed; ignoring.");
            return;
        }
        c.put(this.d, this);
        this.k = (AppLovinAdImpl) appLovinAd;
        this.n = str;
        this.l = this.k != null ? this.k.getTarget() : AppLovinAdImpl.AdTarget.DEFAULT;
        Activity i = i();
        if (i == null) {
            this.e.getLogger().e("InterstitialAdDialogWrapper", "Failed to show interstitial: stale activity reference provided");
            a(appLovinAd);
        } else if (!AppLovinSdkUtils.isValidString(this.k.getVideoFilename()) || this.e.getFileManager().a(this.k.getVideoFilename(), i)) {
            i.runOnUiThread(new aj(this, com.applovin.impl.sdk.n.a(AppLovinInterstitialActivity.class, i), this.l == AppLovinAdImpl.AdTarget.ACTIVITY_LANDSCAPE || this.l == AppLovinAdImpl.AdTarget.ACTIVITY_PORTRAIT, i));
        } else {
            a(appLovinAd);
        }
    }
}
