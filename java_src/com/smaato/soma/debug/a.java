package com.smaato.soma.debug;

import android.util.Log;
import com.smaato.soma.l;
/* compiled from: Debugger.java */
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static int f4941a = 1;
    private static String b = "SOMA_";
    private static boolean c = true;

    public static boolean a() {
        return c;
    }

    public static final void a(b bVar) {
        if (bVar.c() <= f4941a) {
            b(bVar);
        }
    }

    private static void b(b bVar) {
        switch (bVar.d()) {
            case DEBUG:
                Log.d(b + bVar.a(), bVar.b());
                return;
            case ERROR:
                Log.e(b + bVar.a(), bVar.b());
                return;
            case INFO:
                Log.i(b + bVar.a(), bVar.b());
                return;
            case VERVOSE:
                Log.v(b + bVar.a(), bVar.b());
                return;
            case WARNING:
                Log.w(b + bVar.a(), bVar.b());
                return;
            case EXCEPTION:
                Log.e(b + bVar.a(), "", bVar.e());
                return;
            default:
                Log.w(b + "DEBUG", "Should not happen !!");
                return;
        }
    }

    public static void a(final Object obj) {
        if (f4941a == 3) {
            new l<Void>() { // from class: com.smaato.soma.debug.a.1
                @Override // com.smaato.soma.l
                /* renamed from: a */
                public Void b() throws Exception {
                    Log.d(a.b + obj.getClass(), "" + obj.getClass().getEnclosingMethod().getName());
                    return null;
                }
            }.c();
        }
    }
}
