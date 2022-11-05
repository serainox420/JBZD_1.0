package com.google.android.exoplayer2.audio;

import android.annotation.TargetApi;
import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioTimestamp;
import android.media.PlaybackParams;
import android.os.ConditionVariable;
import android.os.SystemClock;
import android.util.Log;
import com.applovin.sdk.AppLovinErrorCodes;
import com.google.android.exoplayer2.audio.AudioProcessor;
import com.google.android.exoplayer2.util.v;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public final class AudioTrack {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f3153a = false;
    public static boolean b = false;
    private long A;
    private Method B;
    private int C;
    private long D;
    private long E;
    private int F;
    private long G;
    private long H;
    private int I;
    private int J;
    private long K;
    private long L;
    private long M;
    private float N;
    private AudioProcessor[] O;
    private ByteBuffer[] P;
    private ByteBuffer Q;
    private ByteBuffer R;
    private byte[] S;
    private int T;
    private int U;
    private boolean V;
    private boolean W;
    private int X;
    private boolean Y;
    private boolean Z;
    private long aa;
    private final com.google.android.exoplayer2.audio.b c;
    private final e d = new e();
    private final AudioProcessor[] e;
    private final d f;
    private final ConditionVariable g;
    private final long[] h;
    private final a i;
    private android.media.AudioTrack j;
    private android.media.AudioTrack k;
    private int l;
    private int m;
    private int n;
    private int o;
    private int p;
    private boolean q;
    private int r;
    private long s;
    private ByteBuffer t;
    private int u;
    private int v;
    private int w;
    private long x;
    private long y;
    private boolean z;

    /* loaded from: classes2.dex */
    public interface d {
        void a();

        void a(int i);

        void a(int i, long j, long j2);
    }

    /* loaded from: classes2.dex */
    public static final class ConfigurationException extends Exception {
        public ConfigurationException(Throwable th) {
            super(th);
        }

        public ConfigurationException(String str) {
            super(str);
        }
    }

    /* loaded from: classes2.dex */
    public static final class InitializationException extends Exception {
        public final int audioTrackState;

        public InitializationException(int i, int i2, int i3, int i4) {
            super("AudioTrack init failed: " + i + ", Config(" + i2 + ", " + i3 + ", " + i4 + ")");
            this.audioTrackState = i;
        }
    }

    /* loaded from: classes2.dex */
    public static final class WriteException extends Exception {
        public final int errorCode;

        public WriteException(int i) {
            super("AudioTrack write failed: " + i);
            this.errorCode = i;
        }
    }

    /* loaded from: classes2.dex */
    public static final class InvalidAudioTrackTimestampException extends RuntimeException {
        public InvalidAudioTrackTimestampException(String str) {
            super(str);
        }
    }

    public AudioTrack(com.google.android.exoplayer2.audio.b bVar, AudioProcessor[] audioProcessorArr, d dVar) {
        this.c = bVar;
        this.e = new AudioProcessor[audioProcessorArr.length + 2];
        this.e[0] = new h();
        this.e[1] = this.d;
        System.arraycopy(audioProcessorArr, 0, this.e, 2, audioProcessorArr.length);
        this.f = dVar;
        this.g = new ConditionVariable(true);
        if (v.f3519a >= 18) {
            try {
                this.B = android.media.AudioTrack.class.getMethod("getLatency", null);
            } catch (NoSuchMethodException e) {
            }
        }
        if (v.f3519a >= 23) {
            this.i = new c();
        } else if (v.f3519a >= 19) {
            this.i = new b();
        } else {
            this.i = new a();
        }
        this.h = new long[10];
        this.N = 1.0f;
        this.J = 0;
        this.p = 3;
        this.X = 0;
        this.U = -1;
        this.O = new AudioProcessor[0];
        this.P = new ByteBuffer[0];
    }

    public boolean a(String str) {
        return this.c != null && this.c.a(b(str));
    }

    public long a(boolean z) {
        long j;
        if (!m()) {
            return Long.MIN_VALUE;
        }
        if (this.k.getPlayState() == 3) {
            n();
        }
        long nanoTime = System.nanoTime() / 1000;
        if (this.z) {
            return b(c(((float) (nanoTime - (this.i.e() / 1000))) * this.i.g()) + this.i.f()) + this.K;
        }
        if (this.w == 0) {
            j = this.i.c() + this.K;
        } else {
            j = nanoTime + this.x + this.K;
        }
        if (!z) {
            return j - this.M;
        }
        return j;
    }

    public void a(String str, int i, int i2, int i3, int i4, int[] iArr) throws ConfigurationException {
        boolean z;
        int i5;
        int i6;
        int i7;
        boolean z2 = !"audio/raw".equals(str);
        int b2 = z2 ? b(str) : i3;
        if (z2) {
            z = false;
        } else {
            this.C = v.b(i3, i);
            this.d.a(iArr);
            ArrayList arrayList = new ArrayList();
            AudioProcessor[] audioProcessorArr = this.e;
            int length = audioProcessorArr.length;
            int i8 = 0;
            z = false;
            int i9 = i;
            while (i8 < length) {
                AudioProcessor audioProcessor = audioProcessorArr[i8];
                try {
                    z |= audioProcessor.a(i2, i9, b2);
                    if (audioProcessor.a()) {
                        arrayList.add(audioProcessor);
                        i7 = audioProcessor.b();
                        i6 = audioProcessor.c();
                    } else {
                        audioProcessor.g();
                        i6 = b2;
                        i7 = i9;
                    }
                    i8++;
                    i9 = i7;
                    b2 = i6;
                } catch (AudioProcessor.UnhandledFormatException e) {
                    throw new ConfigurationException(e);
                }
            }
            if (z) {
                int size = arrayList.size();
                this.O = (AudioProcessor[]) arrayList.toArray(new AudioProcessor[size]);
                this.P = new ByteBuffer[size];
                for (int i10 = 0; i10 < size; i10++) {
                    AudioProcessor audioProcessor2 = this.O[i10];
                    audioProcessor2.g();
                    this.P[i10] = audioProcessor2.e();
                }
            }
            i = i9;
        }
        switch (i) {
            case 1:
                i5 = 4;
                break;
            case 2:
                i5 = 12;
                break;
            case 3:
                i5 = 28;
                break;
            case 4:
                i5 = AppLovinErrorCodes.NO_FILL;
                break;
            case 5:
                i5 = 220;
                break;
            case 6:
                i5 = 252;
                break;
            case 7:
                i5 = 1276;
                break;
            case 8:
                i5 = com.google.android.exoplayer2.b.f3170a;
                break;
            default:
                throw new ConfigurationException("Unsupported channel count: " + i);
        }
        if (v.f3519a <= 23 && "foster".equals(v.b) && "NVIDIA".equals(v.c)) {
            switch (i) {
                case 3:
                case 5:
                    i5 = 252;
                    break;
                case 7:
                    i5 = com.google.android.exoplayer2.b.f3170a;
                    break;
            }
        }
        int i11 = (v.f3519a > 25 || !"fugu".equals(v.b) || !z2 || i != 1) ? i5 : 12;
        if (z || !p() || this.n != b2 || this.l != i2 || this.m != i11) {
            h();
            this.n = b2;
            this.q = z2;
            this.l = i2;
            this.m = i11;
            this.o = z2 ? b2 : 2;
            this.F = v.b(2, i);
            if (i4 != 0) {
                this.r = i4;
            } else if (z2) {
                if (this.o == 5 || this.o == 6) {
                    this.r = 20480;
                } else {
                    this.r = 49152;
                }
            } else {
                int minBufferSize = android.media.AudioTrack.getMinBufferSize(i2, i11, this.o);
                com.google.android.exoplayer2.util.a.b(minBufferSize != -2);
                int i12 = minBufferSize * 4;
                int c2 = ((int) c(250000L)) * this.F;
                int max = (int) Math.max(minBufferSize, c(750000L) * this.F);
                if (i12 >= c2) {
                    c2 = i12 > max ? max : i12;
                }
                this.r = c2;
            }
            this.s = z2 ? -9223372036854775807L : b(this.r / this.F);
        }
    }

    private void j() throws InitializationException {
        this.g.block();
        if (this.Y) {
            this.k = a(this.l, this.m, this.o, this.r, this.X);
        } else if (this.X == 0) {
            this.k = new android.media.AudioTrack(this.p, this.l, this.m, this.o, this.r, 1);
        } else {
            this.k = new android.media.AudioTrack(this.p, this.l, this.m, this.o, this.r, 1, this.X);
        }
        o();
        int audioSessionId = this.k.getAudioSessionId();
        if (f3153a && v.f3519a < 21) {
            if (this.j != null && audioSessionId != this.j.getAudioSessionId()) {
                l();
            }
            if (this.j == null) {
                this.j = new android.media.AudioTrack(this.p, 4000, 4, 2, 2, 0, audioSessionId);
            }
        }
        if (this.X != audioSessionId) {
            this.X = audioSessionId;
            this.f.a(audioSessionId);
        }
        this.i.a(this.k, t());
        k();
        this.Z = false;
    }

    public void a() {
        this.W = true;
        if (p()) {
            this.L = System.nanoTime() / 1000;
            this.k.play();
        }
    }

    public void b() {
        if (this.J == 1) {
            this.J = 2;
        }
    }

    public boolean a(ByteBuffer byteBuffer, long j) throws InitializationException, WriteException {
        com.google.android.exoplayer2.util.a.a(this.Q == null || byteBuffer == this.Q);
        if (!p()) {
            j();
            if (this.W) {
                a();
            }
        }
        if (t()) {
            if (this.k.getPlayState() == 2) {
                this.Z = false;
                return false;
            } else if (this.k.getPlayState() == 1 && this.i.b() != 0) {
                return false;
            }
        }
        boolean z = this.Z;
        this.Z = e();
        if (z && !this.Z && this.k.getPlayState() != 1) {
            this.f.a(this.r, com.google.android.exoplayer2.b.a(this.s), SystemClock.elapsedRealtime() - this.aa);
        }
        if (this.Q == null) {
            if (!byteBuffer.hasRemaining()) {
                return true;
            }
            if (this.q && this.I == 0) {
                this.I = a(this.o, byteBuffer);
            }
            if (this.J == 0) {
                this.K = Math.max(0L, j);
                this.J = 1;
            } else {
                long b2 = this.K + b(q());
                if (this.J == 1 && Math.abs(b2 - j) > 200000) {
                    Log.e("AudioTrack", "Discontinuity detected [expected " + b2 + ", got " + j + "]");
                    this.J = 2;
                }
                if (this.J == 2) {
                    this.K = (j - b2) + this.K;
                    this.J = 1;
                    this.f.a();
                }
            }
            if (this.q) {
                this.E += this.I;
            } else {
                this.D += byteBuffer.remaining();
            }
            this.Q = byteBuffer;
        }
        if (this.q) {
            b(this.Q, j);
        } else {
            a(j);
        }
        if (!this.Q.hasRemaining()) {
            this.Q = null;
            return true;
        }
        return false;
    }

    private void a(long j) throws WriteException {
        ByteBuffer byteBuffer;
        int length = this.O.length;
        int i = length;
        while (i >= 0) {
            if (i > 0) {
                byteBuffer = this.P[i - 1];
            } else {
                byteBuffer = this.Q != null ? this.Q : AudioProcessor.f3152a;
            }
            if (i == length) {
                b(byteBuffer, j);
            } else {
                AudioProcessor audioProcessor = this.O[i];
                audioProcessor.a(byteBuffer);
                ByteBuffer e = audioProcessor.e();
                this.P[i] = e;
                if (e.hasRemaining()) {
                    i++;
                }
            }
            if (!byteBuffer.hasRemaining()) {
                i--;
            } else {
                return;
            }
        }
    }

    private boolean b(ByteBuffer byteBuffer, long j) throws WriteException {
        int a2;
        if (!byteBuffer.hasRemaining()) {
            return true;
        }
        if (this.R != null) {
            com.google.android.exoplayer2.util.a.a(this.R == byteBuffer);
        } else {
            this.R = byteBuffer;
            if (v.f3519a < 21) {
                int remaining = byteBuffer.remaining();
                if (this.S == null || this.S.length < remaining) {
                    this.S = new byte[remaining];
                }
                int position = byteBuffer.position();
                byteBuffer.get(this.S, 0, remaining);
                byteBuffer.position(position);
                this.T = 0;
            }
        }
        int remaining2 = byteBuffer.remaining();
        if (v.f3519a < 21) {
            int b2 = this.r - ((int) (this.G - (this.i.b() * this.F)));
            if (b2 > 0) {
                a2 = this.k.write(this.S, this.T, Math.min(remaining2, b2));
                if (a2 > 0) {
                    this.T += a2;
                    byteBuffer.position(byteBuffer.position() + a2);
                }
            } else {
                a2 = 0;
            }
        } else if (this.Y) {
            com.google.android.exoplayer2.util.a.b(j != -9223372036854775807L);
            a2 = a(this.k, byteBuffer, remaining2, j);
        } else {
            a2 = a(this.k, byteBuffer, remaining2);
        }
        this.aa = SystemClock.elapsedRealtime();
        if (a2 < 0) {
            throw new WriteException(a2);
        }
        if (!this.q) {
            this.G += a2;
        }
        if (a2 != remaining2) {
            return false;
        }
        if (this.q) {
            this.H += this.I;
        }
        this.R = null;
        return true;
    }

    public void c() throws WriteException {
        boolean z;
        if (!this.V && p()) {
            if (this.U == -1) {
                this.U = this.q ? this.O.length : 0;
                z = true;
            } else {
                z = false;
            }
            while (this.U < this.O.length) {
                AudioProcessor audioProcessor = this.O[this.U];
                if (z) {
                    audioProcessor.d();
                }
                a(-9223372036854775807L);
                if (audioProcessor.f()) {
                    this.U++;
                    z = true;
                } else {
                    return;
                }
            }
            if (this.R != null) {
                b(this.R, -9223372036854775807L);
                if (this.R != null) {
                    return;
                }
            }
            this.i.a(r());
            this.u = 0;
            this.V = true;
        }
    }

    public boolean d() {
        return !p() || (this.V && !e());
    }

    public boolean e() {
        return p() && (r() > this.i.b() || u());
    }

    public void a(PlaybackParams playbackParams) {
        this.i.a(playbackParams);
    }

    public void a(int i) {
        if (this.p != i) {
            this.p = i;
            if (!this.Y) {
                h();
                this.X = 0;
            }
        }
    }

    public void b(int i) {
        com.google.android.exoplayer2.util.a.b(v.f3519a >= 21);
        if (!this.Y || this.X != i) {
            this.Y = true;
            this.X = i;
            h();
        }
    }

    public void f() {
        if (this.Y) {
            this.Y = false;
            this.X = 0;
            h();
        }
    }

    public void a(float f) {
        if (this.N != f) {
            this.N = f;
            k();
        }
    }

    private void k() {
        if (p()) {
            if (v.f3519a >= 21) {
                a(this.k, this.N);
            } else {
                b(this.k, this.N);
            }
        }
    }

    public void g() {
        this.W = false;
        if (p()) {
            s();
            this.i.a();
        }
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [com.google.android.exoplayer2.audio.AudioTrack$1] */
    public void h() {
        if (p()) {
            this.D = 0L;
            this.E = 0L;
            this.G = 0L;
            this.H = 0L;
            this.I = 0;
            this.Q = null;
            this.R = null;
            for (int i = 0; i < this.O.length; i++) {
                AudioProcessor audioProcessor = this.O[i];
                audioProcessor.g();
                this.P[i] = audioProcessor.e();
            }
            this.V = false;
            this.U = -1;
            this.t = null;
            this.u = 0;
            this.J = 0;
            this.M = 0L;
            s();
            if (this.k.getPlayState() == 3) {
                this.k.pause();
            }
            final android.media.AudioTrack audioTrack = this.k;
            this.k = null;
            this.i.a(null, false);
            this.g.close();
            new Thread() { // from class: com.google.android.exoplayer2.audio.AudioTrack.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    try {
                        audioTrack.flush();
                        audioTrack.release();
                    } finally {
                        AudioTrack.this.g.open();
                    }
                }
            }.start();
        }
    }

    public void i() {
        h();
        l();
        for (AudioProcessor audioProcessor : this.e) {
            audioProcessor.h();
        }
        this.X = 0;
        this.W = false;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.exoplayer2.audio.AudioTrack$2] */
    private void l() {
        if (this.j != null) {
            final android.media.AudioTrack audioTrack = this.j;
            this.j = null;
            new Thread() { // from class: com.google.android.exoplayer2.audio.AudioTrack.2
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    audioTrack.release();
                }
            }.start();
        }
    }

    private boolean m() {
        return p() && this.J != 0;
    }

    private void n() {
        long c2 = this.i.c();
        if (c2 != 0) {
            long nanoTime = System.nanoTime() / 1000;
            if (nanoTime - this.y >= NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS) {
                this.h[this.v] = c2 - nanoTime;
                this.v = (this.v + 1) % 10;
                if (this.w < 10) {
                    this.w++;
                }
                this.y = nanoTime;
                this.x = 0L;
                for (int i = 0; i < this.w; i++) {
                    this.x += this.h[i] / this.w;
                }
            }
            if (!t() && nanoTime - this.A >= 500000) {
                this.z = this.i.d();
                if (this.z) {
                    long e = this.i.e() / 1000;
                    long f = this.i.f();
                    if (e < this.L) {
                        this.z = false;
                    } else if (Math.abs(e - nanoTime) > 5000000) {
                        String str = "Spurious audio timestamp (system clock mismatch): " + f + ", " + e + ", " + nanoTime + ", " + c2;
                        if (b) {
                            throw new InvalidAudioTrackTimestampException(str);
                        }
                        Log.w("AudioTrack", str);
                        this.z = false;
                    } else if (Math.abs(b(f) - c2) > 5000000) {
                        String str2 = "Spurious audio timestamp (frame position mismatch): " + f + ", " + e + ", " + nanoTime + ", " + c2;
                        if (b) {
                            throw new InvalidAudioTrackTimestampException(str2);
                        }
                        Log.w("AudioTrack", str2);
                        this.z = false;
                    }
                }
                if (this.B != null && !this.q) {
                    try {
                        this.M = (((Integer) this.B.invoke(this.k, null)).intValue() * 1000) - this.s;
                        this.M = Math.max(this.M, 0L);
                        if (this.M > 5000000) {
                            Log.w("AudioTrack", "Ignoring impossibly large audio latency: " + this.M);
                            this.M = 0L;
                        }
                    } catch (Exception e2) {
                        this.B = null;
                    }
                }
                this.A = nanoTime;
            }
        }
    }

    private void o() throws InitializationException {
        int state = this.k.getState();
        if (state == 1) {
            return;
        }
        try {
            this.k.release();
        } catch (Exception e) {
        } finally {
            this.k = null;
        }
        throw new InitializationException(state, this.l, this.m, this.r);
    }

    private boolean p() {
        return this.k != null;
    }

    private long b(long j) {
        return (1000000 * j) / this.l;
    }

    private long c(long j) {
        return (this.l * j) / 1000000;
    }

    private long q() {
        return this.q ? this.E : this.D / this.C;
    }

    private long r() {
        return this.q ? this.H : this.G / this.F;
    }

    private void s() {
        this.x = 0L;
        this.w = 0;
        this.v = 0;
        this.y = 0L;
        this.z = false;
        this.A = 0L;
    }

    private boolean t() {
        return v.f3519a < 23 && (this.o == 5 || this.o == 6);
    }

    private boolean u() {
        return t() && this.k.getPlayState() == 2 && this.k.getPlaybackHeadPosition() == 0;
    }

    @TargetApi(21)
    private static android.media.AudioTrack a(int i, int i2, int i3, int i4, int i5) {
        return new android.media.AudioTrack(new AudioAttributes.Builder().setUsage(1).setContentType(3).setFlags(16).build(), new AudioFormat.Builder().setChannelMask(i2).setEncoding(i3).setSampleRate(i).build(), i4, 1, i5);
    }

    private static int b(String str) {
        char c2 = 65535;
        switch (str.hashCode()) {
            case -1095064472:
                if (str.equals("audio/vnd.dts")) {
                    c2 = 2;
                    break;
                }
                break;
            case 187078296:
                if (str.equals("audio/ac3")) {
                    c2 = 0;
                    break;
                }
                break;
            case 1504578661:
                if (str.equals("audio/eac3")) {
                    c2 = 1;
                    break;
                }
                break;
            case 1505942594:
                if (str.equals("audio/vnd.dts.hd")) {
                    c2 = 3;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                return 5;
            case 1:
                return 6;
            case 2:
                return 7;
            case 3:
                return 8;
            default:
                return 0;
        }
    }

    private static int a(int i, ByteBuffer byteBuffer) {
        if (i == 7 || i == 8) {
            return f.a(byteBuffer);
        }
        if (i == 5) {
            return com.google.android.exoplayer2.audio.a.a();
        }
        if (i == 6) {
            return com.google.android.exoplayer2.audio.a.a(byteBuffer);
        }
        throw new IllegalStateException("Unexpected audio encoding: " + i);
    }

    @TargetApi(21)
    private static int a(android.media.AudioTrack audioTrack, ByteBuffer byteBuffer, int i) {
        return audioTrack.write(byteBuffer, i, 1);
    }

    @TargetApi(21)
    private int a(android.media.AudioTrack audioTrack, ByteBuffer byteBuffer, int i, long j) {
        if (this.t == null) {
            this.t = ByteBuffer.allocate(16);
            this.t.order(ByteOrder.BIG_ENDIAN);
            this.t.putInt(1431633921);
        }
        if (this.u == 0) {
            this.t.putInt(4, i);
            this.t.putLong(8, 1000 * j);
            this.t.position(0);
            this.u = i;
        }
        int remaining = this.t.remaining();
        if (remaining > 0) {
            int write = audioTrack.write(this.t, remaining, 1);
            if (write < 0) {
                this.u = 0;
                return write;
            } else if (write < remaining) {
                return 0;
            }
        }
        int a2 = a(audioTrack, byteBuffer, i);
        if (a2 < 0) {
            this.u = 0;
            return a2;
        }
        this.u -= a2;
        return a2;
    }

    @TargetApi(21)
    private static void a(android.media.AudioTrack audioTrack, float f) {
        audioTrack.setVolume(f);
    }

    private static void b(android.media.AudioTrack audioTrack, float f) {
        audioTrack.setStereoVolume(f, f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        protected android.media.AudioTrack f3156a;
        private boolean b;
        private int c;
        private long d;
        private long e;
        private long f;
        private long g;
        private long h;
        private long i;

        private a() {
        }

        public void a(android.media.AudioTrack audioTrack, boolean z) {
            this.f3156a = audioTrack;
            this.b = z;
            this.g = -9223372036854775807L;
            this.d = 0L;
            this.e = 0L;
            this.f = 0L;
            if (audioTrack != null) {
                this.c = audioTrack.getSampleRate();
            }
        }

        public void a(long j) {
            this.h = b();
            this.g = SystemClock.elapsedRealtime() * 1000;
            this.i = j;
            this.f3156a.stop();
        }

        public void a() {
            if (this.g == -9223372036854775807L) {
                this.f3156a.pause();
            }
        }

        public long b() {
            if (this.g != -9223372036854775807L) {
                return Math.min(this.i, ((((SystemClock.elapsedRealtime() * 1000) - this.g) * this.c) / 1000000) + this.h);
            }
            int playState = this.f3156a.getPlayState();
            if (playState == 1) {
                return 0L;
            }
            long playbackHeadPosition = 4294967295L & this.f3156a.getPlaybackHeadPosition();
            if (this.b) {
                if (playState == 2 && playbackHeadPosition == 0) {
                    this.f = this.d;
                }
                playbackHeadPosition += this.f;
            }
            if (this.d > playbackHeadPosition) {
                this.e++;
            }
            this.d = playbackHeadPosition;
            return playbackHeadPosition + (this.e << 32);
        }

        public long c() {
            return (b() * 1000000) / this.c;
        }

        public boolean d() {
            return false;
        }

        public long e() {
            throw new UnsupportedOperationException();
        }

        public long f() {
            throw new UnsupportedOperationException();
        }

        public void a(PlaybackParams playbackParams) {
            throw new UnsupportedOperationException();
        }

        public float g() {
            return 1.0f;
        }
    }

    @TargetApi(19)
    /* loaded from: classes2.dex */
    private static class b extends a {
        private final AudioTimestamp b;
        private long c;
        private long d;
        private long e;

        public b() {
            super();
            this.b = new AudioTimestamp();
        }

        @Override // com.google.android.exoplayer2.audio.AudioTrack.a
        public void a(android.media.AudioTrack audioTrack, boolean z) {
            super.a(audioTrack, z);
            this.c = 0L;
            this.d = 0L;
            this.e = 0L;
        }

        @Override // com.google.android.exoplayer2.audio.AudioTrack.a
        public boolean d() {
            boolean timestamp = this.f3156a.getTimestamp(this.b);
            if (timestamp) {
                long j = this.b.framePosition;
                if (this.d > j) {
                    this.c++;
                }
                this.d = j;
                this.e = j + (this.c << 32);
            }
            return timestamp;
        }

        @Override // com.google.android.exoplayer2.audio.AudioTrack.a
        public long e() {
            return this.b.nanoTime;
        }

        @Override // com.google.android.exoplayer2.audio.AudioTrack.a
        public long f() {
            return this.e;
        }
    }

    @TargetApi(23)
    /* loaded from: classes2.dex */
    private static class c extends b {
        private PlaybackParams b;
        private float c = 1.0f;

        @Override // com.google.android.exoplayer2.audio.AudioTrack.b, com.google.android.exoplayer2.audio.AudioTrack.a
        public void a(android.media.AudioTrack audioTrack, boolean z) {
            super.a(audioTrack, z);
            h();
        }

        @Override // com.google.android.exoplayer2.audio.AudioTrack.a
        public void a(PlaybackParams playbackParams) {
            if (playbackParams == null) {
                playbackParams = new PlaybackParams();
            }
            PlaybackParams allowDefaults = playbackParams.allowDefaults();
            this.b = allowDefaults;
            this.c = allowDefaults.getSpeed();
            h();
        }

        @Override // com.google.android.exoplayer2.audio.AudioTrack.a
        public float g() {
            return this.c;
        }

        private void h() {
            if (this.f3156a != null && this.b != null) {
                this.f3156a.setPlaybackParams(this.b);
            }
        }
    }
}
