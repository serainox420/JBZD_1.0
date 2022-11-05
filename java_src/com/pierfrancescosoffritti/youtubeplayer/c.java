package com.pierfrancescosoffritti.youtubeplayer;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.widget.SeekBar;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.pierfrancescosoffritti.youtubeplayer.e;
import pl.jbzd.R;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PlayerControlsWrapper.java */
/* loaded from: classes3.dex */
public class c implements View.OnClickListener, SeekBar.OnSeekBarChangeListener, e.a {

    /* renamed from: a  reason: collision with root package name */
    private final YouTubePlayerView f4712a;
    private final View b;
    private boolean c = false;
    private boolean d = true;
    private boolean e = false;
    private final Handler f = new Handler(Looper.getMainLooper());
    private final Runnable g = new Runnable() { // from class: com.pierfrancescosoffritti.youtubeplayer.c.1
        @Override // java.lang.Runnable
        public void run() {
            c.this.c((float) BitmapDescriptorFactory.HUE_RED);
        }
    };
    private boolean h = false;
    private int i = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(YouTubePlayerView youTubePlayerView, View view) {
        this.f4712a = youTubePlayerView;
        this.b = view.findViewById(R.id.panel);
        this.b.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == this.b) {
            d();
        }
    }

    private void a(boolean z) {
        this.c = z;
    }

    private void d() {
        c(this.d ? BitmapDescriptorFactory.HUE_RED : 1.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(float f) {
        if (this.e) {
            this.d = f != BitmapDescriptorFactory.HUE_RED;
            if (f == 1.0f && this.c) {
                e();
            } else {
                this.f.removeCallbacks(this.g);
            }
        }
    }

    private void e() {
        this.f.postDelayed(this.g, 3000L);
    }

    @Override // com.pierfrancescosoffritti.youtubeplayer.e.a
    public void a(int i) {
        boolean z = true;
        this.i = -1;
        if (i == 1 || i == 2 || i == 5) {
            this.b.setBackgroundColor(android.support.v4.content.b.c(this.f4712a.getContext(), 17170445));
            this.e = true;
            if (i != 1) {
                z = false;
            }
            a(z);
            if (z) {
                e();
                return;
            } else {
                this.f.removeCallbacks(this.g);
                return;
            }
        }
        a(false);
        c(1.0f);
        if (i == 3) {
            this.e = false;
        }
        if (i == -1) {
            this.b.setBackgroundColor(android.support.v4.content.b.c(this.f4712a.getContext(), 17170444));
            this.e = false;
        }
    }

    @Override // com.pierfrancescosoffritti.youtubeplayer.e.a
    public void a(float f) {
        if (!this.h) {
            if (this.i <= 0 || d.a(f).equals(d.a(this.i))) {
                this.i = -1;
            }
        }
    }

    @Override // com.pierfrancescosoffritti.youtubeplayer.e.a
    public void b(float f) {
    }

    @Override // com.pierfrancescosoffritti.youtubeplayer.e.a
    public void b(String str) {
    }

    @Override // com.pierfrancescosoffritti.youtubeplayer.e.a
    public void c(String str) {
    }

    @Override // com.pierfrancescosoffritti.youtubeplayer.e.a
    public void b() {
    }

    @Override // com.pierfrancescosoffritti.youtubeplayer.e.a
    public void a(String str) {
    }

    @Override // com.pierfrancescosoffritti.youtubeplayer.e.a
    public void b(int i) {
    }

    @Override // com.pierfrancescosoffritti.youtubeplayer.e.a
    public void a(double d) {
    }

    @Override // com.pierfrancescosoffritti.youtubeplayer.e.a
    public void c(int i) {
    }

    @Override // com.pierfrancescosoffritti.youtubeplayer.e.a
    public void c() {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
        this.h = true;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
        if (this.c) {
            this.i = seekBar.getProgress();
        }
        this.f4712a.a(seekBar.getProgress());
        this.h = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
    }
}
