package com.google.android.exoplayer2.source;

import android.os.Handler;
import com.google.android.exoplayer2.Format;
import java.io.IOException;
/* compiled from: AdaptiveMediaSourceEventListener.java */
/* loaded from: classes2.dex */
public interface a {
    void a(int i, Format format, int i2, Object obj, long j);

    void a(com.google.android.exoplayer2.upstream.g gVar, int i, int i2, Format format, int i3, Object obj, long j, long j2, long j3);

    void a(com.google.android.exoplayer2.upstream.g gVar, int i, int i2, Format format, int i3, Object obj, long j, long j2, long j3, long j4, long j5);

    void a(com.google.android.exoplayer2.upstream.g gVar, int i, int i2, Format format, int i3, Object obj, long j, long j2, long j3, long j4, long j5, IOException iOException, boolean z);

    void b(com.google.android.exoplayer2.upstream.g gVar, int i, int i2, Format format, int i3, Object obj, long j, long j2, long j3, long j4, long j5);

    /* compiled from: AdaptiveMediaSourceEventListener.java */
    /* renamed from: com.google.android.exoplayer2.source.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0138a {

        /* renamed from: a  reason: collision with root package name */
        private final Handler f3337a;
        private final a b;
        private final long c;

        public C0138a(Handler handler, a aVar) {
            this(handler, aVar, 0L);
        }

        public C0138a(Handler handler, a aVar, long j) {
            this.f3337a = aVar != null ? (Handler) com.google.android.exoplayer2.util.a.a(handler) : null;
            this.b = aVar;
            this.c = j;
        }

        public C0138a a(long j) {
            return new C0138a(this.f3337a, this.b, j);
        }

        public void a(com.google.android.exoplayer2.upstream.g gVar, int i, long j) {
            a(gVar, i, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L, j);
        }

        public void a(final com.google.android.exoplayer2.upstream.g gVar, final int i, final int i2, final Format format, final int i3, final Object obj, final long j, final long j2, final long j3) {
            if (this.b != null) {
                this.f3337a.post(new Runnable() { // from class: com.google.android.exoplayer2.source.a.a.1
                    @Override // java.lang.Runnable
                    public void run() {
                        C0138a.this.b.a(gVar, i, i2, format, i3, obj, C0138a.this.b(j), C0138a.this.b(j2), j3);
                    }
                });
            }
        }

        public void a(com.google.android.exoplayer2.upstream.g gVar, int i, long j, long j2, long j3) {
            a(gVar, i, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L, j, j2, j3);
        }

        public void a(final com.google.android.exoplayer2.upstream.g gVar, final int i, final int i2, final Format format, final int i3, final Object obj, final long j, final long j2, final long j3, final long j4, final long j5) {
            if (this.b != null) {
                this.f3337a.post(new Runnable() { // from class: com.google.android.exoplayer2.source.a.a.2
                    @Override // java.lang.Runnable
                    public void run() {
                        C0138a.this.b.a(gVar, i, i2, format, i3, obj, C0138a.this.b(j), C0138a.this.b(j2), j3, j4, j5);
                    }
                });
            }
        }

        public void b(com.google.android.exoplayer2.upstream.g gVar, int i, long j, long j2, long j3) {
            b(gVar, i, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L, j, j2, j3);
        }

        public void b(final com.google.android.exoplayer2.upstream.g gVar, final int i, final int i2, final Format format, final int i3, final Object obj, final long j, final long j2, final long j3, final long j4, final long j5) {
            if (this.b != null) {
                this.f3337a.post(new Runnable() { // from class: com.google.android.exoplayer2.source.a.a.3
                    @Override // java.lang.Runnable
                    public void run() {
                        C0138a.this.b.b(gVar, i, i2, format, i3, obj, C0138a.this.b(j), C0138a.this.b(j2), j3, j4, j5);
                    }
                });
            }
        }

        public void a(com.google.android.exoplayer2.upstream.g gVar, int i, long j, long j2, long j3, IOException iOException, boolean z) {
            a(gVar, i, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L, j, j2, j3, iOException, z);
        }

        public void a(final com.google.android.exoplayer2.upstream.g gVar, final int i, final int i2, final Format format, final int i3, final Object obj, final long j, final long j2, final long j3, final long j4, final long j5, final IOException iOException, final boolean z) {
            if (this.b != null) {
                this.f3337a.post(new Runnable() { // from class: com.google.android.exoplayer2.source.a.a.4
                    @Override // java.lang.Runnable
                    public void run() {
                        C0138a.this.b.a(gVar, i, i2, format, i3, obj, C0138a.this.b(j), C0138a.this.b(j2), j3, j4, j5, iOException, z);
                    }
                });
            }
        }

        public void a(final int i, final Format format, final int i2, final Object obj, final long j) {
            if (this.b != null) {
                this.f3337a.post(new Runnable() { // from class: com.google.android.exoplayer2.source.a.a.5
                    @Override // java.lang.Runnable
                    public void run() {
                        C0138a.this.b.a(i, format, i2, obj, C0138a.this.b(j));
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long b(long j) {
            long a2 = com.google.android.exoplayer2.b.a(j);
            if (a2 == -9223372036854775807L) {
                return -9223372036854775807L;
            }
            return this.c + a2;
        }
    }
}
