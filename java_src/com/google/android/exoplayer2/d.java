package com.google.android.exoplayer2;
/* compiled from: ExoPlayer.java */
/* loaded from: classes2.dex */
public interface d {

    /* compiled from: ExoPlayer.java */
    /* loaded from: classes2.dex */
    public interface a {
        void a(com.google.android.exoplayer2.source.m mVar, com.google.android.exoplayer2.b.g gVar);

        void onLoadingChanged(boolean z);

        void onPlayerError(ExoPlaybackException exoPlaybackException);

        void onPlayerStateChanged(boolean z, int i);

        void onPositionDiscontinuity();

        void onTimelineChanged(n nVar, Object obj);
    }

    /* compiled from: ExoPlayer.java */
    /* loaded from: classes2.dex */
    public interface b {
        void a(int i, Object obj) throws ExoPlaybackException;
    }

    int a();

    int a(int i);

    void a(int i, long j);

    void a(long j);

    void a(a aVar);

    void a(com.google.android.exoplayer2.source.g gVar);

    void a(boolean z);

    void a(c... cVarArr);

    void b(a aVar);

    void b(c... cVarArr);

    boolean b();

    void c();

    void d();

    void e();

    com.google.android.exoplayer2.b.g f();

    n g();

    int h();

    long i();

    long j();

    long k();

    int l();

    /* compiled from: ExoPlayer.java */
    /* loaded from: classes2.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final b f3196a;
        public final int b;
        public final Object c;

        public c(b bVar, int i, Object obj) {
            this.f3196a = bVar;
            this.b = i;
            this.c = obj;
        }
    }
}
