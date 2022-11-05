package com.google.android.exoplayer2.c;

import android.os.Handler;
import android.view.Surface;
import com.google.android.exoplayer2.Format;
/* compiled from: VideoRendererEventListener.java */
/* loaded from: classes2.dex */
public interface e {
    void a(int i, int i2, int i3, float f);

    void a(int i, long j);

    void a(Surface surface);

    void a(Format format);

    void a(com.google.android.exoplayer2.a.d dVar);

    void a(String str, long j, long j2);

    void b(com.google.android.exoplayer2.a.d dVar);

    /* compiled from: VideoRendererEventListener.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final Handler f3188a;
        private final e b;

        public a(Handler handler, e eVar) {
            this.f3188a = eVar != null ? (Handler) com.google.android.exoplayer2.util.a.a(handler) : null;
            this.b = eVar;
        }

        public void a(final com.google.android.exoplayer2.a.d dVar) {
            if (this.b != null) {
                this.f3188a.post(new Runnable() { // from class: com.google.android.exoplayer2.c.e.a.1
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.b.a(dVar);
                    }
                });
            }
        }

        public void a(final String str, final long j, final long j2) {
            if (this.b != null) {
                this.f3188a.post(new Runnable() { // from class: com.google.android.exoplayer2.c.e.a.2
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.b.a(str, j, j2);
                    }
                });
            }
        }

        public void a(final Format format) {
            if (this.b != null) {
                this.f3188a.post(new Runnable() { // from class: com.google.android.exoplayer2.c.e.a.3
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.b.a(format);
                    }
                });
            }
        }

        public void a(final int i, final long j) {
            if (this.b != null) {
                this.f3188a.post(new Runnable() { // from class: com.google.android.exoplayer2.c.e.a.4
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.b.a(i, j);
                    }
                });
            }
        }

        public void a(final int i, final int i2, final int i3, final float f) {
            if (this.b != null) {
                this.f3188a.post(new Runnable() { // from class: com.google.android.exoplayer2.c.e.a.5
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.b.a(i, i2, i3, f);
                    }
                });
            }
        }

        public void a(final Surface surface) {
            if (this.b != null) {
                this.f3188a.post(new Runnable() { // from class: com.google.android.exoplayer2.c.e.a.6
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.b.a(surface);
                    }
                });
            }
        }

        public void b(final com.google.android.exoplayer2.a.d dVar) {
            if (this.b != null) {
                this.f3188a.post(new Runnable() { // from class: com.google.android.exoplayer2.c.e.a.7
                    @Override // java.lang.Runnable
                    public void run() {
                        dVar.a();
                        a.this.b.b(dVar);
                    }
                });
            }
        }
    }
}
