package com.google.android.exoplayer2;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.util.Log;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import com.google.android.exoplayer2.audio.AudioProcessor;
import com.google.android.exoplayer2.d;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.d;
import com.google.android.exoplayer2.text.j;
import java.util.ArrayList;
import java.util.List;
/* compiled from: SimpleExoPlayer.java */
@TargetApi(16)
/* loaded from: classes2.dex */
public class m implements d {

    /* renamed from: a  reason: collision with root package name */
    private final d f3301a;
    private final j[] b;
    private final int e;
    private final int f;
    private Format g;
    private Format h;
    private Surface i;
    private boolean j;
    private int k;
    private SurfaceHolder l;
    private TextureView m;
    private j.a n;
    private d.a o;
    private b p;
    private com.google.android.exoplayer2.audio.d q;
    private com.google.android.exoplayer2.c.e r;
    private com.google.android.exoplayer2.a.d s;
    private com.google.android.exoplayer2.a.d t;
    private int u;
    private int v;
    private float w;
    private final Handler d = new Handler();
    private final a c = new a();

    /* compiled from: SimpleExoPlayer.java */
    /* loaded from: classes2.dex */
    public interface b {
        void onRenderedFirstFrame();

        void onVideoSizeChanged(int i, int i2, int i3, float f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public m(Context context, com.google.android.exoplayer2.b.h hVar, i iVar, com.google.android.exoplayer2.drm.a<com.google.android.exoplayer2.drm.c> aVar, int i, long j) {
        ArrayList<j> arrayList = new ArrayList<>();
        a(context, this.d, aVar, i, j, arrayList);
        this.b = (j[]) arrayList.toArray(new j[arrayList.size()]);
        int i2 = 0;
        int i3 = 0;
        for (j jVar : this.b) {
            switch (jVar.a()) {
                case 1:
                    i2++;
                    break;
                case 2:
                    i3++;
                    break;
            }
        }
        this.e = i3;
        this.f = i2;
        this.w = 1.0f;
        this.u = 0;
        this.v = 3;
        this.k = 1;
        this.f3301a = new f(this.b, hVar, iVar);
    }

    public void a(Surface surface) {
        o();
        a(surface, false);
    }

    public void a(SurfaceHolder surfaceHolder) {
        o();
        this.l = surfaceHolder;
        if (surfaceHolder == null) {
            a((Surface) null, false);
            return;
        }
        a(surfaceHolder.getSurface(), false);
        surfaceHolder.addCallback(this.c);
    }

    public void a(SurfaceView surfaceView) {
        a(surfaceView.getHolder());
    }

    public void a(TextureView textureView) {
        Surface surface = null;
        o();
        this.m = textureView;
        if (textureView == null) {
            a((Surface) null, true);
            return;
        }
        if (textureView.getSurfaceTextureListener() != null) {
            Log.w("SimpleExoPlayer", "Replacing existing SurfaceTextureListener.");
        }
        SurfaceTexture surfaceTexture = textureView.getSurfaceTexture();
        if (surfaceTexture != null) {
            surface = new Surface(surfaceTexture);
        }
        a(surface, true);
        textureView.setSurfaceTextureListener(this.c);
    }

    public void a(float f) {
        int i;
        this.w = f;
        d.c[] cVarArr = new d.c[this.f];
        j[] jVarArr = this.b;
        int length = jVarArr.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            j jVar = jVarArr[i2];
            if (jVar.a() == 1) {
                i = i3 + 1;
                cVarArr[i3] = new d.c(jVar, 2, Float.valueOf(f));
            } else {
                i = i3;
            }
            i2++;
            i3 = i;
        }
        this.f3301a.a(cVarArr);
    }

    public int m() {
        return this.u;
    }

    public void a(b bVar) {
        this.p = bVar;
    }

    public void a(j.a aVar) {
        this.n = aVar;
    }

    @Override // com.google.android.exoplayer2.d
    public void a(d.a aVar) {
        this.f3301a.a(aVar);
    }

    @Override // com.google.android.exoplayer2.d
    public void b(d.a aVar) {
        this.f3301a.b(aVar);
    }

    @Override // com.google.android.exoplayer2.d
    public int a() {
        return this.f3301a.a();
    }

    @Override // com.google.android.exoplayer2.d
    public void a(com.google.android.exoplayer2.source.g gVar) {
        this.f3301a.a(gVar);
    }

    @Override // com.google.android.exoplayer2.d
    public void a(boolean z) {
        this.f3301a.a(z);
    }

    @Override // com.google.android.exoplayer2.d
    public boolean b() {
        return this.f3301a.b();
    }

    @Override // com.google.android.exoplayer2.d
    public void c() {
        this.f3301a.c();
    }

    @Override // com.google.android.exoplayer2.d
    public void a(long j) {
        this.f3301a.a(j);
    }

    @Override // com.google.android.exoplayer2.d
    public void a(int i, long j) {
        this.f3301a.a(i, j);
    }

    @Override // com.google.android.exoplayer2.d
    public void d() {
        this.f3301a.d();
    }

    @Override // com.google.android.exoplayer2.d
    public void e() {
        this.f3301a.e();
        o();
        if (this.i != null) {
            if (this.j) {
                this.i.release();
            }
            this.i = null;
        }
    }

    @Override // com.google.android.exoplayer2.d
    public void a(d.c... cVarArr) {
        this.f3301a.a(cVarArr);
    }

    @Override // com.google.android.exoplayer2.d
    public void b(d.c... cVarArr) {
        this.f3301a.b(cVarArr);
    }

    @Override // com.google.android.exoplayer2.d
    public int a(int i) {
        return this.f3301a.a(i);
    }

    @Override // com.google.android.exoplayer2.d
    public com.google.android.exoplayer2.b.g f() {
        return this.f3301a.f();
    }

    @Override // com.google.android.exoplayer2.d
    public n g() {
        return this.f3301a.g();
    }

    @Override // com.google.android.exoplayer2.d
    public int h() {
        return this.f3301a.h();
    }

    @Override // com.google.android.exoplayer2.d
    public long i() {
        return this.f3301a.i();
    }

    @Override // com.google.android.exoplayer2.d
    public long j() {
        return this.f3301a.j();
    }

    @Override // com.google.android.exoplayer2.d
    public long k() {
        return this.f3301a.k();
    }

    @Override // com.google.android.exoplayer2.d
    public int l() {
        return this.f3301a.l();
    }

    private void a(Context context, Handler handler, com.google.android.exoplayer2.drm.a<com.google.android.exoplayer2.drm.c> aVar, int i, long j, ArrayList<j> arrayList) {
        a(context, handler, aVar, i, this.c, j, arrayList);
        a(context, handler, aVar, i, this.c, n(), arrayList);
        a(context, handler, i, (j.a) this.c, arrayList);
        a(context, handler, i, (d.a) this.c, arrayList);
        a(context, handler, i, arrayList);
    }

    protected void a(Context context, Handler handler, com.google.android.exoplayer2.drm.a<com.google.android.exoplayer2.drm.c> aVar, int i, com.google.android.exoplayer2.c.e eVar, long j, ArrayList<j> arrayList) {
        arrayList.add(new com.google.android.exoplayer2.c.c(context, com.google.android.exoplayer2.mediacodec.b.f3308a, j, aVar, false, handler, eVar, 50));
        if (i != 0) {
            int size = arrayList.size();
            int i2 = i == 2 ? size - 1 : size;
            try {
                int i3 = i2 + 1;
                arrayList.add(i2, (j) Class.forName("com.google.android.exoplayer2.ext.vp9.LibvpxVideoRenderer").getConstructor(Boolean.TYPE, Long.TYPE, Handler.class, com.google.android.exoplayer2.c.e.class, Integer.TYPE).newInstance(true, Long.valueOf(j), handler, this.c, 50));
                Log.i("SimpleExoPlayer", "Loaded LibvpxVideoRenderer.");
            } catch (ClassNotFoundException e) {
            } catch (Exception e2) {
                throw new RuntimeException(e2);
            }
        }
    }

    protected void a(Context context, Handler handler, com.google.android.exoplayer2.drm.a<com.google.android.exoplayer2.drm.c> aVar, int i, com.google.android.exoplayer2.audio.d dVar, AudioProcessor[] audioProcessorArr, ArrayList<j> arrayList) {
        int i2;
        int i3;
        int i4;
        int i5;
        arrayList.add(new com.google.android.exoplayer2.audio.g(com.google.android.exoplayer2.mediacodec.b.f3308a, aVar, true, handler, dVar, com.google.android.exoplayer2.audio.b.a(context), audioProcessorArr));
        if (i != 0) {
            int size = arrayList.size();
            if (i == 2) {
                size--;
            }
            try {
                try {
                    int i6 = size + 1;
                    try {
                        arrayList.add(size, (j) Class.forName("com.google.android.exoplayer2.ext.opus.LibopusAudioRenderer").getConstructor(Handler.class, com.google.android.exoplayer2.audio.d.class, AudioProcessor[].class).newInstance(handler, this.c, audioProcessorArr));
                        Log.i("SimpleExoPlayer", "Loaded LibopusAudioRenderer.");
                        i3 = i6;
                    } catch (ClassNotFoundException e) {
                        i2 = i6;
                        i3 = i2;
                        try {
                            i5 = i3 + 1;
                            try {
                                arrayList.add(i3, (j) Class.forName("com.google.android.exoplayer2.ext.flac.LibflacAudioRenderer").getConstructor(Handler.class, com.google.android.exoplayer2.audio.d.class, AudioProcessor[].class).newInstance(handler, this.c, audioProcessorArr));
                                Log.i("SimpleExoPlayer", "Loaded LibflacAudioRenderer.");
                            } catch (ClassNotFoundException e2) {
                                i4 = i5;
                                i5 = i4;
                                int i7 = i5 + 1;
                                arrayList.add(i5, (j) Class.forName("com.google.android.exoplayer2.ext.ffmpeg.FfmpegAudioRenderer").getConstructor(Handler.class, com.google.android.exoplayer2.audio.d.class, AudioProcessor[].class).newInstance(handler, this.c, audioProcessorArr));
                                Log.i("SimpleExoPlayer", "Loaded FfmpegAudioRenderer.");
                            }
                        } catch (ClassNotFoundException e3) {
                            i4 = i3;
                        }
                        int i72 = i5 + 1;
                        arrayList.add(i5, (j) Class.forName("com.google.android.exoplayer2.ext.ffmpeg.FfmpegAudioRenderer").getConstructor(Handler.class, com.google.android.exoplayer2.audio.d.class, AudioProcessor[].class).newInstance(handler, this.c, audioProcessorArr));
                        Log.i("SimpleExoPlayer", "Loaded FfmpegAudioRenderer.");
                    }
                } catch (Exception e4) {
                    throw new RuntimeException(e4);
                }
            } catch (ClassNotFoundException e5) {
                i2 = size;
            }
            try {
                i5 = i3 + 1;
                arrayList.add(i3, (j) Class.forName("com.google.android.exoplayer2.ext.flac.LibflacAudioRenderer").getConstructor(Handler.class, com.google.android.exoplayer2.audio.d.class, AudioProcessor[].class).newInstance(handler, this.c, audioProcessorArr));
                Log.i("SimpleExoPlayer", "Loaded LibflacAudioRenderer.");
                try {
                    int i722 = i5 + 1;
                    arrayList.add(i5, (j) Class.forName("com.google.android.exoplayer2.ext.ffmpeg.FfmpegAudioRenderer").getConstructor(Handler.class, com.google.android.exoplayer2.audio.d.class, AudioProcessor[].class).newInstance(handler, this.c, audioProcessorArr));
                    Log.i("SimpleExoPlayer", "Loaded FfmpegAudioRenderer.");
                } catch (ClassNotFoundException e6) {
                } catch (Exception e7) {
                    throw new RuntimeException(e7);
                }
            } catch (Exception e8) {
                throw new RuntimeException(e8);
            }
        }
    }

    protected void a(Context context, Handler handler, int i, j.a aVar, ArrayList<j> arrayList) {
        arrayList.add(new com.google.android.exoplayer2.text.j(aVar, handler.getLooper()));
    }

    protected void a(Context context, Handler handler, int i, d.a aVar, ArrayList<j> arrayList) {
        arrayList.add(new com.google.android.exoplayer2.metadata.d(aVar, handler.getLooper()));
    }

    protected void a(Context context, Handler handler, int i, ArrayList<j> arrayList) {
    }

    protected AudioProcessor[] n() {
        return new AudioProcessor[0];
    }

    private void o() {
        if (this.m != null) {
            if (this.m.getSurfaceTextureListener() != this.c) {
                Log.w("SimpleExoPlayer", "SurfaceTextureListener already unset or replaced.");
            } else {
                this.m.setSurfaceTextureListener(null);
            }
            this.m = null;
        }
        if (this.l != null) {
            this.l.removeCallback(this.c);
            this.l = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Surface surface, boolean z) {
        int i;
        d.c[] cVarArr = new d.c[this.e];
        j[] jVarArr = this.b;
        int length = jVarArr.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            j jVar = jVarArr[i2];
            if (jVar.a() == 2) {
                i = i3 + 1;
                cVarArr[i3] = new d.c(jVar, 1, surface);
            } else {
                i = i3;
            }
            i2++;
            i3 = i;
        }
        if (this.i != null && this.i != surface) {
            if (this.j) {
                this.i.release();
            }
            this.f3301a.b(cVarArr);
        } else {
            this.f3301a.a(cVarArr);
        }
        this.i = surface;
        this.j = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SimpleExoPlayer.java */
    /* loaded from: classes2.dex */
    public final class a implements SurfaceHolder.Callback, TextureView.SurfaceTextureListener, com.google.android.exoplayer2.audio.d, com.google.android.exoplayer2.c.e, d.a, j.a {
        private a() {
        }

        @Override // com.google.android.exoplayer2.c.e
        public void a(com.google.android.exoplayer2.a.d dVar) {
            m.this.s = dVar;
            if (m.this.r != null) {
                m.this.r.a(dVar);
            }
        }

        @Override // com.google.android.exoplayer2.c.e
        public void a(String str, long j, long j2) {
            if (m.this.r != null) {
                m.this.r.a(str, j, j2);
            }
        }

        @Override // com.google.android.exoplayer2.c.e
        public void a(Format format) {
            m.this.g = format;
            if (m.this.r != null) {
                m.this.r.a(format);
            }
        }

        @Override // com.google.android.exoplayer2.c.e
        public void a(int i, long j) {
            if (m.this.r != null) {
                m.this.r.a(i, j);
            }
        }

        @Override // com.google.android.exoplayer2.c.e
        public void a(int i, int i2, int i3, float f) {
            if (m.this.p != null) {
                m.this.p.onVideoSizeChanged(i, i2, i3, f);
            }
            if (m.this.r != null) {
                m.this.r.a(i, i2, i3, f);
            }
        }

        @Override // com.google.android.exoplayer2.c.e
        public void a(Surface surface) {
            if (m.this.p != null && m.this.i == surface) {
                m.this.p.onRenderedFirstFrame();
            }
            if (m.this.r != null) {
                m.this.r.a(surface);
            }
        }

        @Override // com.google.android.exoplayer2.c.e
        public void b(com.google.android.exoplayer2.a.d dVar) {
            if (m.this.r != null) {
                m.this.r.b(dVar);
            }
            m.this.g = null;
            m.this.s = null;
        }

        @Override // com.google.android.exoplayer2.audio.d
        public void c(com.google.android.exoplayer2.a.d dVar) {
            m.this.t = dVar;
            if (m.this.q != null) {
                m.this.q.c(dVar);
            }
        }

        @Override // com.google.android.exoplayer2.audio.d
        public void a(int i) {
            m.this.u = i;
            if (m.this.q != null) {
                m.this.q.a(i);
            }
        }

        @Override // com.google.android.exoplayer2.audio.d
        public void b(String str, long j, long j2) {
            if (m.this.q != null) {
                m.this.q.b(str, j, j2);
            }
        }

        @Override // com.google.android.exoplayer2.audio.d
        public void b(Format format) {
            m.this.h = format;
            if (m.this.q != null) {
                m.this.q.b(format);
            }
        }

        @Override // com.google.android.exoplayer2.audio.d
        public void a(int i, long j, long j2) {
            if (m.this.q != null) {
                m.this.q.a(i, j, j2);
            }
        }

        @Override // com.google.android.exoplayer2.audio.d
        public void d(com.google.android.exoplayer2.a.d dVar) {
            if (m.this.q != null) {
                m.this.q.d(dVar);
            }
            m.this.h = null;
            m.this.t = null;
            m.this.u = 0;
        }

        @Override // com.google.android.exoplayer2.text.j.a
        public void a(List<com.google.android.exoplayer2.text.b> list) {
            if (m.this.n != null) {
                m.this.n.a(list);
            }
        }

        @Override // com.google.android.exoplayer2.metadata.d.a
        public void a(Metadata metadata) {
            if (m.this.o != null) {
                m.this.o.a(metadata);
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            m.this.a(surfaceHolder.getSurface(), false);
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            m.this.a((Surface) null, false);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
            m.this.a(new Surface(surfaceTexture), true);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            m.this.a((Surface) null, true);
            return true;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }
    }
}
