package com.google.android.exoplayer2.extractor.f;

import android.util.SparseArray;
/* compiled from: TsPayloadReader.java */
/* loaded from: classes2.dex */
public interface u {

    /* compiled from: TsPayloadReader.java */
    /* loaded from: classes2.dex */
    public interface b {
        SparseArray<u> a();

        u a(int i, a aVar);
    }

    void a();

    void a(com.google.android.exoplayer2.util.l lVar, boolean z);

    void a(com.google.android.exoplayer2.util.s sVar, com.google.android.exoplayer2.extractor.h hVar, c cVar);

    /* compiled from: TsPayloadReader.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f3281a;
        public final String b;
        public final byte[] c;

        public a(int i, String str, byte[] bArr) {
            this.f3281a = i;
            this.b = str;
            this.c = bArr;
        }
    }

    /* compiled from: TsPayloadReader.java */
    /* loaded from: classes2.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private final String f3282a;
        private final int b;
        private final int c;
        private int d;
        private String e;

        public c(int i, int i2) {
            this(Integer.MIN_VALUE, i, i2);
        }

        public c(int i, int i2, int i3) {
            this.f3282a = i != Integer.MIN_VALUE ? i + "/" : "";
            this.b = i2;
            this.c = i3;
            this.d = Integer.MIN_VALUE;
        }

        public void a() {
            this.d = this.d == Integer.MIN_VALUE ? this.b : this.d + this.c;
            this.e = this.f3282a + this.d;
        }

        public int b() {
            d();
            return this.d;
        }

        public String c() {
            d();
            return this.e;
        }

        private void d() {
            if (this.d == Integer.MIN_VALUE) {
                throw new IllegalStateException("generateNewId() must be called before retrieving ids.");
            }
        }
    }
}
