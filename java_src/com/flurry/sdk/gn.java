package com.flurry.sdk;

import android.content.Context;
import com.flurry.sdk.gz;
/* loaded from: classes2.dex */
public final class gn {

    /* renamed from: com.flurry.sdk.gn$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f2733a = new int[go.a().length];

        static {
            try {
                f2733a[go.f2734a - 1] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2733a[go.b - 1] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f2733a[go.c - 1] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f2733a[go.d - 1] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    public static gm a(Context context, int i, r rVar, gz.a aVar) {
        switch (AnonymousClass1.f2733a[i - 1]) {
            case 1:
                return new gl(context, rVar, aVar);
            case 2:
                return new gi(context, rVar, aVar);
            case 3:
                return new gg(context, rVar, aVar);
            case 4:
                x xVar = (x) rVar;
                gh ghVar = new gh(context, rVar, aVar, xVar.p != null ? xVar.p.getVideoUrl() : null);
                ghVar.d();
                return ghVar;
            default:
                return null;
        }
    }
}
