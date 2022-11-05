package com.facebook.ads.internal.adapters;

import android.content.Context;
import android.view.View;
import com.facebook.ads.AdNetwork;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdViewAttributes;
import com.facebook.ads.internal.server.AdPlacementType;
import com.facebook.ads.internal.util.ak;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public abstract class v implements AdAdapter {
    public abstract List<NativeAd> A();

    public abstract String B();

    public abstract AdNetwork C();

    public abstract void a();

    public abstract void a(int i);

    public abstract void a(Context context, w wVar, com.facebook.ads.internal.g.f fVar, Map<String, Object> map);

    public abstract void a(View view, List<View> list);

    public abstract void a(w wVar);

    public abstract void a(Map<String, String> map);

    public abstract void b(Map<String, String> map);

    public abstract boolean b();

    public abstract boolean c();

    public abstract boolean d();

    public abstract boolean e();

    public abstract boolean f();

    public abstract boolean g();

    @Override // com.facebook.ads.internal.adapters.AdAdapter
    public final AdPlacementType getPlacementType() {
        return AdPlacementType.NATIVE;
    }

    public abstract int h();

    public abstract int i();

    public abstract int j();

    public abstract NativeAd.Image k();

    public abstract NativeAd.Image l();

    public abstract NativeAdViewAttributes m();

    public abstract String n();

    public abstract String o();

    public abstract String p();

    public abstract String q();

    public abstract String r();

    public abstract NativeAd.Rating s();

    public abstract NativeAd.Image t();

    public abstract String u();

    public abstract String v();

    public abstract String w();

    public abstract String x();

    public abstract ak y();

    public abstract String z();
}
