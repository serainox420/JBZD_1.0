package com.google.android.exoplayer2.extractor;
/* compiled from: SeekMap.java */
/* loaded from: classes2.dex */
public interface m {
    boolean a();

    long b();

    long b(long j);

    /* compiled from: SeekMap.java */
    /* loaded from: classes2.dex */
    public static final class a implements m {

        /* renamed from: a  reason: collision with root package name */
        private final long f3291a;

        public a(long j) {
            this.f3291a = j;
        }

        @Override // com.google.android.exoplayer2.extractor.m
        public boolean a() {
            return false;
        }

        @Override // com.google.android.exoplayer2.extractor.m
        public long b() {
            return this.f3291a;
        }

        @Override // com.google.android.exoplayer2.extractor.m
        public long b(long j) {
            return 0L;
        }
    }
}
