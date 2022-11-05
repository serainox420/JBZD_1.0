package com.google.android.exoplayer2.mediacodec;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.a.d;
import com.google.android.exoplayer2.a.e;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.drm.c;
import com.google.android.exoplayer2.h;
import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
import com.google.android.exoplayer2.util.j;
import com.google.android.exoplayer2.util.t;
import com.google.android.exoplayer2.util.v;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
@TargetApi(16)
/* loaded from: classes2.dex */
public abstract class MediaCodecRenderer extends com.google.android.exoplayer2.a {
    private static final byte[] b = v.h("0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78");
    private int A;
    private int B;
    private boolean C;
    private boolean D;
    private int E;
    private int F;
    private boolean G;
    private boolean H;
    private boolean I;
    private boolean J;
    private boolean K;
    private boolean L;

    /* renamed from: a  reason: collision with root package name */
    protected d f3303a;
    private final b c;
    private final com.google.android.exoplayer2.drm.a<c> d;
    private final boolean e;
    private final e f;
    private final h g;
    private final List<Long> h;
    private final MediaCodec.BufferInfo i;
    private Format j;
    private MediaCodec k;
    private DrmSession<c> l;
    private DrmSession<c> m;
    private boolean n;
    private boolean o;
    private boolean p;
    private boolean q;
    private boolean r;
    private boolean s;
    private boolean t;
    private boolean u;
    private boolean v;
    private boolean w;
    private ByteBuffer[] x;
    private ByteBuffer[] y;
    private long z;

    protected abstract int a(b bVar, Format format) throws MediaCodecUtil.DecoderQueryException;

    protected abstract void a(a aVar, MediaCodec mediaCodec, Format format, MediaCrypto mediaCrypto) throws MediaCodecUtil.DecoderQueryException;

    protected abstract boolean a(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z) throws ExoPlaybackException;

    /* loaded from: classes2.dex */
    public static class DecoderInitializationException extends Exception {
        public final String decoderName;
        public final String diagnosticInfo;
        public final String mimeType;
        public final boolean secureDecoderRequired;

        public DecoderInitializationException(Format format, Throwable th, boolean z, int i) {
            super("Decoder init failed: [" + i + "], " + format, th);
            this.mimeType = format.f;
            this.secureDecoderRequired = z;
            this.decoderName = null;
            this.diagnosticInfo = a(i);
        }

        public DecoderInitializationException(Format format, Throwable th, boolean z, String str) {
            super("Decoder init failed: " + str + ", " + format, th);
            this.mimeType = format.f;
            this.secureDecoderRequired = z;
            this.decoderName = str;
            this.diagnosticInfo = v.f3519a >= 21 ? a(th) : null;
        }

        @TargetApi(21)
        private static String a(Throwable th) {
            if (th instanceof MediaCodec.CodecException) {
                return ((MediaCodec.CodecException) th).getDiagnosticInfo();
            }
            return null;
        }

        private static String a(int i) {
            return "com.google.android.exoplayer.MediaCodecTrackRenderer_" + (i < 0 ? "neg_" : "") + Math.abs(i);
        }
    }

    public MediaCodecRenderer(int i, b bVar, com.google.android.exoplayer2.drm.a<c> aVar, boolean z) {
        super(i);
        com.google.android.exoplayer2.util.a.b(v.f3519a >= 16);
        this.c = (b) com.google.android.exoplayer2.util.a.a(bVar);
        this.d = aVar;
        this.e = z;
        this.f = new e(0);
        this.g = new h();
        this.h = new ArrayList();
        this.i = new MediaCodec.BufferInfo();
        this.E = 0;
        this.F = 0;
    }

    @Override // com.google.android.exoplayer2.a, com.google.android.exoplayer2.k
    public final int m() throws ExoPlaybackException {
        return 4;
    }

    @Override // com.google.android.exoplayer2.k
    public final int a(Format format) throws ExoPlaybackException {
        try {
            return a(this.c, format);
        } catch (MediaCodecUtil.DecoderQueryException e) {
            throw ExoPlaybackException.createForRenderer(e, r());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public a a(b bVar, Format format, boolean z) throws MediaCodecUtil.DecoderQueryException {
        return bVar.a(format.f, z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0169  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void y() throws ExoPlaybackException {
        boolean z;
        MediaCrypto mediaCrypto;
        a aVar;
        String str;
        if (z()) {
            this.l = this.m;
            String str2 = this.j.f;
            if (this.l != null) {
                int a2 = this.l.a();
                if (a2 == 0) {
                    throw ExoPlaybackException.createForRenderer(this.l.c(), r());
                }
                if (a2 == 3 || a2 == 4) {
                    MediaCrypto a3 = this.l.b().a();
                    z = this.l.a(str2);
                    mediaCrypto = a3;
                } else {
                    return;
                }
            } else {
                z = false;
                mediaCrypto = null;
            }
            try {
                a a4 = a(this.c, this.j, z);
                if (a4 == null && z) {
                    try {
                        a4 = a(this.c, this.j, false);
                        if (a4 != null) {
                            Log.w("MediaCodecRenderer", "Drm session requires secure decoder for " + str2 + ", but no secure decoder available. Trying to proceed with " + a4.f3307a + ".");
                        }
                    } catch (MediaCodecUtil.DecoderQueryException e) {
                        aVar = a4;
                        e = e;
                        a(new DecoderInitializationException(this.j, e, z, -49998));
                        if (aVar == null) {
                        }
                        str = aVar.f3307a;
                        this.n = aVar.b;
                        this.o = a(str, this.j);
                        this.p = a(str);
                        this.q = b(str);
                        this.r = c(str);
                        this.s = d(str);
                        this.t = e(str);
                        this.u = b(str, this.j);
                        long elapsedRealtime = SystemClock.elapsedRealtime();
                        t.a("createCodec:" + str);
                        this.k = MediaCodec.createByCodecName(str);
                        t.a();
                        t.a("configureCodec");
                        a(aVar, this.k, this.j, mediaCrypto);
                        t.a();
                        t.a("startCodec");
                        this.k.start();
                        t.a();
                        long elapsedRealtime2 = SystemClock.elapsedRealtime();
                        a(str, elapsedRealtime2, elapsedRealtime2 - elapsedRealtime);
                        this.x = this.k.getInputBuffers();
                        this.y = this.k.getOutputBuffers();
                        this.z = d() != 2 ? SystemClock.elapsedRealtime() + 1000 : -9223372036854775807L;
                        this.A = -1;
                        this.B = -1;
                        this.L = true;
                        this.f3303a.f3147a++;
                    }
                }
                aVar = a4;
            } catch (MediaCodecUtil.DecoderQueryException e2) {
                e = e2;
                aVar = null;
            }
            if (aVar == null) {
                a(new DecoderInitializationException(this.j, (Throwable) null, z, -49999));
            }
            str = aVar.f3307a;
            this.n = aVar.b;
            this.o = a(str, this.j);
            this.p = a(str);
            this.q = b(str);
            this.r = c(str);
            this.s = d(str);
            this.t = e(str);
            this.u = b(str, this.j);
            try {
                long elapsedRealtime3 = SystemClock.elapsedRealtime();
                t.a("createCodec:" + str);
                this.k = MediaCodec.createByCodecName(str);
                t.a();
                t.a("configureCodec");
                a(aVar, this.k, this.j, mediaCrypto);
                t.a();
                t.a("startCodec");
                this.k.start();
                t.a();
                long elapsedRealtime22 = SystemClock.elapsedRealtime();
                a(str, elapsedRealtime22, elapsedRealtime22 - elapsedRealtime3);
                this.x = this.k.getInputBuffers();
                this.y = this.k.getOutputBuffers();
            } catch (Exception e3) {
                a(new DecoderInitializationException(this.j, e3, z, str));
            }
            this.z = d() != 2 ? SystemClock.elapsedRealtime() + 1000 : -9223372036854775807L;
            this.A = -1;
            this.B = -1;
            this.L = true;
            this.f3303a.f3147a++;
        }
    }

    private void a(DecoderInitializationException decoderInitializationException) throws ExoPlaybackException {
        throw ExoPlaybackException.createForRenderer(decoderInitializationException, r());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean z() {
        return this.k == null && this.j != null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final MediaCodec A() {
        return this.k;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.a
    public void a(boolean z) throws ExoPlaybackException {
        this.f3303a = new d();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.a
    public void a(long j, boolean z) throws ExoPlaybackException {
        this.I = false;
        this.J = false;
        if (this.k != null) {
            C();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.a
    public void p() {
        this.j = null;
        try {
            B();
            try {
                if (this.l != null) {
                    this.d.a(this.l);
                }
                try {
                    if (this.m != null && this.m != this.l) {
                        this.d.a(this.m);
                    }
                } finally {
                }
            } catch (Throwable th) {
                try {
                    if (this.m != null && this.m != this.l) {
                        this.d.a(this.m);
                    }
                    throw th;
                } finally {
                }
            }
        } catch (Throwable th2) {
            try {
                if (this.l != null) {
                    this.d.a(this.l);
                }
                try {
                    if (this.m != null && this.m != this.l) {
                        this.d.a(this.m);
                    }
                    throw th2;
                } finally {
                }
            } catch (Throwable th3) {
                try {
                    if (this.m != null && this.m != this.l) {
                        this.d.a(this.m);
                    }
                    throw th3;
                } finally {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void B() {
        if (this.k != null) {
            this.z = -9223372036854775807L;
            this.A = -1;
            this.B = -1;
            this.K = false;
            this.C = false;
            this.h.clear();
            this.x = null;
            this.y = null;
            this.D = false;
            this.G = false;
            this.n = false;
            this.o = false;
            this.p = false;
            this.q = false;
            this.r = false;
            this.s = false;
            this.u = false;
            this.v = false;
            this.w = false;
            this.H = false;
            this.E = 0;
            this.F = 0;
            this.f3303a.b++;
            try {
                this.k.stop();
                try {
                    this.k.release();
                    this.k = null;
                    if (this.l == null || this.m == this.l) {
                        return;
                    }
                    try {
                        this.d.a(this.l);
                    } finally {
                    }
                } catch (Throwable th) {
                    this.k = null;
                    if (this.l != null && this.m != this.l) {
                        try {
                            this.d.a(this.l);
                        } finally {
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                try {
                    this.k.release();
                    this.k = null;
                    if (this.l != null && this.m != this.l) {
                        try {
                            this.d.a(this.l);
                        } finally {
                        }
                    }
                    throw th2;
                } catch (Throwable th3) {
                    this.k = null;
                    if (this.l != null && this.m != this.l) {
                        try {
                            this.d.a(this.l);
                        } finally {
                        }
                    }
                    throw th3;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.a
    public void n() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.a
    public void o() {
    }

    @Override // com.google.android.exoplayer2.j
    public void a(long j, long j2) throws ExoPlaybackException {
        if (this.J) {
            x();
            return;
        }
        if (this.j == null) {
            this.f.a();
            int a2 = a(this.g, this.f, true);
            if (a2 == -5) {
                b(this.g.f3299a);
            } else if (a2 == -4) {
                com.google.android.exoplayer2.util.a.b(this.f.c());
                this.I = true;
                F();
                return;
            } else {
                return;
            }
        }
        y();
        if (this.k != null) {
            t.a("drainAndFeed");
            do {
            } while (b(j, j2));
            do {
            } while (v());
            t.a();
        } else if (this.j != null) {
            b(j);
        }
        this.f3303a.a();
    }

    protected void C() throws ExoPlaybackException {
        this.z = -9223372036854775807L;
        this.A = -1;
        this.B = -1;
        this.L = true;
        this.K = false;
        this.C = false;
        this.h.clear();
        this.v = false;
        this.w = false;
        if (this.p || (this.s && this.H)) {
            B();
            y();
        } else if (this.F != 0) {
            B();
            y();
        } else {
            this.k.flush();
            this.G = false;
        }
        if (this.D && this.j != null) {
            this.E = 1;
        }
    }

    private boolean v() throws ExoPlaybackException {
        int position;
        int a2;
        if (this.k == null || this.F == 2 || this.I) {
            return false;
        }
        if (this.A < 0) {
            this.A = this.k.dequeueInputBuffer(0L);
            if (this.A < 0) {
                return false;
            }
            this.f.b = this.x[this.A];
            this.f.a();
        }
        if (this.F == 1) {
            if (!this.r) {
                this.H = true;
                this.k.queueInputBuffer(this.A, 0, 0, 0L, 4);
                this.A = -1;
            }
            this.F = 2;
            return false;
        } else if (this.v) {
            this.v = false;
            this.f.b.put(b);
            this.k.queueInputBuffer(this.A, 0, b.length, 0L, 0);
            this.A = -1;
            this.G = true;
            return true;
        } else {
            if (this.K) {
                a2 = -4;
                position = 0;
            } else {
                if (this.E == 1) {
                    for (int i = 0; i < this.j.h.size(); i++) {
                        this.f.b.put(this.j.h.get(i));
                    }
                    this.E = 2;
                }
                position = this.f.b.position();
                a2 = a(this.g, this.f, false);
            }
            if (a2 == -3) {
                return false;
            }
            if (a2 == -5) {
                if (this.E == 2) {
                    this.f.a();
                    this.E = 1;
                }
                b(this.g.f3299a);
                return true;
            } else if (this.f.c()) {
                if (this.E == 2) {
                    this.f.a();
                    this.E = 1;
                }
                this.I = true;
                if (!this.G) {
                    F();
                    return false;
                }
                try {
                    if (this.r) {
                        return false;
                    }
                    this.H = true;
                    this.k.queueInputBuffer(this.A, 0, 0, 0L, 4);
                    this.A = -1;
                    return false;
                } catch (MediaCodec.CryptoException e) {
                    throw ExoPlaybackException.createForRenderer(e, r());
                }
            } else if (this.L && !this.f.d()) {
                this.f.a();
                if (this.E == 2) {
                    this.E = 1;
                }
                return true;
            } else {
                this.L = false;
                boolean e2 = this.f.e();
                this.K = b(e2);
                if (this.K) {
                    return false;
                }
                if (this.o && !e2) {
                    j.a(this.f.b);
                    if (this.f.b.position() == 0) {
                        return true;
                    }
                    this.o = false;
                }
                try {
                    long j = this.f.c;
                    if (this.f.c_()) {
                        this.h.add(Long.valueOf(j));
                    }
                    this.f.f();
                    a(this.f);
                    if (e2) {
                        this.k.queueSecureInputBuffer(this.A, 0, a(this.f, position), j, 0);
                    } else {
                        this.k.queueInputBuffer(this.A, 0, this.f.b.limit(), j, 0);
                    }
                    this.A = -1;
                    this.G = true;
                    this.E = 0;
                    this.f3303a.c++;
                    return true;
                } catch (MediaCodec.CryptoException e3) {
                    throw ExoPlaybackException.createForRenderer(e3, r());
                }
            }
        }
    }

    private static MediaCodec.CryptoInfo a(e eVar, int i) {
        MediaCodec.CryptoInfo a2 = eVar.f3148a.a();
        if (i != 0) {
            if (a2.numBytesOfClearData == null) {
                a2.numBytesOfClearData = new int[1];
            }
            int[] iArr = a2.numBytesOfClearData;
            iArr[0] = iArr[0] + i;
        }
        return a2;
    }

    private boolean b(boolean z) throws ExoPlaybackException {
        if (this.l == null) {
            return false;
        }
        int a2 = this.l.a();
        if (a2 == 0) {
            throw ExoPlaybackException.createForRenderer(this.l.c(), r());
        }
        if (a2 == 4) {
            return false;
        }
        return z || !this.e;
    }

    protected void a(String str, long j, long j2) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(Format format) throws ExoPlaybackException {
        Format format2 = this.j;
        this.j = format;
        if (!v.a(this.j.i, format2 == null ? null : format2.i)) {
            if (this.j.i != null) {
                if (this.d == null) {
                    throw ExoPlaybackException.createForRenderer(new IllegalStateException("Media requires a DrmSessionManager"), r());
                }
                this.m = this.d.a(Looper.myLooper(), this.j.i);
                if (this.m == this.l) {
                    this.d.a(this.m);
                }
            } else {
                this.m = null;
            }
        }
        if (this.m == this.l && this.k != null && a(this.k, this.n, format2, this.j)) {
            this.D = true;
            this.E = 1;
            this.v = this.q && this.j.j == format2.j && this.j.k == format2.k;
        } else if (this.G) {
            this.F = 1;
        } else {
            B();
            y();
        }
    }

    protected void a(MediaCodec mediaCodec, MediaFormat mediaFormat) throws ExoPlaybackException {
    }

    protected void a(e eVar) {
    }

    protected void c(long j) {
    }

    protected boolean a(MediaCodec mediaCodec, boolean z, Format format, Format format2) {
        return false;
    }

    @Override // com.google.android.exoplayer2.j
    public boolean u() {
        return this.J;
    }

    @Override // com.google.android.exoplayer2.j
    public boolean t() {
        return this.j != null && !this.K && (s() || this.B >= 0 || (this.z != -9223372036854775807L && SystemClock.elapsedRealtime() < this.z));
    }

    protected long D() {
        return 0L;
    }

    private boolean b(long j, long j2) throws ExoPlaybackException {
        boolean a2;
        if (this.B < 0) {
            if (this.t && this.H) {
                try {
                    this.B = this.k.dequeueOutputBuffer(this.i, D());
                } catch (IllegalStateException e) {
                    F();
                    if (this.J) {
                        B();
                    }
                    return false;
                }
            } else {
                this.B = this.k.dequeueOutputBuffer(this.i, D());
            }
            if (this.B >= 0) {
                if (this.w) {
                    this.w = false;
                    this.k.releaseOutputBuffer(this.B, false);
                    this.B = -1;
                    return true;
                } else if ((this.i.flags & 4) != 0) {
                    F();
                    this.B = -1;
                    return false;
                } else {
                    ByteBuffer byteBuffer = this.y[this.B];
                    if (byteBuffer != null) {
                        byteBuffer.position(this.i.offset);
                        byteBuffer.limit(this.i.offset + this.i.size);
                    }
                    this.C = d(this.i.presentationTimeUs);
                }
            } else if (this.B == -2) {
                w();
                return true;
            } else if (this.B == -3) {
                E();
                return true;
            } else {
                if (this.r && (this.I || this.F == 2)) {
                    F();
                }
                return false;
            }
        }
        if (this.t && this.H) {
            try {
                a2 = a(j, j2, this.k, this.y[this.B], this.B, this.i.flags, this.i.presentationTimeUs, this.C);
            } catch (IllegalStateException e2) {
                F();
                if (this.J) {
                    B();
                }
                return false;
            }
        } else {
            a2 = a(j, j2, this.k, this.y[this.B], this.B, this.i.flags, this.i.presentationTimeUs, this.C);
        }
        if (a2) {
            c(this.i.presentationTimeUs);
            this.B = -1;
            return true;
        }
        return false;
    }

    private void w() throws ExoPlaybackException {
        MediaFormat outputFormat = this.k.getOutputFormat();
        if (this.q && outputFormat.getInteger("width") == 32 && outputFormat.getInteger("height") == 32) {
            this.w = true;
            return;
        }
        if (this.u) {
            outputFormat.setInteger("channel-count", 1);
        }
        a(this.k, outputFormat);
    }

    private void E() {
        this.y = this.k.getOutputBuffers();
    }

    protected void x() throws ExoPlaybackException {
    }

    private void F() throws ExoPlaybackException {
        if (this.F == 2) {
            B();
            y();
            return;
        }
        this.J = true;
        x();
    }

    private boolean d(long j) {
        int size = this.h.size();
        for (int i = 0; i < size; i++) {
            if (this.h.get(i).longValue() == j) {
                this.h.remove(i);
                return true;
            }
        }
        return false;
    }

    private static boolean a(String str) {
        return v.f3519a < 18 || (v.f3519a == 18 && ("OMX.SEC.avc.dec".equals(str) || "OMX.SEC.avc.dec.secure".equals(str))) || (v.f3519a == 19 && v.d.startsWith("SM-G800") && ("OMX.Exynos.avc.dec".equals(str) || "OMX.Exynos.avc.dec.secure".equals(str)));
    }

    private static boolean b(String str) {
        return v.f3519a < 24 && ("OMX.Nvidia.h264.decode".equals(str) || "OMX.Nvidia.h264.decode.secure".equals(str)) && ("flounder".equals(v.b) || "flounder_lte".equals(v.b) || "grouper".equals(v.b) || "tilapia".equals(v.b));
    }

    private static boolean a(String str, Format format) {
        return v.f3519a < 21 && format.h.isEmpty() && "OMX.MTK.VIDEO.DECODER.AVC".equals(str);
    }

    private static boolean c(String str) {
        return v.f3519a <= 17 && ("OMX.rk.video_decoder.avc".equals(str) || "OMX.allwinner.video.decoder.avc".equals(str));
    }

    private static boolean d(String str) {
        return (v.f3519a <= 23 && "OMX.google.vorbis.decoder".equals(str)) || (v.f3519a <= 19 && "hb2000".equals(v.b) && ("OMX.amlogic.avc.decoder.awesome".equals(str) || "OMX.amlogic.avc.decoder.awesome.secure".equals(str)));
    }

    private static boolean e(String str) {
        return v.f3519a == 21 && "OMX.google.aac.decoder".equals(str);
    }

    private static boolean b(String str, Format format) {
        return v.f3519a <= 18 && format.q == 1 && "OMX.MTK.AUDIO.DECODER.MP3".equals(str);
    }
}
