package pl.jbzd.b;

import android.content.Context;
import android.graphics.Point;
import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.audio.c;
import com.google.android.exoplayer2.b.a;
import com.google.android.exoplayer2.b.g;
import com.google.android.exoplayer2.d;
import com.google.android.exoplayer2.e;
import com.google.android.exoplayer2.m;
import com.google.android.exoplayer2.n;
import com.google.android.exoplayer2.source.dash.f;
import com.google.android.exoplayer2.source.smoothstreaming.a;
import com.google.android.exoplayer2.upstream.cache.h;
import com.google.android.exoplayer2.upstream.i;
import com.google.android.exoplayer2.upstream.k;
import com.google.android.exoplayer2.util.v;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.File;
import java.net.CookieHandler;
import java.net.CookieManager;
import java.net.CookiePolicy;
import pl.jbzd.R;
import pl.jbzd.b.b;
/* compiled from: CustomVideoSurfaceView.java */
/* loaded from: classes3.dex */
public class a extends FrameLayout implements SurfaceHolder.Callback, View.OnClickListener, c.b, m.b {
    private c e;
    private m f;
    private Handler g;
    private com.google.android.exoplayer2.upstream.cache.c h;
    private SurfaceView i;
    private b.a j;
    private Uri k;
    private boolean l;
    private int m;
    private boolean n;

    /* renamed from: a  reason: collision with root package name */
    private static final String f6085a = a.class.getSimpleName();
    private static final com.google.android.exoplayer2.extractor.c c = new com.google.android.exoplayer2.extractor.c();
    private static final i d = new i();
    private static final CookieManager b = new CookieManager();

    static {
        b.setCookiePolicy(CookiePolicy.ACCEPT_ORIGINAL_SERVER);
    }

    public a(Context context) {
        super(context);
        this.j = null;
        this.l = false;
        this.m = 0;
        this.n = false;
        a(context);
    }

    protected void a(Context context) {
        LayoutInflater.from(context).inflate(R.layout.exo_player, (ViewGroup) this, true);
        setVisibility(4);
        Display defaultDisplay = ((WindowManager) getContext().getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        this.m = point.x;
        this.i = (SurfaceView) findViewById(R.id.surfaceView);
        b(context);
    }

    private void b(Context context) {
        this.g = new Handler();
        getDataSource();
        this.i.getHolder().addCallback(this);
        if (CookieHandler.getDefault() != b) {
            CookieHandler.setDefault(b);
        }
        this.e = new c(context, this);
        this.e.a();
        d();
    }

    private com.google.android.exoplayer2.upstream.cache.c getDataSource() {
        if (this.h == null) {
            k kVar = new k(getContext(), v.a(getContext(), getContext().getPackageName()), d);
            File file = new File(getContext().getExternalCacheDir(), "exoplayer");
            if (!file.exists()) {
                file.mkdir();
            }
            this.h = new com.google.android.exoplayer2.upstream.cache.c(new com.google.android.exoplayer2.upstream.cache.i(file, new h(33554432L)), kVar, 1, 524288L);
        }
        return this.h;
    }

    private void d() {
        if (this.f == null) {
            this.f = e.a(getContext(), new com.google.android.exoplayer2.b.c(new a.C0131a(d)), new com.google.android.exoplayer2.c());
            this.f.a(new d.a() { // from class: pl.jbzd.b.a.1
                @Override // com.google.android.exoplayer2.d.a
                public void onTimelineChanged(n nVar, Object obj) {
                }

                @Override // com.google.android.exoplayer2.d.a
                public void a(com.google.android.exoplayer2.source.m mVar, g gVar) {
                }

                @Override // com.google.android.exoplayer2.d.a
                public void onLoadingChanged(boolean z) {
                }

                @Override // com.google.android.exoplayer2.d.a
                public void onPlayerStateChanged(boolean z, int i) {
                    String str;
                    String str2 = "playWhenReady=" + z + ", playbackState=";
                    switch (i) {
                        case 1:
                            str = str2 + "idle ";
                            break;
                        case 2:
                            str = str2 + "buffering ";
                            a.this.setVisibility(0);
                            if (!a.this.n) {
                                a.this.i.setAlpha(BitmapDescriptorFactory.HUE_RED);
                            }
                            a.this.i.setOnClickListener(null);
                            break;
                        case 3:
                            a.this.i.setOnClickListener(a.this);
                            a.this.i.setAlpha(1.0f);
                            a.this.n = true;
                            str = str2 + "ready ";
                            if (a.this.j != null) {
                                a.this.j.a(a.this, a.this.k.toString());
                                break;
                            }
                            break;
                        case 4:
                            a.this.f.a(0L);
                            str = str2 + "ended ";
                            break;
                        default:
                            str = str2 + "unknown ";
                            break;
                    }
                    Log.d(a.f6085a, str);
                }

                @Override // com.google.android.exoplayer2.d.a
                public void onPlayerError(ExoPlaybackException exoPlaybackException) {
                }

                @Override // com.google.android.exoplayer2.d.a
                public void onPositionDiscontinuity() {
                }
            });
        }
    }

    private com.google.android.exoplayer2.source.g a(Uri uri, String str) {
        int b2 = TextUtils.isEmpty(str) ? v.b(uri) : v.i("." + str);
        com.google.android.exoplayer2.upstream.cache.c dataSource = getDataSource();
        switch (b2) {
            case 0:
                return new com.google.android.exoplayer2.source.dash.c(uri, dataSource, new f.a(dataSource), null, null);
            case 1:
                return new com.google.android.exoplayer2.source.smoothstreaming.d(uri, dataSource, new a.C0143a(dataSource), null, null);
            case 2:
                return new com.google.android.exoplayer2.source.b.h(uri, dataSource, null, null);
            case 3:
                return new com.google.android.exoplayer2.source.e(uri, dataSource, c, null, null);
            default:
                throw new IllegalStateException("Unsupported type: " + b2);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.f != null) {
            this.f.a(!this.f.b());
        }
    }

    public void setOnSimpleVideoListener(b.a aVar) {
        this.j = aVar;
    }

    protected void a(int i, int i2) {
        int i3 = this.m;
        int i4 = this.m;
        float f = i / i2;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getLayoutParams();
        if (i3 / i > i4 / i2) {
            layoutParams.width = (int) ((i4 * f) + 0.5f);
            layoutParams.height = i4;
        } else {
            layoutParams.width = i3;
            layoutParams.height = (int) ((i3 / f) + 0.5f);
        }
        layoutParams.gravity = 17;
        setLayoutParams(layoutParams);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        this.l = true;
        e();
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        this.l = false;
    }

    @Override // com.google.android.exoplayer2.m.b
    public void onVideoSizeChanged(int i, int i2, int i3, float f) {
        a(i, i2);
    }

    @Override // com.google.android.exoplayer2.m.b
    public void onRenderedFirstFrame() {
    }

    @Override // com.google.android.exoplayer2.audio.c.b
    public void a(com.google.android.exoplayer2.audio.b bVar) {
    }

    public m getPlayer() {
        return this.f;
    }

    public void a(Uri uri) {
        d();
        this.k = uri;
        this.f.a(0L);
        this.f.a(a(uri, (String) null));
        this.f.a(true);
        e();
    }

    private void e() {
        this.n = false;
        if (this.l) {
            this.f.a(this.i.getHolder().getSurface());
        }
    }

    public void a() {
        if (this.f != null) {
            this.f.d();
        }
        if (this.j != null) {
            this.j.b(this, this.k.toString());
        }
    }

    public void b() {
        f();
        try {
            if (this.e != null) {
                this.e.b();
                this.e = null;
            }
        } catch (Exception e) {
        }
        if (this.g != null) {
            this.g = null;
        }
        this.h = null;
    }

    private void f() {
        if (this.f != null) {
            this.f.e();
            this.f = null;
        }
    }
}
