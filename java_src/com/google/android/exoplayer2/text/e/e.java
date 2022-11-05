package com.google.android.exoplayer2.text.e;

import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.util.Log;
/* compiled from: WebvttCue.java */
/* loaded from: classes2.dex */
final class e extends com.google.android.exoplayer2.text.b {
    public final long l;
    public final long m;

    public e(CharSequence charSequence) {
        this(0L, 0L, charSequence);
    }

    public e(long j, long j2, CharSequence charSequence) {
        this(j, j2, charSequence, null, Float.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, Float.MIN_VALUE, Integer.MIN_VALUE, Float.MIN_VALUE);
    }

    public e(long j, long j2, CharSequence charSequence, Layout.Alignment alignment, float f, int i, int i2, float f2, int i3, float f3) {
        super(charSequence, alignment, f, i, i2, f2, i3, f3);
        this.l = j;
        this.m = j2;
    }

    public boolean a() {
        return this.d == Float.MIN_VALUE && this.g == Float.MIN_VALUE;
    }

    /* compiled from: WebvttCue.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private long f3449a;
        private long b;
        private SpannableStringBuilder c;
        private Layout.Alignment d;
        private float e;
        private int f;
        private int g;
        private float h;
        private int i;
        private float j;

        public a() {
            a();
        }

        public void a() {
            this.f3449a = 0L;
            this.b = 0L;
            this.c = null;
            this.d = null;
            this.e = Float.MIN_VALUE;
            this.f = Integer.MIN_VALUE;
            this.g = Integer.MIN_VALUE;
            this.h = Float.MIN_VALUE;
            this.i = Integer.MIN_VALUE;
            this.j = Float.MIN_VALUE;
        }

        public e b() {
            if (this.h != Float.MIN_VALUE && this.i == Integer.MIN_VALUE) {
                c();
            }
            return new e(this.f3449a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j);
        }

        public a a(long j) {
            this.f3449a = j;
            return this;
        }

        public a b(long j) {
            this.b = j;
            return this;
        }

        public a a(SpannableStringBuilder spannableStringBuilder) {
            this.c = spannableStringBuilder;
            return this;
        }

        public a a(Layout.Alignment alignment) {
            this.d = alignment;
            return this;
        }

        public a a(float f) {
            this.e = f;
            return this;
        }

        public a a(int i) {
            this.f = i;
            return this;
        }

        public a b(int i) {
            this.g = i;
            return this;
        }

        public a b(float f) {
            this.h = f;
            return this;
        }

        public a c(int i) {
            this.i = i;
            return this;
        }

        public a c(float f) {
            this.j = f;
            return this;
        }

        private a c() {
            if (this.d == null) {
                this.i = Integer.MIN_VALUE;
            } else {
                switch (AnonymousClass1.f3448a[this.d.ordinal()]) {
                    case 1:
                        this.i = 0;
                        break;
                    case 2:
                        this.i = 1;
                        break;
                    case 3:
                        this.i = 2;
                        break;
                    default:
                        Log.w("WebvttCueBuilder", "Unrecognized alignment: " + this.d);
                        this.i = 0;
                        break;
                }
            }
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: WebvttCue.java */
    /* renamed from: com.google.android.exoplayer2.text.e.e$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f3448a = new int[Layout.Alignment.values().length];

        static {
            try {
                f3448a[Layout.Alignment.ALIGN_NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f3448a[Layout.Alignment.ALIGN_CENTER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f3448a[Layout.Alignment.ALIGN_OPPOSITE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }
}
