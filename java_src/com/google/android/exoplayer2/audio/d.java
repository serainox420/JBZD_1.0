package com.google.android.exoplayer2.audio;

import android.os.Handler;
import com.google.android.exoplayer2.Format;
/* compiled from: AudioRendererEventListener.java */
/* loaded from: classes2.dex */
public interface d {
    void a(int i);

    void a(int i, long j, long j2);

    void b(Format format);

    void b(String str, long j, long j2);

    void c(com.google.android.exoplayer2.a.d dVar);

    void d(com.google.android.exoplayer2.a.d dVar);

    /* compiled from: AudioRendererEventListener.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final Handler f3161a;
        private final d b;

        public a(Handler handler, d dVar) {
            this.f3161a = dVar != null ? (Handler) com.google.android.exoplayer2.util.a.a(handler) : null;
            this.b = dVar;
        }

        public void a(final com.google.android.exoplayer2.a.d dVar) {
            if (this.b != null) {
                this.f3161a.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.d.a.1
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.b.c(dVar);
                    }
                });
            }
        }

        public void a(final String str, final long j, final long j2) {
            if (this.b != null) {
                this.f3161a.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.d.a.2
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.b.b(str, j, j2);
                    }
                });
            }
        }

        public void a(final Format format) {
            if (this.b != null) {
                this.f3161a.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.d.a.3
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.b.b(format);
                    }
                });
            }
        }

        public void a(final int i, final long j, final long j2) {
            if (this.b != null) {
                this.f3161a.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.d.a.4
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.b.a(i, j, j2);
                    }
                });
            }
        }

        public void b(final com.google.android.exoplayer2.a.d dVar) {
            if (this.b != null) {
                this.f3161a.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.d.a.5
                    @Override // java.lang.Runnable
                    public void run() {
                        dVar.a();
                        a.this.b.d(dVar);
                    }
                });
            }
        }

        public void a(final int i) {
            if (this.b != null) {
                this.f3161a.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.d.a.6
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.b.a(i);
                    }
                });
            }
        }
    }
}
