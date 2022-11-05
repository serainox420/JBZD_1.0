package com.google.android.exoplayer2;

import android.content.Context;
/* compiled from: ExoPlayerFactory.java */
/* loaded from: classes2.dex */
public final class e {
    public static m a(Context context, com.google.android.exoplayer2.b.h hVar, i iVar) {
        return a(context, hVar, iVar, null);
    }

    public static m a(Context context, com.google.android.exoplayer2.b.h hVar, i iVar, com.google.android.exoplayer2.drm.a<com.google.android.exoplayer2.drm.c> aVar) {
        return a(context, hVar, iVar, aVar, 0);
    }

    public static m a(Context context, com.google.android.exoplayer2.b.h hVar, i iVar, com.google.android.exoplayer2.drm.a<com.google.android.exoplayer2.drm.c> aVar, int i) {
        return a(context, hVar, iVar, aVar, i, 5000L);
    }

    public static m a(Context context, com.google.android.exoplayer2.b.h hVar, i iVar, com.google.android.exoplayer2.drm.a<com.google.android.exoplayer2.drm.c> aVar, int i, long j) {
        return new m(context, hVar, iVar, aVar, i, j);
    }
}
