package com.applovin.impl.sdk;

import android.app.Activity;
import android.os.Handler;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdRewardListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinErrorCodes;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class af implements AppLovinAdClickListener, AppLovinAdDisplayListener, AppLovinAdRewardListener, AppLovinAdVideoPlaybackListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ aa f1586a;
    private final Activity b;
    private final AppLovinAdDisplayListener c;
    private final AppLovinAdClickListener d;
    private final AppLovinAdVideoPlaybackListener e;
    private final AppLovinAdRewardListener f;

    private af(aa aaVar, Activity activity, AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdClickListener appLovinAdClickListener) {
        this.f1586a = aaVar;
        this.c = appLovinAdDisplayListener;
        this.d = appLovinAdClickListener;
        this.e = appLovinAdVideoPlaybackListener;
        this.f = appLovinAdRewardListener;
        this.b = activity;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ af(aa aaVar, Activity activity, AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdClickListener appLovinAdClickListener, ab abVar) {
        this(aaVar, activity, appLovinAdRewardListener, appLovinAdVideoPlaybackListener, appLovinAdDisplayListener, appLovinAdClickListener);
    }

    @Override // com.applovin.sdk.AppLovinAdClickListener
    public void adClicked(AppLovinAd appLovinAd) {
        Handler handler;
        if (this.d != null) {
            handler = this.f1586a.f;
            handler.post(new ai(this, appLovinAd));
        }
    }

    @Override // com.applovin.sdk.AppLovinAdDisplayListener
    public void adDisplayed(AppLovinAd appLovinAd) {
        if (this.c != null) {
            this.c.adDisplayed(appLovinAd);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x001c  */
    @Override // com.applovin.sdk.AppLovinAdDisplayListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void adHidden(AppLovinAd appLovinAd) {
        df dfVar;
        boolean z;
        String str;
        int i;
        boolean z2;
        Handler handler;
        AppLovinSdkImpl appLovinSdkImpl;
        AppLovinSdkImpl appLovinSdkImpl2;
        Handler handler2;
        boolean z3;
        String c = this.f1586a.c();
        if (c != null) {
            z3 = this.f1586a.j;
            if (z3) {
                this.f1586a.a(c, this.b);
                if (this.c != null) {
                    handler2 = this.f1586a.f;
                    handler2.post(new ah(this, appLovinAd));
                }
                appLovinSdkImpl = this.f1586a.f1581a;
                da daVar = new da(appLovinSdkImpl, appLovinAd);
                appLovinSdkImpl2 = this.f1586a.f1581a;
                appLovinSdkImpl2.a().a(daVar, cs.BACKGROUND);
                this.f1586a.c = null;
                this.f1586a.d = null;
            }
        }
        dfVar = this.f1586a.i;
        dfVar.a(true);
        z = this.f1586a.j;
        if (z) {
            str = "network_timeout";
            i = AppLovinErrorCodes.INCENTIVIZED_SERVER_TIMEOUT;
        } else {
            str = "user_closed_video";
            i = AppLovinErrorCodes.INCENTIVIZED_USER_CLOSED_VIDEO;
        }
        bm.a().a(appLovinAd, str);
        z2 = this.f1586a.j;
        if (z2) {
            this.f1586a.a(c, this.b);
        }
        handler = this.f1586a.f;
        handler.post(new ag(this, appLovinAd, i));
        if (this.c != null) {
        }
        appLovinSdkImpl = this.f1586a.f1581a;
        da daVar2 = new da(appLovinSdkImpl, appLovinAd);
        appLovinSdkImpl2 = this.f1586a.f1581a;
        appLovinSdkImpl2.a().a(daVar2, cs.BACKGROUND);
        this.f1586a.c = null;
        this.f1586a.d = null;
    }

    @Override // com.applovin.sdk.AppLovinAdRewardListener
    public void userDeclinedToViewAd(AppLovinAd appLovinAd) {
    }

    @Override // com.applovin.sdk.AppLovinAdRewardListener
    public void userOverQuota(AppLovinAd appLovinAd, Map map) {
        Handler handler;
        this.f1586a.b("quota_exceeded");
        if (this.f != null) {
            handler = this.f1586a.f;
            handler.post(new am(this, appLovinAd, map));
        }
    }

    @Override // com.applovin.sdk.AppLovinAdRewardListener
    public void userRewardRejected(AppLovinAd appLovinAd, Map map) {
        Handler handler;
        this.f1586a.b("rejected");
        if (this.f != null) {
            handler = this.f1586a.f;
            handler.post(new an(this, appLovinAd, map));
        }
    }

    @Override // com.applovin.sdk.AppLovinAdRewardListener
    public void userRewardVerified(AppLovinAd appLovinAd, Map map) {
        Handler handler;
        this.f1586a.b("accepted");
        if (this.f != null) {
            handler = this.f1586a.f;
            handler.post(new al(this, appLovinAd, map));
        }
    }

    @Override // com.applovin.sdk.AppLovinAdRewardListener
    public void validationRequestFailed(AppLovinAd appLovinAd, int i) {
        Handler handler;
        this.f1586a.b("network_timeout");
        if (this.f != null) {
            handler = this.f1586a.f;
            handler.post(new ao(this, appLovinAd, i));
        }
    }

    @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
    public void videoPlaybackBegan(AppLovinAd appLovinAd) {
        Handler handler;
        if (this.e != null) {
            handler = this.f1586a.f;
            handler.post(new aj(this, appLovinAd));
        }
    }

    @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
    public void videoPlaybackEnded(AppLovinAd appLovinAd, double d, boolean z) {
        Handler handler;
        if (this.e != null) {
            handler = this.f1586a.f;
            handler.post(new ak(this, appLovinAd, d, z));
        }
        this.f1586a.j = z;
    }
}
