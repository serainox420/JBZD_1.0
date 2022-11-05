package com.facebook.ads.internal.view;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.RelativeLayout;
import com.facebook.ads.AudienceNetworkActivity;
import com.facebook.ads.InterstitialAdActivity;
import com.facebook.ads.MediaView;
import com.facebook.ads.MediaViewListener;
import com.facebook.ads.internal.adapters.aa;
import com.facebook.ads.internal.j.a;
import com.facebook.ads.internal.util.ad;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.UUID;
/* loaded from: classes.dex */
public class i extends m {

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ boolean f2337a;
    private final com.facebook.ads.internal.view.d.a.k c;
    private final com.facebook.ads.internal.view.d.a.i d;
    private final com.facebook.ads.internal.view.d.a.m e;
    private final com.facebook.ads.internal.view.d.a.c f;
    private final String g;
    private final MediaView h;
    private final com.facebook.ads.internal.g.f i;
    private final com.facebook.ads.internal.j.a j;
    private final aa k;
    private final com.facebook.ads.internal.view.d.b.f l;
    private ad m;
    private String n;
    private Uri o;
    private String p;
    private String q;
    private MediaViewListener r;
    private boolean s;

    static {
        f2337a = !i.class.desiredAssertionStatus();
    }

    public i(Context context, MediaView mediaView, com.facebook.ads.internal.g.f fVar) {
        super(context);
        this.c = new com.facebook.ads.internal.view.d.a.k() { // from class: com.facebook.ads.internal.view.i.1
            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.j jVar) {
                if (i.this.r == null) {
                    return;
                }
                i.this.r.onPlay(i.this.h);
            }
        };
        this.d = new com.facebook.ads.internal.view.d.a.i() { // from class: com.facebook.ads.internal.view.i.2
            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.h hVar) {
                if (i.this.r == null) {
                    return;
                }
                i.this.r.onPause(i.this.h);
            }
        };
        this.e = new com.facebook.ads.internal.view.d.a.m() { // from class: com.facebook.ads.internal.view.i.3
            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.l lVar) {
                if (i.this.i()) {
                    i.this.d();
                }
                i.this.setOnTouchListener(new View.OnTouchListener() { // from class: com.facebook.ads.internal.view.i.3.1
                    @Override // android.view.View.OnTouchListener
                    public boolean onTouch(View view, MotionEvent motionEvent) {
                        if (motionEvent.getAction() == 1) {
                            i.this.k();
                        }
                        return true;
                    }
                });
            }
        };
        this.f = new com.facebook.ads.internal.view.d.a.c() { // from class: com.facebook.ads.internal.view.i.4
            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.b bVar) {
                if (i.this.r == null) {
                    return;
                }
                i.this.r.onComplete(i.this.h);
            }
        };
        this.g = UUID.randomUUID().toString();
        this.s = false;
        this.h = mediaView;
        this.i = fVar;
        getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.c);
        getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.d);
        getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.f);
        setAutoplay(true);
        setVolume(BitmapDescriptorFactory.HUE_RED);
        this.l = new com.facebook.ads.internal.view.d.b.f(context);
        a(this.l);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        com.facebook.ads.internal.view.d.b.g gVar = new com.facebook.ads.internal.view.d.b.g(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(9);
        layoutParams.addRule(12);
        gVar.setPadding((int) (displayMetrics.density * 2.0f), (int) (displayMetrics.density * 25.0f), (int) (displayMetrics.density * 25.0f), (int) (displayMetrics.density * 2.0f));
        gVar.setLayoutParams(layoutParams);
        a(gVar);
        getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.e);
        this.k = new aa(this, getContext());
        this.j = new com.facebook.ads.internal.j.a(this, 50, true, new a.AbstractC0098a() { // from class: com.facebook.ads.internal.view.i.5
            @Override // com.facebook.ads.internal.j.a.AbstractC0098a
            public void a() {
                if ((i.this.i() || i.this.b.getTargetState() == com.facebook.ads.internal.view.d.c.d.STARTED) && i.this.b.getTargetState() != com.facebook.ads.internal.view.d.c.d.PAUSED) {
                    i.this.d();
                }
            }

            @Override // com.facebook.ads.internal.j.a.AbstractC0098a
            public void b() {
                i.this.e();
            }
        });
        this.j.a(0);
        this.j.b(250);
    }

    private void a(Context context, Intent intent) {
        if (f2337a || this.n != null) {
            if (!f2337a && this.o == null && this.q == null) {
                throw new AssertionError();
            }
            ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(new DisplayMetrics());
            intent.putExtra("useNativeCloseButton", true);
            intent.putExtra(AudienceNetworkActivity.VIEW_TYPE, AudienceNetworkActivity.Type.VIDEO);
            intent.putExtra(AudienceNetworkActivity.VIDEO_URL, this.o.toString());
            intent.putExtra(AudienceNetworkActivity.CLIENT_TOKEN, this.p == null ? "" : this.p);
            intent.putExtra(AudienceNetworkActivity.VIDEO_MPD, this.q);
            intent.putExtra(AudienceNetworkActivity.VIDEO_REPORT_URL, this.n);
            intent.putExtra(AudienceNetworkActivity.PREDEFINED_ORIENTATION_KEY, 13);
            intent.putExtra(AudienceNetworkActivity.AUTOPLAY, a());
            intent.putExtra(AudienceNetworkActivity.VIDEO_SEEK_TIME, getCurrentPosition());
            intent.putExtra(AudienceNetworkActivity.AUDIENCE_NETWORK_UNIQUE_ID_EXTRA, this.g);
            intent.putExtra(AudienceNetworkActivity.VIDEO_LOGGER, this.m.getSaveInstanceState());
            intent.addFlags(DriveFile.MODE_READ_ONLY);
            return;
        }
        throw new AssertionError();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        Context context = getContext();
        Intent intent = new Intent(context, AudienceNetworkActivity.class);
        a(context, intent);
        try {
            e();
            setVisibility(8);
            context.startActivity(intent);
        } catch (ActivityNotFoundException e) {
            try {
                intent.setClass(context, InterstitialAdActivity.class);
                context.startActivity(intent);
            } catch (Exception e2) {
                com.facebook.ads.internal.util.d.a(com.facebook.ads.internal.util.c.a(e2, "Error occurred while loading fullscreen video activity."));
            }
        } catch (Exception e3) {
            com.facebook.ads.internal.util.d.a(com.facebook.ads.internal.util.c.a(e3, "Error occurred while loading fullscreen video activity."));
        }
    }

    private void l() {
        if (getVisibility() != 0 || !this.s) {
            this.j.b();
        } else {
            this.j.a();
        }
    }

    public void a(String str, String str2) {
        if (this.m != null) {
            this.m.a();
        }
        String str3 = str2 == null ? "" : str2;
        this.m = new ad(getContext(), this.i, this, str, str3);
        this.p = str3;
        this.n = str;
    }

    @Override // com.facebook.ads.internal.view.m
    public void d() {
        if (com.facebook.ads.internal.j.a.a(this, 50).a()) {
            super.d();
        }
    }

    public MediaViewListener getListener() {
        return this.r;
    }

    public MediaView getMediaView() {
        return this.h;
    }

    public String getUniqueId() {
        return this.g;
    }

    @Override // com.facebook.ads.internal.view.m, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.s = true;
        this.k.a();
        l();
    }

    @Override // com.facebook.ads.internal.view.m, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.s = false;
        this.k.b();
        l();
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i) {
        l();
        super.onVisibilityChanged(view, i);
    }

    public void setImage(String str) {
        this.l.setImage(str);
    }

    public void setListener(MediaViewListener mediaViewListener) {
        this.r = mediaViewListener;
    }

    @Override // com.facebook.ads.internal.view.m
    public void setVideoMPD(String str) {
        if (f2337a || this.m != null) {
            this.q = str;
            super.setVideoMPD(str);
            return;
        }
        throw new AssertionError();
    }

    @Override // com.facebook.ads.internal.view.m
    public void setVideoURI(Uri uri) {
        if (f2337a || this.m != null) {
            this.o = uri;
            super.setVideoURI(uri);
            return;
        }
        throw new AssertionError();
    }
}
