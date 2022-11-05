package com.google.android.exoplayer2;

import com.google.android.exoplayer2.d;
import java.io.IOException;
/* compiled from: Renderer.java */
/* loaded from: classes2.dex */
public interface j extends d.b {
    int a();

    void a(int i);

    void a(long j) throws ExoPlaybackException;

    void a(long j, long j2) throws ExoPlaybackException;

    void a(l lVar, Format[] formatArr, com.google.android.exoplayer2.source.i iVar, long j, boolean z, long j2) throws ExoPlaybackException;

    void a(Format[] formatArr, com.google.android.exoplayer2.source.i iVar, long j) throws ExoPlaybackException;

    k b();

    com.google.android.exoplayer2.util.h c();

    int d();

    void e() throws ExoPlaybackException;

    com.google.android.exoplayer2.source.i f();

    boolean g();

    void h();

    boolean i();

    void j() throws IOException;

    void k() throws ExoPlaybackException;

    void l();

    boolean t();

    boolean u();
}
