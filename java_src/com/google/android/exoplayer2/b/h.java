package com.google.android.exoplayer2.b;

import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.k;
import com.google.android.exoplayer2.source.m;
/* compiled from: TrackSelector.java */
/* loaded from: classes2.dex */
public abstract class h {

    /* renamed from: a  reason: collision with root package name */
    private a f3179a;

    /* compiled from: TrackSelector.java */
    /* loaded from: classes2.dex */
    public interface a {
    }

    public abstract i a(k[] kVarArr, m mVar) throws ExoPlaybackException;

    public abstract void a(Object obj);

    public final void a(a aVar) {
        this.f3179a = aVar;
    }
}
