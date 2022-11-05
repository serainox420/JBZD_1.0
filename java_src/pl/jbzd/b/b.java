package pl.jbzd.b;

import android.content.Context;
import android.net.Uri;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.VideoView;
import com.google.android.exoplayer2.m;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.pierfrancescosoffritti.youtubeplayer.YouTubePlayerView;
/* compiled from: VideoPlayer.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private pl.jbzd.b.a f6087a;
    private YouTubePlayerView b;
    private View.OnClickListener c = null;
    private a d = null;
    private int e = 0;

    /* compiled from: VideoPlayer.java */
    /* loaded from: classes3.dex */
    public interface a {
        void a(View view, String str);

        void a(View view, String str, String str2);

        void b(View view, String str);
    }

    public b(Context context) {
        this.f6087a = null;
        this.b = null;
        try {
            this.f6087a = new pl.jbzd.b.a(context);
        } catch (Exception e) {
        }
        try {
            this.b = new YouTubePlayerView(context);
            this.b.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            this.b.c();
        } catch (Exception e2) {
            if (this.b != null) {
                this.b.d();
                this.b = null;
            }
        }
    }

    public void a(Uri uri, ViewGroup viewGroup, a aVar) {
        Log.d(VideoView.class.getSimpleName(), "uri: " + uri);
        a();
        if (this.f6087a != null) {
            viewGroup.setVisibility(4);
            viewGroup.addView(this.f6087a);
            a(viewGroup);
            this.f6087a.setOnSimpleVideoListener(aVar);
            this.f6087a.a(uri);
            this.e = 1;
        }
    }

    public void a(String str, ViewGroup viewGroup, a aVar) {
        Log.d(VideoView.class.getSimpleName(), "videoId: " + str);
        a();
        if (this.b != null) {
            viewGroup.setVisibility(4);
            viewGroup.addView(this.b);
            a(viewGroup);
            this.b.setOnSimpleListener(aVar);
            this.b.a(str, BitmapDescriptorFactory.HUE_RED);
            this.e = 2;
        }
    }

    public void a() {
        this.e = 0;
        if (this.f6087a != null) {
            this.f6087a.a();
            this.f6087a.setVisibility(4);
            a((View) this.f6087a);
        }
        if (this.b != null) {
            this.b.g();
            this.b.setVisibility(4);
            a((View) this.b);
        }
    }

    public void a(Context context) {
        e();
    }

    public void b(Context context) {
    }

    public void c(Context context) {
        if (this.f6087a != null) {
            this.f6087a.b();
        }
        if (this.b != null) {
            this.b.d();
        }
    }

    public float b() {
        return this.e == 1 ? this.f6087a.getPlayer() != null ? (float) this.f6087a.getPlayer().j() : BitmapDescriptorFactory.HUE_RED : this.e == 2 ? this.b.getCurrentSecond() : BitmapDescriptorFactory.HUE_RED;
    }

    public void a(float f) {
        if (this.e == 1) {
            if (this.f6087a.getPlayer() != null) {
                this.f6087a.getPlayer().a(f);
            }
        } else if (this.e == 2 && this.b != null) {
            this.b.a((int) f);
        }
    }

    public boolean c() {
        if (this.e == 1) {
            return this.f6087a.getPlayer() != null && this.f6087a.getPlayer().b();
        } else if (this.e != 2) {
            return false;
        } else {
            return this.b.h();
        }
    }

    public void d() {
        boolean z = true;
        if (this.e == 1) {
            if (this.f6087a.getPlayer() != null) {
                m player = this.f6087a.getPlayer();
                if (this.f6087a.getPlayer().b()) {
                    z = false;
                }
                player.a(z);
            }
        } else if (this.e == 2 && this.b != null) {
            if (this.b.h()) {
                this.b.f();
            } else {
                this.b.e();
            }
        }
    }

    public void e() {
        if (this.e == 1) {
            if (this.f6087a.getPlayer() != null) {
                this.f6087a.getPlayer().a(false);
            }
        } else if (this.e == 2 && this.b != null) {
            this.b.f();
        }
    }

    public void a(ViewGroup viewGroup, View.OnClickListener onClickListener) {
        this.c = onClickListener;
        if (viewGroup.getChildCount() > 0 && (viewGroup.getChildAt(viewGroup.getChildCount() - 1) instanceof FrameLayout)) {
            viewGroup.getChildAt(viewGroup.getChildCount() - 1).setOnClickListener(onClickListener);
        }
    }

    private void a(ViewGroup viewGroup) {
        FrameLayout frameLayout = new FrameLayout(viewGroup.getContext());
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        frameLayout.setBackgroundResource(pl.jbzd.core.a.a.b(17170445, viewGroup.getContext()));
        frameLayout.setClickable(true);
        if (this.c != null) {
            frameLayout.setOnClickListener(this.c);
        }
        viewGroup.addView(frameLayout);
    }

    private void a(View view) {
        if (view.getParent() != null) {
            ((ViewGroup) view.getParent()).removeAllViews();
        }
    }
}
