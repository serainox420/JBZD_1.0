package com.flurry.sdk;

import com.flurry.sdk.d;
/* loaded from: classes2.dex */
public class fh {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2676a = fh.class.getSimpleName();

    public static void a(r rVar) {
        if (rVar != null) {
            km.a(3, f2676a, "Firing onFetched, adObject=" + rVar);
            d dVar = new d();
            dVar.f2524a = rVar;
            dVar.b = d.a.kOnFetched;
            dVar.b();
        }
    }

    public static void a(r rVar, bb bbVar) {
        if (rVar != null && bbVar != null) {
            km.a(3, f2676a, "Firing onFetchFailed, adObject=" + rVar + ", errorCode=" + bbVar);
            d dVar = new d();
            dVar.f2524a = rVar;
            dVar.b = d.a.kOnFetchFailed;
            dVar.c = bbVar;
            dVar.b();
        }
    }

    public static void b(r rVar) {
        if (rVar != null) {
            km.a(3, f2676a, "Firing onRendered, adObject=" + rVar);
            d dVar = new d();
            dVar.f2524a = rVar;
            dVar.b = d.a.kOnRendered;
            dVar.b();
        }
    }

    public static void b(r rVar, bb bbVar) {
        if (rVar != null && bbVar != null) {
            km.a(3, f2676a, "Firing onRenderFailed, adObject=" + rVar + ", errorCode=" + bbVar);
            d dVar = new d();
            dVar.f2524a = rVar;
            dVar.b = d.a.kOnRenderFailed;
            dVar.c = bbVar;
            dVar.b();
        }
    }
}
