package com.google.android.exoplayer2.audio;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.media.PlaybackParams;
import android.os.Handler;
import android.view.Surface;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.audio.AudioTrack;
import com.google.android.exoplayer2.audio.d;
import com.google.android.exoplayer2.mediacodec.MediaCodecRenderer;
import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
import com.google.android.exoplayer2.util.i;
import com.google.android.exoplayer2.util.v;
import java.nio.ByteBuffer;
/* compiled from: MediaCodecAudioRenderer.java */
@TargetApi(16)
/* loaded from: classes2.dex */
public class g extends MediaCodecRenderer implements com.google.android.exoplayer2.util.h {
    private final d.a b;
    private final AudioTrack c;
    private boolean d;
    private boolean e;
    private MediaFormat f;
    private int g;
    private int h;
    private long i;
    private boolean j;

    public g(com.google.android.exoplayer2.mediacodec.b bVar, com.google.android.exoplayer2.drm.a<com.google.android.exoplayer2.drm.c> aVar, boolean z, Handler handler, d dVar, b bVar2, AudioProcessor... audioProcessorArr) {
        super(1, bVar, aVar, z);
        this.c = new AudioTrack(bVar2, audioProcessorArr, new a());
        this.b = new d.a(handler, dVar);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected int a(com.google.android.exoplayer2.mediacodec.b bVar, Format format) throws MediaCodecUtil.DecoderQueryException {
        boolean z = false;
        String str = format.f;
        if (!i.a(str)) {
            return 0;
        }
        int i = v.f3519a >= 21 ? 16 : 0;
        if (a(str) && bVar.a() != null) {
            return i | 4 | 3;
        }
        com.google.android.exoplayer2.mediacodec.a a2 = bVar.a(str, false);
        if (a2 == null) {
            return 1;
        }
        if (v.f3519a < 21 || ((format.r == -1 || a2.a(format.r)) && (format.q == -1 || a2.b(format.q)))) {
            z = true;
        }
        return (z ? 3 : 2) | i | 4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public com.google.android.exoplayer2.mediacodec.a a(com.google.android.exoplayer2.mediacodec.b bVar, Format format, boolean z) throws MediaCodecUtil.DecoderQueryException {
        com.google.android.exoplayer2.mediacodec.a a2;
        if (a(format.f) && (a2 = bVar.a()) != null) {
            this.d = true;
            return a2;
        }
        this.d = false;
        return super.a(bVar, format, z);
    }

    protected boolean a(String str) {
        return this.c.a(str);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void a(com.google.android.exoplayer2.mediacodec.a aVar, MediaCodec mediaCodec, Format format, MediaCrypto mediaCrypto) {
        this.e = b(aVar.f3307a);
        if (this.d) {
            this.f = format.b();
            this.f.setString("mime", "audio/raw");
            mediaCodec.configure(this.f, (Surface) null, mediaCrypto, 0);
            this.f.setString("mime", format.f);
            return;
        }
        mediaCodec.configure(format.b(), (Surface) null, mediaCrypto, 0);
        this.f = null;
    }

    @Override // com.google.android.exoplayer2.a, com.google.android.exoplayer2.j
    public com.google.android.exoplayer2.util.h c() {
        return this;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void a(String str, long j, long j2) {
        this.b.a(str, j, j2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public void b(Format format) throws ExoPlaybackException {
        super.b(format);
        this.b.a(format);
        this.g = "audio/raw".equals(format.f) ? format.s : 2;
        this.h = format.q;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void a(MediaCodec mediaCodec, MediaFormat mediaFormat) throws ExoPlaybackException {
        int[] iArr;
        boolean z = this.f != null;
        String string = z ? this.f.getString("mime") : "audio/raw";
        if (z) {
            mediaFormat = this.f;
        }
        int integer = mediaFormat.getInteger("channel-count");
        int integer2 = mediaFormat.getInteger("sample-rate");
        if (this.e && integer == 6 && this.h < 6) {
            iArr = new int[this.h];
            for (int i = 0; i < this.h; i++) {
                iArr[i] = i;
            }
        } else {
            iArr = null;
        }
        try {
            this.c.a(string, integer, integer2, this.g, 0, iArr);
        } catch (AudioTrack.ConfigurationException e) {
            throw ExoPlaybackException.createForRenderer(e, r());
        }
    }

    protected void b(int i) {
    }

    protected void v() {
    }

    protected void a(int i, long j, long j2) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.a
    public void a(boolean z) throws ExoPlaybackException {
        super.a(z);
        this.b.a(this.f3303a);
        int i = q().b;
        if (i != 0) {
            this.c.b(i);
        } else {
            this.c.f();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.a
    public void a(long j, boolean z) throws ExoPlaybackException {
        super.a(j, z);
        this.c.h();
        this.i = j;
        this.j = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.a
    public void n() {
        super.n();
        this.c.a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.a
    public void o() {
        this.c.g();
        super.o();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.a
    public void p() {
        try {
            this.c.i();
            try {
                super.p();
            } finally {
            }
        } catch (Throwable th) {
            try {
                super.p();
                throw th;
            } finally {
            }
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.j
    public boolean u() {
        return super.u() && this.c.d();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.j
    public boolean t() {
        return this.c.e() || super.t();
    }

    @Override // com.google.android.exoplayer2.util.h
    public long w() {
        long a2 = this.c.a(u());
        if (a2 != Long.MIN_VALUE) {
            if (!this.j) {
                a2 = Math.max(this.i, a2);
            }
            this.i = a2;
            this.j = false;
        }
        return this.i;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected boolean a(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z) throws ExoPlaybackException {
        if (this.d && (i2 & 2) != 0) {
            mediaCodec.releaseOutputBuffer(i, false);
            return true;
        } else if (z) {
            mediaCodec.releaseOutputBuffer(i, false);
            this.f3303a.e++;
            this.c.b();
            return true;
        } else {
            try {
                if (!this.c.a(byteBuffer, j3)) {
                    return false;
                }
                mediaCodec.releaseOutputBuffer(i, false);
                this.f3303a.d++;
                return true;
            } catch (AudioTrack.InitializationException | AudioTrack.WriteException e) {
                throw ExoPlaybackException.createForRenderer(e, r());
            }
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void x() throws ExoPlaybackException {
        try {
            this.c.c();
        } catch (AudioTrack.WriteException e) {
            throw ExoPlaybackException.createForRenderer(e, r());
        }
    }

    @Override // com.google.android.exoplayer2.a, com.google.android.exoplayer2.d.b
    public void a(int i, Object obj) throws ExoPlaybackException {
        switch (i) {
            case 2:
                this.c.a(((Float) obj).floatValue());
                return;
            case 3:
                this.c.a((PlaybackParams) obj);
                return;
            case 4:
                this.c.a(((Integer) obj).intValue());
                return;
            default:
                super.a(i, obj);
                return;
        }
    }

    private static boolean b(String str) {
        return v.f3519a < 24 && "OMX.SEC.aac.dec".equals(str) && "samsung".equals(v.c) && (v.b.startsWith("zeroflte") || v.b.startsWith("herolte") || v.b.startsWith("heroqlte"));
    }

    /* compiled from: MediaCodecAudioRenderer.java */
    /* loaded from: classes2.dex */
    private final class a implements AudioTrack.d {
        private a() {
        }

        @Override // com.google.android.exoplayer2.audio.AudioTrack.d
        public void a(int i) {
            g.this.b.a(i);
            g.this.b(i);
        }

        @Override // com.google.android.exoplayer2.audio.AudioTrack.d
        public void a() {
            g.this.v();
            g.this.j = true;
        }

        @Override // com.google.android.exoplayer2.audio.AudioTrack.d
        public void a(int i, long j, long j2) {
            g.this.b.a(i, j, j2);
            g.this.a(i, j, j2);
        }
    }
}
