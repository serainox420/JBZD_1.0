package com.google.android.exoplayer2;
/* loaded from: classes2.dex */
public final class IllegalSeekPositionException extends IllegalStateException {
    public final long positionMs;
    public final n timeline;
    public final int windowIndex;

    public IllegalSeekPositionException(n nVar, int i, long j) {
        this.timeline = nVar;
        this.windowIndex = i;
        this.positionMs = j;
    }
}
