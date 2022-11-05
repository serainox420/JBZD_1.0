package com.adcolony.sdk;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.graphics.Rect;
import android.media.MediaPlayer;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ax extends FrameLayout {
    public static final int ADCOLONY_IAP_ENGAGEMENT_END_CARD = 0;
    public static final int ADCOLONY_IAP_ENGAGEMENT_OVERLAY = 1;

    /* renamed from: a  reason: collision with root package name */
    c f1101a;
    c b;
    e c;
    String d;
    String e;
    boolean f;
    boolean g;
    boolean h;
    boolean i;
    ImageView j;
    String k;
    String l;
    String m;
    String n;
    float o;
    int p;
    private ExecutorService q;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ax(Context context, z zVar, e eVar) {
        super(context);
        this.k = "";
        this.l = "";
        this.m = "";
        this.n = "";
        this.o = 1.0f;
        this.p = 2;
        this.q = Executors.newSingleThreadExecutor();
        this.c = eVar;
        this.n = eVar.f1417a;
        this.d = s.b(zVar.b, "id");
        u.b.a("Retrieving container tied to ad session id: ").b(this.d);
        this.f1101a = a.m.g.f1380a.get(this.d);
        setLayoutParams(new FrameLayout.LayoutParams(this.f1101a.j, this.f1101a.k));
        addView(this.f1101a);
        c();
    }

    public boolean destroy() {
        if (this.g) {
            u.e.b("Ignoring subsequent call to destroy()");
            return false;
        } else if (a.m == null) {
            return false;
        } else {
            this.g = true;
            JSONObject a2 = s.a();
            s.a(a2, "id", this.d);
            z zVar = this.h ? new z("AdSession.on_native_ad_view_destroyed", this.f1101a.l, a2) : new z("AdSession.on_ad_view_destroyed", this.f1101a.l, a2);
            if (a.m.x) {
                a.m.e(zVar);
            } else {
                zVar.b();
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a() {
        if (a.m == null) {
            return false;
        }
        a.m.g.a(this.f1101a);
        if (this.b != null) {
            a.m.g.a(this.b);
        }
        f remove = a.m.g.f.remove(this.d);
        if (remove != null) {
            for (MediaPlayer mediaPlayer : remove.c.c.values()) {
                if (mediaPlayer.isPlaying()) {
                    mediaPlayer.stop();
                }
                mediaPlayer.release();
            }
            remove.b.i.autoPause();
            remove.b.i.release();
        }
        a.m.g.e.remove(this.d);
        this.f1101a = null;
        this.c = null;
        removeAllViews();
        this.q.shutdown();
        return true;
    }

    public boolean setVolume(float f) {
        if (f < 0.0d || f > 1.0d) {
            return false;
        }
        if (this.g) {
            u.e.b("Ignoring call to setVolume as view has been destroyed.");
            return false;
        }
        if (f > 0.0d) {
            this.o = f;
        }
        JSONObject a2 = s.a();
        s.a(a2, "id", this.d);
        s.a(a2, "volume", f);
        new z(this.h ? "AdSession.on_native_ad_view_set_volume" : "AdSession.on_ad_view_destroyed", this.f1101a.l, a2).b();
        return true;
    }

    public boolean setMuted(boolean z) {
        if (this.g) {
            u.e.b("Ignoring call to setMuted() as view has been destroyed");
            return false;
        } else if (z) {
            return setVolume(BitmapDescriptorFactory.HUE_RED);
        } else {
            return setVolume(this.o);
        }
    }

    public String getZoneID() {
        if (this.g) {
            u.e.b("Ignoring call to getZoneID() as view has been destroyed");
            return "";
        }
        return this.n;
    }

    public boolean pause() {
        if (this.g) {
            u.e.b("Ignoring call to pause() as view has been destroyed");
            return false;
        }
        JSONObject a2 = s.a();
        s.a(a2, "id", this.d);
        new z("AdSession.on_manual_pause", this.f1101a.l, a2).b();
        return true;
    }

    public boolean resume() {
        if (this.g) {
            u.e.b("Ignoring call to resume() as view has been destroyed");
            return false;
        }
        JSONObject a2 = s.a();
        s.a(a2, "id", this.d);
        new z("AdSession.on_manual_resume", this.f1101a.l, a2).b();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b() {
        if (this.e.equals("") || a.l == null) {
            return false;
        }
        this.j = new ImageView(a.l);
        this.j.setImageBitmap(BitmapFactory.decodeFile(this.e));
        return true;
    }

    private void c() {
        try {
            this.q.submit(new Runnable() { // from class: com.adcolony.sdk.ax.1
                @Override // java.lang.Runnable
                public void run() {
                    JSONObject a2 = s.a();
                    s.a(a2, "id", ax.this.d);
                    while (!ax.this.g) {
                        Rect rect = new Rect();
                        Rect rect2 = new Rect();
                        ax.this.getLocalVisibleRect(rect);
                        ax.this.getGlobalVisibleRect(rect2);
                        ViewParent parent = ax.this.getParent();
                        if (parent != null) {
                            parent.getChildVisibleRect(ax.this, rect2, null);
                        }
                        boolean z = rect.bottom - rect.top > ax.this.f1101a.k / 2;
                        boolean z2 = (rect2.bottom - rect2.top < ax.this.f1101a.k / 2 || rect2.bottom - rect2.top >= ax.this.f1101a.k) && ax.this.i;
                        boolean z3 = rect.bottom > ax.this.f1101a.k || rect.bottom < 0 || rect.top < 0 || rect2.top <= 0;
                        if (!z3 && !z2 && z && !ax.this.f) {
                            ax.this.i = true;
                            ax.this.f = true;
                            new z(ax.this.h ? "AdSession.on_native_ad_view_visible" : "AdSession.on_ad_view_visible", ax.this.f1101a.l, a2).b();
                        } else if ((!z || (z && z3)) && ax.this.f) {
                            ax.this.f = false;
                            new z(ax.this.h ? "AdSession.on_native_ad_view_hidden" : "AdSession.on_ad_view_hidden", ax.this.f1101a.l, a2).b();
                            u.d.b("AdColonyAdView has been hidden.");
                        }
                        try {
                            Thread.sleep(50L);
                        } catch (InterruptedException e) {
                        }
                    }
                }
            });
        } catch (RejectedExecutionException e) {
            JSONObject a2 = s.a();
            s.a(a2, "id", this.d);
            new z("AdSession.on_error", this.f1101a.l, a2).b();
        }
    }
}
