package com.flurry.sdk;

import android.content.Context;
import com.facebook.appevents.AppEventsConstants;
import com.flurry.sdk.gq;
import com.flurry.sdk.gz;
import com.pubmatic.sdk.common.phoenix.PhoenixConstants;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public abstract class gj extends gm {
    private static final String e = gj.class.getSimpleName();

    /* loaded from: classes2.dex */
    public enum a {
        INSTREAM,
        FULLSCREEN
    }

    public abstract void a(a aVar);

    public abstract boolean e();

    public abstract boolean f();

    public abstract void g();

    public abstract String getVideoUrl();

    public abstract boolean h();

    public abstract boolean i();

    public abstract void j();

    public abstract void n();

    public abstract void setVideoUrl(String str);

    /* JADX INFO: Access modifiers changed from: protected */
    public gj(Context context, r rVar, gz.a aVar) {
        super(context, rVar, aVar);
    }

    @Override // com.flurry.sdk.gm
    protected int getViewParams() {
        return 0;
    }

    public void o() {
    }

    public void p() {
    }

    public int getVideoReplayCount() {
        return getAdController().f().k;
    }

    public final boolean q() {
        return getAdController().f().n;
    }

    public boolean r() {
        return false;
    }

    @Override // com.flurry.sdk.gm
    protected final void a(float f) {
        if (this.f2732a != null) {
            boolean f2 = f();
            this.d = f2 && !this.f2732a.i() && this.f2732a.j() > 0;
            gq gqVar = getAdController().e;
            gqVar.a(f2, this.d, this.c, f);
            for (gq.a aVar : gqVar.b) {
                if (aVar.a(f2, this.d, this.c, f)) {
                    int i = aVar.f2737a.f2539a;
                    a(i == 0 ? bc.EV_VIDEO_VIEWED : bc.EV_VIDEO_VIEWED_3P, b(i));
                    km.a(3, e, "BeaconTest: Video view event fired, adObj (type=" + i + "): " + getAdObject());
                }
            }
        }
    }

    @Override // com.flurry.sdk.gm
    protected final void s() {
        gp f = getAdController().f();
        f.c = true;
        f.l = getValueForAutoplayMacro();
        a(bc.EV_VIDEO_START, b(-1));
        km.a(3, e, "BeaconTest: Video start event fired, adObj: " + getAdObject() + " muted: " + this.f2732a.i());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.flurry.sdk.gm
    public final Map<String, String> b(int i) {
        HashMap hashMap = new HashMap();
        hashMap.put("vsa", AppEventsConstants.EVENT_PARAM_VALUE_NO);
        hashMap.put("va", getAdController().f().l ? "1" : AppEventsConstants.EVENT_PARAM_VALUE_NO);
        hashMap.put("vph", String.valueOf(this.f2732a.c()));
        hashMap.put("vpw", String.valueOf(this.f2732a.d()));
        hashMap.put("ve", f() ? "1" : AppEventsConstants.EVENT_PARAM_VALUE_NO);
        hashMap.put("vpi", (f() || this.b) ? "1" : "2");
        boolean z = !f() || this.f2732a.i();
        hashMap.put("vm", String.valueOf(z));
        hashMap.put(PhoenixConstants.APP_API_PARAM, (z || this.f2732a.j() <= 0) ? "2" : "1");
        hashMap.put("atv", String.valueOf(getAdController().e.f2736a));
        if (i > 0) {
            hashMap.put("vt", String.valueOf(i));
        }
        return hashMap;
    }

    private boolean getValueForAutoplayMacro() {
        if (getVideoReplayCount() == 0) {
            return h();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean t() {
        return ah.a(getAdObject().l().d().g).equals(ah.STREAM_ONLY) || !(getAdObject().l().c() != null);
    }

    @Override // com.flurry.sdk.gm
    protected final void u() {
    }

    public final void v() {
        ab abVar = i.a().i;
        ab.a(getAdObject(), getVideoUrl());
        i.a().i.d();
        km.a(3, e, "ClearCache: Video cache cleared.");
    }
}
