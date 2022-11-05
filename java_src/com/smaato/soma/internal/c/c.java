package com.smaato.soma.internal.c;

import android.util.Log;
import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.smaato.soma.debug.DebugCategory;
/* compiled from: Controller.java */
/* loaded from: classes3.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static c f4974a;
    private static int b = 0;
    private static boolean c = false;

    private c() {
    }

    public static c a() {
        if (f4974a == null) {
            f4974a = new c();
        }
        return f4974a;
    }

    public void b() {
        b++;
        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("" + getClass().getCanonicalName(), "Something went wrong !!", 1, DebugCategory.DEBUG));
        if (b >= 10) {
            a(true);
        }
    }

    public void c() {
        Log.e("", "INIT SUCCESS");
        b = 0;
        a(false);
    }

    public boolean d() {
        return c;
    }

    private void a(boolean z) {
        c = z;
    }

    public boolean a(final View view, final float f, final float f2) {
        return new com.smaato.soma.l<Boolean>() { // from class: com.smaato.soma.internal.c.c.1
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Boolean b() throws Exception {
                return Boolean.valueOf(f >= BitmapDescriptorFactory.HUE_RED && f <= ((float) view.getWidth()) && f2 >= BitmapDescriptorFactory.HUE_RED && f2 <= ((float) view.getHeight()));
            }
        }.c().booleanValue();
    }
}
