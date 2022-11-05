package com.google.android.exoplayer2.text;
/* compiled from: SubtitleInputBuffer.java */
/* loaded from: classes2.dex */
public final class h extends com.google.android.exoplayer2.a.e implements Comparable<h> {
    public long d;

    public h() {
        super(1);
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(h hVar) {
        long j = this.c - hVar.c;
        if (j == 0) {
            return 0;
        }
        return j > 0 ? 1 : -1;
    }
}
