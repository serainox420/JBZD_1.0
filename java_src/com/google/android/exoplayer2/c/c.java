package com.google.android.exoplayer2.c;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Point;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import android.view.Surface;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.c.e;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.mediacodec.MediaCodecRenderer;
import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
import com.google.android.exoplayer2.util.i;
import com.google.android.exoplayer2.util.t;
import com.google.android.exoplayer2.util.v;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.openx.view.mraid.JSInterface;
import java.nio.ByteBuffer;
/* compiled from: MediaCodecVideoRenderer.java */
@TargetApi(16)
/* loaded from: classes2.dex */
public class c extends MediaCodecRenderer {
    private static final int[] c = {1920, 1600, 1440, 1280, 960, 854, 640, 540, 480};
    private float A;
    private boolean B;
    private int C;
    b b;
    private final d d;
    private final e.a e;
    private final long f;
    private final int g;
    private final boolean h;
    private Format[] i;
    private a j;
    private Surface k;
    private int l;
    private boolean m;
    private long n;
    private long o;
    private int p;
    private int q;
    private int r;
    private float s;
    private int t;
    private int u;
    private int v;
    private float w;
    private int x;
    private int y;
    private int z;

    public c(Context context, com.google.android.exoplayer2.mediacodec.b bVar, long j, com.google.android.exoplayer2.drm.a<com.google.android.exoplayer2.drm.c> aVar, boolean z, Handler handler, e eVar, int i) {
        super(2, bVar, aVar, z);
        this.f = j;
        this.g = i;
        this.d = new d(context);
        this.e = new e.a(handler, eVar);
        this.h = H();
        this.n = -9223372036854775807L;
        this.t = -1;
        this.u = -1;
        this.w = -1.0f;
        this.s = -1.0f;
        this.l = 1;
        E();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected int a(com.google.android.exoplayer2.mediacodec.b bVar, Format format) throws MediaCodecUtil.DecoderQueryException {
        boolean z;
        int i = 0;
        String str = format.f;
        if (!i.b(str)) {
            return 0;
        }
        DrmInitData drmInitData = format.i;
        if (drmInitData != null) {
            z = false;
            for (int i2 = 0; i2 < drmInitData.f3198a; i2++) {
                z |= drmInitData.a(i2).c;
            }
        } else {
            z = false;
        }
        com.google.android.exoplayer2.mediacodec.a a2 = bVar.a(str, z);
        if (a2 == null) {
            return 1;
        }
        boolean b2 = a2.b(format.c);
        if (b2 && format.j > 0 && format.k > 0) {
            if (v.f3519a >= 21) {
                b2 = a2.a(format.j, format.k, format.l);
            } else {
                b2 = format.j * format.k <= MediaCodecUtil.b();
                if (!b2) {
                    Log.d("MediaCodecVideoRenderer", "FalseCheck [legacyFrameSize, " + format.j + JSInterface.JSON_X + format.k + "] [" + v.e + "]");
                }
            }
        }
        int i3 = a2.b ? 8 : 4;
        if (a2.c) {
            i = 16;
        }
        return i | i3 | (b2 ? 3 : 2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.a
    public void a(boolean z) throws ExoPlaybackException {
        super.a(z);
        this.C = q().b;
        this.B = this.C != 0;
        this.e.a(this.f3303a);
        this.d.a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.a
    public void a(Format[] formatArr) throws ExoPlaybackException {
        this.i = formatArr;
        super.a(formatArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.a
    public void a(long j, boolean z) throws ExoPlaybackException {
        super.a(j, z);
        w();
        this.q = 0;
        this.n = (!z || this.f <= 0) ? -9223372036854775807L : SystemClock.elapsedRealtime() + this.f;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.j
    public boolean t() {
        if ((this.m || super.z()) && super.t()) {
            this.n = -9223372036854775807L;
            return true;
        } else if (this.n == -9223372036854775807L) {
            return false;
        } else {
            if (SystemClock.elapsedRealtime() < this.n) {
                return true;
            }
            this.n = -9223372036854775807L;
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.a
    public void n() {
        super.n();
        this.p = 0;
        this.o = SystemClock.elapsedRealtime();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.a
    public void o() {
        this.n = -9223372036854775807L;
        G();
        super.o();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.a
    public void p() {
        this.t = -1;
        this.u = -1;
        this.w = -1.0f;
        this.s = -1.0f;
        E();
        this.d.b();
        this.b = null;
        try {
            super.p();
        } finally {
            this.f3303a.a();
            this.e.b(this.f3303a);
        }
    }

    @Override // com.google.android.exoplayer2.a, com.google.android.exoplayer2.d.b
    public void a(int i, Object obj) throws ExoPlaybackException {
        if (i == 1) {
            a((Surface) obj);
        } else if (i == 5) {
            this.l = ((Integer) obj).intValue();
            MediaCodec A = A();
            if (A != null) {
                d(A, this.l);
            }
        } else {
            super.a(i, obj);
        }
    }

    private void a(Surface surface) throws ExoPlaybackException {
        if (this.k != surface) {
            this.k = surface;
            int d = d();
            if (d == 1 || d == 2) {
                MediaCodec A = A();
                if (v.f3519a >= 23 && A != null && surface != null) {
                    a(A, surface);
                } else {
                    B();
                    y();
                }
            }
        }
        w();
        E();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public boolean z() {
        return super.z() && this.k != null && this.k.isValid();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void a(com.google.android.exoplayer2.mediacodec.a aVar, MediaCodec mediaCodec, Format format, MediaCrypto mediaCrypto) throws MediaCodecUtil.DecoderQueryException {
        this.j = a(aVar, format, this.i);
        mediaCodec.configure(a(format, this.j, this.h, this.C), this.k, mediaCrypto, 0);
        if (v.f3519a >= 23 && this.B) {
            this.b = new b(mediaCodec);
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void a(String str, long j, long j2) {
        this.e.a(str, j, j2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public void b(Format format) throws ExoPlaybackException {
        super.b(format);
        this.e.a(format);
        this.s = d(format);
        this.r = e(format);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void a(com.google.android.exoplayer2.a.e eVar) {
        if (v.f3519a < 23 && this.B) {
            v();
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void a(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        int integer;
        int integer2;
        boolean z = mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top");
        if (z) {
            integer = (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1;
        } else {
            integer = mediaFormat.getInteger("width");
        }
        this.t = integer;
        if (z) {
            integer2 = (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1;
        } else {
            integer2 = mediaFormat.getInteger("height");
        }
        this.u = integer2;
        this.w = this.s;
        if (v.f3519a >= 21) {
            if (this.r == 90 || this.r == 270) {
                int i = this.t;
                this.t = this.u;
                this.u = i;
                this.w = 1.0f / this.w;
            }
        } else {
            this.v = this.r;
        }
        d(mediaCodec, this.l);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected boolean a(MediaCodec mediaCodec, boolean z, Format format, Format format2) {
        return a(format, format2) && format2.j <= this.j.f3184a && format2.k <= this.j.b && format2.g <= this.j.c && (z || (format.j == format2.j && format.k == format2.k));
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected boolean a(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z) {
        if (z) {
            a(mediaCodec, i);
            return true;
        } else if (!this.m) {
            if (v.f3519a >= 21) {
                a(mediaCodec, i, System.nanoTime());
            } else {
                c(mediaCodec, i);
            }
            return true;
        } else if (d() != 2) {
            return false;
        } else {
            long elapsedRealtime = (j3 - j) - ((SystemClock.elapsedRealtime() * 1000) - j2);
            long nanoTime = System.nanoTime();
            long a2 = this.d.a(j3, (elapsedRealtime * 1000) + nanoTime);
            long j4 = (a2 - nanoTime) / 1000;
            if (b(j4, j2)) {
                b(mediaCodec, i);
                return true;
            }
            if (v.f3519a >= 21) {
                if (j4 < 50000) {
                    a(mediaCodec, i, a2);
                    return true;
                }
            } else if (j4 < NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS) {
                if (j4 > 11000) {
                    try {
                        Thread.sleep((j4 - NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS) / 1000);
                    } catch (InterruptedException e) {
                        Thread.currentThread().interrupt();
                    }
                }
                c(mediaCodec, i);
                return true;
            }
            return false;
        }
    }

    protected boolean b(long j, long j2) {
        return j < -30000;
    }

    private void a(MediaCodec mediaCodec, int i) {
        t.a("skipVideoBuffer");
        mediaCodec.releaseOutputBuffer(i, false);
        t.a();
        this.f3303a.e++;
    }

    private void b(MediaCodec mediaCodec, int i) {
        t.a("dropVideoBuffer");
        mediaCodec.releaseOutputBuffer(i, false);
        t.a();
        this.f3303a.f++;
        this.p++;
        this.q++;
        this.f3303a.g = Math.max(this.q, this.f3303a.g);
        if (this.p == this.g) {
            G();
        }
    }

    private void c(MediaCodec mediaCodec, int i) {
        F();
        t.a("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i, true);
        t.a();
        this.f3303a.d++;
        this.q = 0;
        v();
    }

    @TargetApi(21)
    private void a(MediaCodec mediaCodec, int i, long j) {
        F();
        t.a("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i, j);
        t.a();
        this.f3303a.d++;
        this.q = 0;
        v();
    }

    private void w() {
        MediaCodec A;
        this.m = false;
        if (v.f3519a >= 23 && this.B && (A = A()) != null) {
            this.b = new b(A);
        }
    }

    void v() {
        if (!this.m) {
            this.m = true;
            this.e.a(this.k);
        }
    }

    private void E() {
        this.x = -1;
        this.y = -1;
        this.A = -1.0f;
        this.z = -1;
    }

    private void F() {
        if (this.x != this.t || this.y != this.u || this.z != this.v || this.A != this.w) {
            this.e.a(this.t, this.u, this.v, this.w);
            this.x = this.t;
            this.y = this.u;
            this.z = this.v;
            this.A = this.w;
        }
    }

    private void G() {
        if (this.p > 0) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.e.a(this.p, elapsedRealtime - this.o);
            this.p = 0;
            this.o = elapsedRealtime;
        }
    }

    @SuppressLint({"InlinedApi"})
    private static MediaFormat a(Format format, a aVar, boolean z, int i) {
        MediaFormat b2 = format.b();
        b2.setInteger("max-width", aVar.f3184a);
        b2.setInteger("max-height", aVar.b);
        if (aVar.c != -1) {
            b2.setInteger("max-input-size", aVar.c);
        }
        if (z) {
            b2.setInteger("auto-frc", 0);
        }
        if (i != 0) {
            a(b2, i);
        }
        return b2;
    }

    @TargetApi(23)
    private static void a(MediaCodec mediaCodec, Surface surface) {
        mediaCodec.setOutputSurface(surface);
    }

    @TargetApi(21)
    private static void a(MediaFormat mediaFormat, int i) {
        mediaFormat.setFeatureEnabled("tunneled-playback", true);
        mediaFormat.setInteger("audio-session-id", i);
    }

    private static a a(com.google.android.exoplayer2.mediacodec.a aVar, Format format, Format[] formatArr) throws MediaCodecUtil.DecoderQueryException {
        boolean z;
        int i;
        int i2 = format.j;
        int i3 = format.k;
        int c2 = c(format);
        if (formatArr.length == 1) {
            return new a(i2, i3, c2);
        }
        int length = formatArr.length;
        int i4 = 0;
        boolean z2 = false;
        while (i4 < length) {
            Format format2 = formatArr[i4];
            if (a(format, format2)) {
                z = (format2.j == -1 || format2.k == -1) | z2;
                i2 = Math.max(i2, format2.j);
                i3 = Math.max(i3, format2.k);
                i = Math.max(c2, c(format2));
            } else {
                z = z2;
                i = c2;
            }
            i4++;
            i2 = i2;
            i3 = i3;
            c2 = i;
            z2 = z;
        }
        if (z2) {
            Log.w("MediaCodecVideoRenderer", "Resolutions unknown. Codec max resolution: " + i2 + JSInterface.JSON_X + i3);
            Point a2 = a(aVar, format);
            if (a2 != null) {
                i2 = Math.max(i2, a2.x);
                i3 = Math.max(i3, a2.y);
                c2 = Math.max(c2, a(format.f, i2, i3));
                Log.w("MediaCodecVideoRenderer", "Codec max resolution adjusted to: " + i2 + JSInterface.JSON_X + i3);
            }
        }
        return new a(i2, i3, c2);
    }

    private static Point a(com.google.android.exoplayer2.mediacodec.a aVar, Format format) throws MediaCodecUtil.DecoderQueryException {
        int[] iArr;
        boolean z = format.k > format.j;
        int i = z ? format.k : format.j;
        int i2 = z ? format.j : format.k;
        float f = i2 / i;
        for (int i3 : c) {
            int i4 = (int) (i3 * f);
            if (i3 <= i || i4 <= i2) {
                return null;
            }
            if (v.f3519a >= 21) {
                int i5 = z ? i4 : i3;
                if (!z) {
                    i3 = i4;
                }
                Point a2 = aVar.a(i5, i3);
                if (aVar.a(a2.x, a2.y, format.l)) {
                    return a2;
                }
            } else {
                int a3 = v.a(i3, 16) * 16;
                int a4 = v.a(i4, 16) * 16;
                if (a3 * a4 <= MediaCodecUtil.b()) {
                    return new Point(z ? a4 : a3, z ? a3 : a4);
                }
            }
        }
        return null;
    }

    private static int c(Format format) {
        return format.g != -1 ? format.g : a(format.f, format.j, format.k);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static int a(String str, int i, int i2) {
        char c2;
        int i3;
        int i4 = 2;
        if (i == -1 || i2 == -1) {
            return -1;
        }
        switch (str.hashCode()) {
            case -1664118616:
                if (str.equals("video/3gpp")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case -1662541442:
                if (str.equals("video/hevc")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case 1187890754:
                if (str.equals("video/mp4v-es")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case 1331836730:
                if (str.equals("video/avc")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 1599127256:
                if (str.equals("video/x-vnd.on2.vp8")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 1599127257:
                if (str.equals("video/x-vnd.on2.vp9")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        switch (c2) {
            case 0:
            case 1:
                i3 = i * i2;
                break;
            case 2:
                if (!"BRAVIA 4K 2015".equals(v.d)) {
                    i3 = v.a(i, 16) * v.a(i2, 16) * 16 * 16;
                    break;
                } else {
                    return -1;
                }
            case 3:
                i3 = i * i2;
                break;
            case 4:
            case 5:
                i3 = i * i2;
                i4 = 4;
                break;
            default:
                return -1;
        }
        return (i3 * 3) / (i4 * 2);
    }

    private static void d(MediaCodec mediaCodec, int i) {
        mediaCodec.setVideoScalingMode(i);
    }

    private static boolean H() {
        return v.f3519a <= 22 && "foster".equals(v.b) && "NVIDIA".equals(v.c);
    }

    private static boolean a(Format format, Format format2) {
        return format.f.equals(format2.f) && e(format) == e(format2);
    }

    private static float d(Format format) {
        if (format.n == -1.0f) {
            return 1.0f;
        }
        return format.n;
    }

    private static int e(Format format) {
        if (format.m == -1) {
            return 0;
        }
        return format.m;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MediaCodecVideoRenderer.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f3184a;
        public final int b;
        public final int c;

        public a(int i, int i2, int i3) {
            this.f3184a = i;
            this.b = i2;
            this.c = i3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MediaCodecVideoRenderer.java */
    @TargetApi(23)
    /* loaded from: classes2.dex */
    public final class b implements MediaCodec.OnFrameRenderedListener {
        private b(MediaCodec mediaCodec) {
            mediaCodec.setOnFrameRenderedListener(this, new Handler());
        }

        @Override // android.media.MediaCodec.OnFrameRenderedListener
        public void onFrameRendered(MediaCodec mediaCodec, long j, long j2) {
            if (this == c.this.b) {
                c.this.v();
            }
        }
    }
}
