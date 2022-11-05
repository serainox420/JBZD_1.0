package com.flurry.sdk;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.net.Uri;
import android.widget.RelativeLayout;
import com.facebook.appevents.AppEventsConstants;
import com.flurry.sdk.gq;
import com.flurry.sdk.gu;
import com.flurry.sdk.gw;
import com.flurry.sdk.gx;
import com.flurry.sdk.gz;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.pubmatic.sdk.common.phoenix.PhoenixConstants;
import java.io.File;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
@SuppressLint({"ViewConstructor"})
/* loaded from: classes2.dex */
public abstract class gm extends gz implements gu.a {
    private static final String e = gm.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    protected gu f2732a;
    public boolean b;
    public int c;
    protected boolean d;
    private boolean f;
    private boolean g;

    protected abstract int getViewParams();

    /* JADX INFO: Access modifiers changed from: protected */
    public gm(Context context, r rVar, gz.a aVar) {
        super(context, rVar, aVar);
        this.f = true;
        this.g = false;
        this.b = false;
        this.c = 0;
        this.d = false;
        setOrientation(4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.flurry.sdk.gz
    public void onViewLoadTimeout() {
        a(bc.EV_AD_WILL_CLOSE, Collections.emptyMap());
    }

    public void setAutoPlay(boolean z) {
        km.a(3, e, "Video setAutoPlay: " + z);
        this.f = z;
    }

    public void a(int i) {
        boolean z;
        if (this.f2732a != null) {
            gu guVar = this.f2732a;
            if (guVar.b != null) {
                gw gwVar = guVar.b;
                z = gwVar.d.equals(gw.b.STATE_PREPARED) || gwVar.d.equals(gw.b.STATE_PAUSED);
            } else {
                z = false;
            }
            if (z) {
                dismissProgressDialog();
                this.f2732a.a(i);
            } else {
                showProgressDialog();
            }
            this.f2732a.b(getViewParams());
            this.g = false;
        }
    }

    public final void w() {
        if (this.f2732a != null) {
            km.a(3, e, "Video pause: ");
            gp f = getAdController().f();
            int b = this.f2732a.b();
            if (b > 0) {
                f.f2735a = b;
                getAdController().a(f);
            }
            getAdController().f().j = getViewParams();
            this.f2732a.a();
            this.g = true;
        }
    }

    public void c() {
        if (this.f2732a != null) {
            km.a(3, e, "Video suspend: ");
            w();
            this.f2732a.e();
        }
    }

    public void setVideoUri(Uri uri) {
        int l;
        km.a(3, e, "Video set video uri: " + uri);
        if (this.f2732a != null) {
            gp f = getAdController().f();
            if (f.f2735a <= this.f2732a.l()) {
                l = this.f2732a.l();
            } else {
                l = f.f2735a;
            }
            gu guVar = this.f2732a;
            if (uri != null && guVar.b != null) {
                gw gwVar = guVar.b;
                if (uri == null) {
                    km.a(3, gw.f2753a, "Video setVideoURI cannot have null value.");
                    return;
                }
                gwVar.c = l;
                gwVar.b = uri;
            }
        }
    }

    public gu getVideoController() {
        return this.f2732a;
    }

    public boolean getVideoCompletedFromStateOrVideo() {
        gp f = getAdController().f();
        if (this.f2732a != null) {
            return f.g || this.f2732a.b.c();
        }
        return false;
    }

    public void a(String str) {
        km.a(3, e, "Video Prepared: " + str);
        if (this.f2732a != null) {
            this.f2732a.b(getViewParams());
        }
        if (this.g) {
            dismissProgressDialog();
            return;
        }
        int i = getAdController().f().f2735a;
        if (this.f2732a != null && (this.f || i > 3)) {
            a(i);
        }
        if (getAdController().a(bc.EV_RENDERED.ag)) {
            a(bc.EV_RENDERED, Collections.emptyMap());
            getAdController().b(bc.EV_RENDERED.ag);
        }
        dismissProgressDialog();
    }

    public void a(String str, float f, float f2) {
        a(f2);
        if (this.f2732a != null) {
            gp f3 = getAdController().f();
            if (f2 >= BitmapDescriptorFactory.HUE_RED && !f3.c) {
                f3.c = true;
                s();
            }
            float f4 = f2 / f;
            if (f4 >= 0.25f && !f3.d) {
                f3.d = true;
                a(bc.EV_VIDEO_FIRST_QUARTILE, b(-1));
                km.a(3, e, "BeaconTest: Video 1st quartile event fired, adObj: " + getAdObject());
            }
            if (f4 >= 0.5f && !f3.e) {
                f3.e = true;
                a(bc.EV_VIDEO_MIDPOINT, b(-1));
                km.a(3, e, "BeaconTest: Video 2nd quartile event fired, adObj: " + getAdObject());
            }
            if (f4 >= 0.75f && !f3.f) {
                f3.f = true;
                a(bc.EV_VIDEO_THIRD_QUARTILE, b(-1));
                km.a(3, e, "BeaconTest: Video 3rd quartile event fired, adObj: " + getAdObject());
            }
        }
        if (this.f2732a != null) {
            this.f2732a.b(getViewParams());
        }
    }

    public void a(String str, int i, int i2) {
        km.a(3, e, "Video Error: " + str);
        if (this.f2732a != null) {
            this.f2732a.e();
        }
        onViewError();
        HashMap hashMap = new HashMap();
        hashMap.put("errorCode", Integer.toString(bb.kVideoPlaybackError.z));
        hashMap.put("frameworkError", Integer.toString(i));
        hashMap.put("implError", Integer.toString(i2));
        a(bc.EV_RENDER_FAILED, hashMap);
        dismissProgressDialog();
        setOrientation(4);
    }

    public void b(String str) {
        km.a(3, e, "Video Completed: " + str);
        boolean z = getAdFrameIndex() == getAdUnit().f.size() + (-1);
        a(bc.EV_VIDEO_COMPLETED, b(-1));
        km.a(3, e, "BeaconTest: Video completed event fired, adObj: " + getAdObject());
        setOrientation(4);
        if (z) {
            x();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void x() {
        gx gxVar = new gx();
        gxVar.d = gx.a.b;
        ki.a().a(gxVar);
    }

    public void a() {
        km.a(3, e, "Video Close clicked: ");
        a(bc.EV_AD_WILL_CLOSE, Collections.emptyMap());
        onViewClose();
    }

    @Override // com.flurry.sdk.gu.a
    public final void y() {
        km.a(3, e, "Video More Info clicked: ");
        a(bc.EV_CLICKED, Collections.emptyMap());
    }

    public void b() {
        km.a(3, e, "Video Play clicked: ");
        a(0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(bc bcVar, Map<String, String> map) {
        ff.a(bcVar, map, getContext(), getAdObject(), getAdController(), 0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Uri c(String str) {
        Uri uri = null;
        try {
            km.a(3, e, "Precaching: Getting video from cache: " + str);
            ab abVar = i.a().i;
            File b = ab.b(getAdObject(), str);
            if (b != null) {
                uri = Uri.parse("file://" + b.getAbsolutePath());
            }
        } catch (Exception e2) {
            km.a(3, e, "Precaching: Error accessing cached file.", e2);
        }
        if (uri == null) {
            km.a(3, e, "Precaching: Error using cached file. Loading with url: " + str);
            return Uri.parse(str);
        }
        return uri;
    }

    @Override // com.flurry.sdk.gz
    public void initLayout() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        addView(this.f2732a.d, layoutParams);
        showProgressDialog();
    }

    @Override // com.flurry.sdk.gz
    public void cleanupLayout() {
        c();
        dismissProgressDialog();
        if (this.f2732a != null) {
            gu guVar = this.f2732a;
            if (guVar.c != null) {
                guVar.c.k();
                guVar.c = null;
            }
            if (guVar.b != null) {
                guVar.b = null;
            }
            this.f2732a = null;
        }
    }

    protected void a(float f) {
        if (this.f2732a != null) {
            this.d = !this.f2732a.i() && this.f2732a.j() > 0;
            gq gqVar = getAdController().e;
            gqVar.a(true, this.d, this.c, f);
            for (gq.a aVar : gqVar.b) {
                if (aVar.a(true, this.d, this.c, f)) {
                    int i = aVar.f2737a.f2539a;
                    a(i == 0 ? bc.EV_VIDEO_VIEWED : bc.EV_VIDEO_VIEWED_3P, b(i));
                    km.a(3, e, "BeaconTest: Video view event fired, adObj (type=" + i + "): " + getAdObject());
                }
            }
        }
    }

    protected void s() {
        getAdController().f().c = true;
        a(bc.EV_VIDEO_START, b(-1));
        km.a(3, e, "BeaconTest: Video start event fired, adObj: " + getAdObject());
    }

    protected Map<String, String> b(int i) {
        HashMap hashMap = new HashMap();
        hashMap.put("vsa", AppEventsConstants.EVENT_PARAM_VALUE_NO);
        hashMap.put("va", this.f ? "1" : AppEventsConstants.EVENT_PARAM_VALUE_NO);
        hashMap.put("vph", String.valueOf(this.f2732a.c()));
        hashMap.put("vpw", String.valueOf(this.f2732a.d()));
        hashMap.put("ve", "1");
        hashMap.put("vpi", "1");
        boolean i2 = this.f2732a.i();
        hashMap.put("vm", String.valueOf(i2));
        hashMap.put(PhoenixConstants.APP_API_PARAM, (i2 || this.f2732a.j() <= 0) ? "2" : "1");
        hashMap.put("atv", String.valueOf(getAdController().e.f2736a));
        if (i > 0) {
            hashMap.put("vt", String.valueOf(i));
        }
        return hashMap;
    }

    @Override // com.flurry.sdk.gu.a
    public final void d(int i) {
        gp f = getAdController().f();
        if (i != Integer.MIN_VALUE) {
            km.a(3, e, "PlayPause: pauseVideo() Video paused position: " + i + " adObject: " + getAdObject().e());
            f.f2735a = i;
            getAdController().a(f);
        }
    }

    @Override // com.flurry.sdk.gu.a
    public final void z() {
        int i = getAdController().f().f2735a;
        if (this.f2732a != null && !this.f2732a.b.isPlaying()) {
            km.a(3, e, "PlayPause: onResumeVideoWithState() Play video position: " + i + " adObject: " + getAdObject().e());
            this.f2732a.a(i);
            this.f2732a.b(getViewParams());
            this.g = false;
        }
    }

    public int getVideoPosition() {
        return getAdController().f().f2735a;
    }

    public void k() {
    }

    public void l() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        setOrientation(4);
    }

    @Override // com.flurry.sdk.gz
    public void onActivityResume() {
        super.onActivityResume();
        if (!this.g) {
            return;
        }
        int i = getAdController().f().f2735a;
        if (this.f2732a == null) {
            return;
        }
        if (this.f || i > 3) {
            a(i);
        }
    }

    @Override // com.flurry.sdk.gz
    public void onActivityPause() {
        super.onActivityPause();
        w();
    }

    @Override // com.flurry.sdk.gz
    public void onActivityStop() {
        super.onActivityStop();
        c();
    }

    @Override // com.flurry.sdk.gz
    public void onActivityDestroy() {
        super.onActivityDestroy();
        u();
    }

    @Override // com.flurry.sdk.gu.a
    public final void e(int i) {
        if (i <= 0) {
            return;
        }
        getAdController().f().f2735a = i;
    }

    protected void u() {
        ab abVar = i.a().i;
        ab.a(getAdObject());
        i.a().i.d();
    }

    public final void A() {
        boolean z = false;
        if (getAdController() != null && getAdController().f() != null) {
            z = getAdController().f().c;
        }
        if (z) {
            km.a(e, "VideoClose: Firing video close.");
            a(bc.EV_VIDEO_CLOSED, Collections.emptyMap());
        }
    }
}
