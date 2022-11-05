package com.facebook.ads.internal.view.d.b;

import android.content.Context;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.widget.RelativeLayout;
import com.facebook.ads.internal.g.q;
import com.facebook.ads.internal.g.r;
import com.facebook.ads.internal.g.s;
/* loaded from: classes.dex */
public class g extends m implements View.OnTouchListener {
    private final com.facebook.ads.internal.view.d.a.m b;
    private final com.facebook.ads.internal.view.d.a.i c;
    private final com.facebook.ads.internal.view.d.a.k d;
    private final com.facebook.ads.internal.view.d.a.c e;
    private final l f;

    public g(Context context) {
        this(context, null);
    }

    public g(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public g(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = new com.facebook.ads.internal.view.d.a.m() { // from class: com.facebook.ads.internal.view.d.b.g.1
            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.l lVar) {
                g.this.setVisibility(0);
            }
        };
        this.c = new com.facebook.ads.internal.view.d.a.i() { // from class: com.facebook.ads.internal.view.d.b.g.2
            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.h hVar) {
                g.this.f.setChecked(true);
            }
        };
        this.d = new com.facebook.ads.internal.view.d.a.k() { // from class: com.facebook.ads.internal.view.d.b.g.3
            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.j jVar) {
                g.this.f.setChecked(false);
            }
        };
        this.e = new com.facebook.ads.internal.view.d.a.c() { // from class: com.facebook.ads.internal.view.d.b.g.4
            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.b bVar) {
                g.this.f.setChecked(true);
            }
        };
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.f = new l(context);
        this.f.setChecked(true);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) (displayMetrics.density * 25.0f), (int) (displayMetrics.density * 25.0f));
        setVisibility(8);
        addView(this.f, layoutParams);
        setClickable(true);
        setFocusable(true);
        setFocusableInTouchMode(true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.ads.internal.view.d.b.m
    public void a(com.facebook.ads.internal.view.m mVar) {
        this.f.setOnTouchListener(this);
        setOnTouchListener(this);
        r<s, q> eventBus = mVar.getEventBus();
        eventBus.a((r<s, q>) this.b);
        eventBus.a((r<s, q>) this.e);
        eventBus.a((r<s, q>) this.c);
        eventBus.a((r<s, q>) this.d);
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        com.facebook.ads.internal.view.m videoView;
        if (motionEvent.getAction() == 1 && (videoView = getVideoView()) != null) {
            if (videoView.getState() == com.facebook.ads.internal.view.d.c.d.PREPARED || videoView.getState() == com.facebook.ads.internal.view.d.c.d.PAUSED || videoView.getState() == com.facebook.ads.internal.view.d.c.d.PLAYBACK_COMPLETED) {
                videoView.d();
                return true;
            } else if (videoView.getState() != com.facebook.ads.internal.view.d.c.d.STARTED) {
                return false;
            } else {
                videoView.e();
                return false;
            }
        }
        return false;
    }
}
