package com.pierfrancescosoffritti.youtubeplayer;

import android.content.Context;
import android.content.IntentFilter;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.pierfrancescosoffritti.youtubeplayer.NetworkReceiver;
import com.pierfrancescosoffritti.youtubeplayer.e;
import java.util.HashSet;
import java.util.Set;
import pl.jbzd.R;
import pl.jbzd.b.b;
/* loaded from: classes3.dex */
public class YouTubePlayerView extends FrameLayout implements NetworkReceiver.a {

    /* renamed from: a  reason: collision with root package name */
    public b.a f4708a;
    private final NetworkReceiver b;
    private final e c;
    private final c d;
    private final b e;
    private final Set<Object> f;
    private boolean g;
    private a h;
    private boolean i;
    private boolean j;
    private boolean k;
    private boolean l;
    private String m;
    private float n;

    public void setOnSimpleListener(b.a aVar) {
        this.f4708a = aVar;
    }

    public YouTubePlayerView(Context context) {
        this(context, null);
    }

    public YouTubePlayerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public YouTubePlayerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.g = false;
        this.m = "";
        this.n = BitmapDescriptorFactory.HUE_RED;
        this.i = false;
        this.j = false;
        this.k = false;
        this.l = true;
        this.m = "";
        this.c = new e(context);
        addView(this.c, new FrameLayout.LayoutParams(-1, -1));
        this.d = new c(this, inflate(context, R.layout.view_yt_player_controls, this));
        this.e = new b(this);
        this.f = new HashSet();
        this.f.add(this.d);
        this.c.b(this.d);
        this.c.b(this.e);
        this.b = new NetworkReceiver(this);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        if (getLayoutParams().height == -2) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec((View.MeasureSpec.getSize(i) * 9) / 16, 1073741824));
        } else {
            super.onMeasure(i, i2);
        }
    }

    public void c() {
        a(new e.a() { // from class: com.pierfrancescosoffritti.youtubeplayer.YouTubePlayerView.1
            @Override // com.pierfrancescosoffritti.youtubeplayer.e.a
            public void b() {
                YouTubePlayerView.this.j = true;
                if (YouTubePlayerView.this.m != null && !YouTubePlayerView.this.m.isEmpty()) {
                    YouTubePlayerView.this.a(YouTubePlayerView.this.m, BitmapDescriptorFactory.HUE_RED);
                } else if (YouTubePlayerView.this.f4708a != null) {
                    YouTubePlayerView.this.f4708a.a(YouTubePlayerView.this, YouTubePlayerView.this.m, "Brak video");
                }
            }

            @Override // com.pierfrancescosoffritti.youtubeplayer.e.a
            public void a(int i) {
                if (YouTubePlayerView.this.f4708a != null) {
                    if (i == 0) {
                        YouTubePlayerView.this.n = BitmapDescriptorFactory.HUE_RED;
                        YouTubePlayerView.this.a(YouTubePlayerView.this.m, BitmapDescriptorFactory.HUE_RED);
                        YouTubePlayerView.this.f4708a.b(YouTubePlayerView.this, YouTubePlayerView.this.m);
                    } else if (i == 1) {
                        YouTubePlayerView.this.n = BitmapDescriptorFactory.HUE_RED;
                        YouTubePlayerView.this.k = true;
                        YouTubePlayerView.this.f4708a.a(YouTubePlayerView.this, YouTubePlayerView.this.m);
                    }
                }
            }

            @Override // com.pierfrancescosoffritti.youtubeplayer.e.a
            public void b(int i) {
            }

            @Override // com.pierfrancescosoffritti.youtubeplayer.e.a
            public void a(double d) {
            }

            @Override // com.pierfrancescosoffritti.youtubeplayer.e.a
            public void c(int i) {
                if (YouTubePlayerView.this.f4708a != null) {
                    YouTubePlayerView.this.f4708a.a(YouTubePlayerView.this, YouTubePlayerView.this.m, "" + i);
                }
            }

            @Override // com.pierfrancescosoffritti.youtubeplayer.e.a
            public void c() {
            }

            @Override // com.pierfrancescosoffritti.youtubeplayer.e.a
            public void a(float f) {
                YouTubePlayerView.this.n = f;
            }

            @Override // com.pierfrancescosoffritti.youtubeplayer.e.a
            public void b(float f) {
            }

            @Override // com.pierfrancescosoffritti.youtubeplayer.e.a
            public void a(String str) {
            }

            @Override // com.pierfrancescosoffritti.youtubeplayer.e.a
            public void b(String str) {
            }

            @Override // com.pierfrancescosoffritti.youtubeplayer.e.a
            public void c(String str) {
            }
        }, false);
    }

    public void a(final e.a aVar, boolean z) {
        this.j = false;
        if (z) {
            getContext().registerReceiver(this.b, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        }
        if (!d.a(getContext())) {
            Log.e("YouTubePlayerView", "Can't initialize because device is not connected to the internet.");
            this.h = new a() { // from class: com.pierfrancescosoffritti.youtubeplayer.YouTubePlayerView.2
                @Override // com.pierfrancescosoffritti.youtubeplayer.a
                public void a() {
                    Log.d("YouTubePlayerView", "Network available. Initializing player.");
                    YouTubePlayerView.this.c.a(aVar);
                    YouTubePlayerView.this.g = true;
                    YouTubePlayerView.this.h = null;
                }
            };
            return;
        }
        this.c.a(aVar);
        this.g = true;
    }

    public void a(String str, float f) {
        if (!this.g) {
            Log.e("YouTubePlayerView", "the player has not been initialized");
            return;
        }
        this.k = false;
        this.m = str;
        if (this.j) {
            this.c.a(str, f);
            this.d.a();
        }
    }

    public void b(String str, float f) {
        if (!this.g) {
            Log.e("YouTubePlayerView", "the player has not been initialized");
            return;
        }
        this.k = false;
        this.m = str;
        if (this.j) {
            this.c.b(str, f);
            this.d.a();
        }
    }

    public void d() {
        if (!this.g) {
            Log.e("YouTubePlayerView", "the player has not been initialized");
            return;
        }
        g();
        this.c.destroy();
        try {
            getContext().unregisterReceiver(this.b);
        } catch (Exception e) {
        }
    }

    public void a(int i) {
        if (!this.g) {
            Log.e("YouTubePlayerView", "the player has not been initialized");
        } else {
            this.c.a(i);
        }
    }

    public void e() {
        if (!this.g) {
            Log.e("YouTubePlayerView", "the player has not been initialized");
            return;
        }
        this.c.a();
        this.l = false;
    }

    public void f() {
        if (!this.g) {
            Log.e("YouTubePlayerView", "the player has not been initialized");
            return;
        }
        this.c.b();
        this.l = true;
    }

    public void g() {
        f();
        this.m = "";
        this.k = false;
        this.l = true;
    }

    public boolean h() {
        return this.k && !this.l;
    }

    @Override // com.pierfrancescosoffritti.youtubeplayer.NetworkReceiver.a
    public void a() {
        Log.d("YouTubePlayerView", "Network available.");
        if (!this.g && this.h != null) {
            this.h.a();
        } else {
            this.e.a();
        }
    }

    @Override // com.pierfrancescosoffritti.youtubeplayer.NetworkReceiver.a
    public void b() {
    }

    public float getCurrentSecond() {
        return this.n;
    }
}
