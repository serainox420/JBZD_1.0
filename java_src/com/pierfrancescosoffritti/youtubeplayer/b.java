package com.pierfrancescosoffritti.youtubeplayer;

import com.pierfrancescosoffritti.youtubeplayer.e;
/* compiled from: PlaybackResumer.java */
/* loaded from: classes3.dex */
public class b implements e.a {

    /* renamed from: a  reason: collision with root package name */
    private boolean f4711a = false;
    private int b = -1;
    private String c;
    private float d;
    private YouTubePlayerView e;

    public b(YouTubePlayerView youTubePlayerView) {
        this.e = youTubePlayerView;
    }

    public void a() {
        if (this.f4711a && this.b == 1) {
            this.e.a(this.c, this.d);
        } else if (!this.f4711a && this.b == 1) {
            this.e.b(this.c, this.d);
        }
        this.b = -1;
    }

    @Override // com.pierfrancescosoffritti.youtubeplayer.e.a
    public void b() {
    }

    @Override // com.pierfrancescosoffritti.youtubeplayer.e.a
    public void a(int i) {
        switch (i) {
            case 0:
                this.f4711a = false;
                return;
            case 1:
                this.f4711a = true;
                return;
            case 2:
                this.f4711a = false;
                return;
            default:
                return;
        }
    }

    @Override // com.pierfrancescosoffritti.youtubeplayer.e.a
    public void b(int i) {
    }

    @Override // com.pierfrancescosoffritti.youtubeplayer.e.a
    public void a(double d) {
    }

    @Override // com.pierfrancescosoffritti.youtubeplayer.e.a
    public void c(int i) {
        if (i == 1) {
            this.b = i;
        }
    }

    @Override // com.pierfrancescosoffritti.youtubeplayer.e.a
    public void c() {
    }

    @Override // com.pierfrancescosoffritti.youtubeplayer.e.a
    public void a(float f) {
        this.d = f;
    }

    @Override // com.pierfrancescosoffritti.youtubeplayer.e.a
    public void b(float f) {
    }

    @Override // com.pierfrancescosoffritti.youtubeplayer.e.a
    public void a(String str) {
    }

    @Override // com.pierfrancescosoffritti.youtubeplayer.e.a
    public void b(String str) {
    }

    @Override // com.pierfrancescosoffritti.youtubeplayer.e.a
    public void c(String str) {
        this.c = str;
    }
}
