package com.google.android.exoplayer2.source.dash;
/* compiled from: DashWrappingSegmentIndex.java */
/* loaded from: classes2.dex */
final class e implements d {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.exoplayer2.extractor.a f3387a;

    public e(com.google.android.exoplayer2.extractor.a aVar) {
        this.f3387a = aVar;
    }

    @Override // com.google.android.exoplayer2.source.dash.d
    public int a() {
        return 0;
    }

    @Override // com.google.android.exoplayer2.source.dash.d
    public int a(long j) {
        return this.f3387a.f3201a;
    }

    @Override // com.google.android.exoplayer2.source.dash.d
    public long a(int i) {
        return this.f3387a.e[i];
    }

    @Override // com.google.android.exoplayer2.source.dash.d
    public long a(int i, long j) {
        return this.f3387a.d[i];
    }

    @Override // com.google.android.exoplayer2.source.dash.d
    public com.google.android.exoplayer2.source.dash.manifest.e b(int i) {
        return new com.google.android.exoplayer2.source.dash.manifest.e(null, this.f3387a.c[i], this.f3387a.b[i]);
    }

    @Override // com.google.android.exoplayer2.source.dash.d
    public int a(long j, long j2) {
        return this.f3387a.a(j);
    }

    @Override // com.google.android.exoplayer2.source.dash.d
    public boolean b() {
        return true;
    }
}
