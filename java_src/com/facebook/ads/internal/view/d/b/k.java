package com.facebook.ads.internal.view.d.b;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.widget.RelativeLayout;
import com.facebook.ads.internal.g.q;
import com.facebook.ads.internal.g.r;
import com.facebook.ads.internal.g.s;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.mobileads.resource.DrawableConstants;
/* loaded from: classes.dex */
public class k extends d {
    private final l b;
    private final s<com.facebook.ads.internal.view.d.a.h> c;
    private final s<com.facebook.ads.internal.view.d.a.j> d;
    private final Paint e;
    private final RectF f;

    public k(Context context) {
        super(context);
        this.c = new s<com.facebook.ads.internal.view.d.a.h>() { // from class: com.facebook.ads.internal.view.d.b.k.1
            @Override // com.facebook.ads.internal.g.s
            public Class<com.facebook.ads.internal.view.d.a.h> a() {
                return com.facebook.ads.internal.view.d.a.h.class;
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.h hVar) {
                k.this.b.setChecked(true);
            }
        };
        this.d = new s<com.facebook.ads.internal.view.d.a.j>() { // from class: com.facebook.ads.internal.view.d.b.k.2
            @Override // com.facebook.ads.internal.g.s
            public Class<com.facebook.ads.internal.view.d.a.j> a() {
                return com.facebook.ads.internal.view.d.a.j.class;
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.j jVar) {
                k.this.b.setChecked(false);
            }
        };
        this.b = new l(context);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) (displayMetrics.density * 50.0f), (int) (displayMetrics.density * 50.0f));
        layoutParams.addRule(13);
        this.b.setLayoutParams(layoutParams);
        this.e = new Paint();
        this.e.setStyle(Paint.Style.FILL);
        this.e.setColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
        this.e.setAlpha(119);
        this.f = new RectF();
        setBackgroundColor(0);
        addView(this.b);
        setGravity(17);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams((int) (displayMetrics.density * 75.0d), (int) (displayMetrics.density * 75.0d));
        layoutParams2.addRule(13);
        setLayoutParams(layoutParams2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.ads.internal.view.d.b.d, com.facebook.ads.internal.view.d.b.m
    public void a(final com.facebook.ads.internal.view.m mVar) {
        mVar.getEventBus().a((r<s, q>) this.c);
        mVar.getEventBus().a((r<s, q>) this.d);
        this.b.setOnTouchListener(new View.OnTouchListener() { // from class: com.facebook.ads.internal.view.d.b.k.3
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 0) {
                    if (mVar.getState() == com.facebook.ads.internal.view.d.c.d.PREPARED) {
                        mVar.d();
                    } else if (mVar.getState() == com.facebook.ads.internal.view.d.c.d.PAUSED) {
                        mVar.d();
                    } else if (mVar.getState() != com.facebook.ads.internal.view.d.c.d.STARTED) {
                        return false;
                    } else {
                        mVar.e();
                    }
                    return true;
                }
                return false;
            }
        });
        super.a(mVar);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float f = getContext().getResources().getDisplayMetrics().density;
        this.f.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight());
        canvas.drawRoundRect(this.f, 5.0f * f, f * 5.0f, this.e);
        super.onDraw(canvas);
    }
}
