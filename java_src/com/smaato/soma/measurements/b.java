package com.smaato.soma.measurements;

import com.smaato.soma.debug.DebugCategory;
import com.smaato.soma.l;
/* compiled from: Reporter.java */
/* loaded from: classes3.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static b f5164a;
    private static String b = "Reporter";

    private b() {
    }

    public static b a() {
        if (f5164a == null) {
            f5164a = new b();
        }
        return f5164a;
    }

    public void a(final FraudesType fraudesType) {
        new l<Void>() { // from class: com.smaato.soma.measurements.b.1
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                switch (AnonymousClass2.f5166a[fraudesType.ordinal()]) {
                    case 1:
                        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(b.b, "Uber Frequent Request Detected", 2, DebugCategory.WARNING));
                        return null;
                    case 2:
                        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(b.b, "Auto Click Detected", 2, DebugCategory.WARNING));
                        return null;
                    case 3:
                        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(b.b, "Banner is off screen", 2, DebugCategory.WARNING));
                        return null;
                    case 4:
                        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(b.b, "Bad banner dimension", 2, DebugCategory.WARNING));
                        return null;
                    case 5:
                        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(b.b, "Banner View is overlapped by another one", 2, DebugCategory.WARNING));
                        return null;
                    default:
                        return null;
                }
            }
        }.c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Reporter.java */
    /* renamed from: com.smaato.soma.measurements.b$2  reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass2 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f5166a = new int[FraudesType.values().length];

        static {
            try {
                f5166a[FraudesType.UBER_FREQUENT_REQUEST.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f5166a[FraudesType.AUTO_CLICK.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f5166a[FraudesType.BANNER_OFF_SCREEN.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f5166a[FraudesType.BANNER_DIMENSION.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f5166a[FraudesType.BANNER_OVERLAP.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }
}
