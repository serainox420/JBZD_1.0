package com.flurry.sdk;

import android.content.Context;
import java.lang.ref.WeakReference;
/* loaded from: classes2.dex */
public final class ll extends kg {

    /* renamed from: a  reason: collision with root package name */
    public WeakReference<Context> f3027a;
    public lk b;
    public int c;
    public long d;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* loaded from: classes2.dex */
    public static final class a extends Enum<a> {

        /* renamed from: a  reason: collision with root package name */
        public static final int f3028a = 1;
        public static final int b = 2;
        public static final int c = 3;
        public static final int d = 4;
        public static final int e = 5;
        private static final /* synthetic */ int[] f = {f3028a, b, c, d, e};

        public static int[] a() {
            return (int[]) f.clone();
        }
    }

    public ll() {
        super("com.flurry.android.sdk.FlurrySessionEvent");
    }
}
