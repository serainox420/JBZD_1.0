package com.google.android.exoplayer2.source.dash.manifest;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SingleSegmentIndex.java */
/* loaded from: classes2.dex */
public final class i implements com.google.android.exoplayer2.source.dash.d {

    /* renamed from: a  reason: collision with root package name */
    private final e f3402a;

    public i(e eVar) {
        this.f3402a = eVar;
    }

    @Override // com.google.android.exoplayer2.source.dash.d
    public int a(long j, long j2) {
        return 0;
    }

    @Override // com.google.android.exoplayer2.source.dash.d
    public long a(int i) {
        return 0L;
    }

    @Override // com.google.android.exoplayer2.source.dash.d
    public long a(int i, long j) {
        return j;
    }

    @Override // com.google.android.exoplayer2.source.dash.d
    public e b(int i) {
        return this.f3402a;
    }

    @Override // com.google.android.exoplayer2.source.dash.d
    public int a() {
        return 0;
    }

    @Override // com.google.android.exoplayer2.source.dash.d
    public int a(long j) {
        return 1;
    }

    @Override // com.google.android.exoplayer2.source.dash.d
    public boolean b() {
        return true;
    }
}
