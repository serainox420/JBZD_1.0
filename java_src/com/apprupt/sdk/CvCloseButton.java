package com.apprupt.sdk;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import com.apprupt.sdk.adview.CloseButtonPosition;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.mobileads.resource.DrawableConstants;
/* loaded from: classes.dex */
class CvCloseButton extends View {

    /* renamed from: a  reason: collision with root package name */
    public static float f1753a = 50.0f;
    private Paint b;
    private RectF c;
    private Paint d;
    private Paint e;
    private Paint f;
    private RectF g;
    private RectF h;
    private float i;
    private Listener j;
    private Handler k;

    /* loaded from: classes.dex */
    public interface Listener {
        void a();
    }

    public CvCloseButton(Context context) {
        super(context.getApplicationContext());
        this.b = null;
        this.c = null;
        this.d = null;
        this.e = null;
        this.f = null;
        this.g = null;
        this.h = null;
        this.i = 3.0f;
        this.j = null;
        this.k = new Handler();
        a();
    }

    public CvCloseButton(Context context, AttributeSet attributeSet) {
        super(context.getApplicationContext(), attributeSet);
        this.b = null;
        this.c = null;
        this.d = null;
        this.e = null;
        this.f = null;
        this.g = null;
        this.h = null;
        this.i = 3.0f;
        this.j = null;
        this.k = new Handler();
        a();
    }

    public CvCloseButton(Context context, CloseButtonPosition closeButtonPosition) {
        this(context);
        a(closeButtonPosition);
    }

    public void a(CloseButtonPosition closeButtonPosition) {
        int b = CvViewHelper.b(f1753a);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(b, b);
        if (closeButtonPosition == CloseButtonPosition.CENTER) {
            layoutParams.addRule(13);
        } else {
            if (closeButtonPosition == CloseButtonPosition.TOP_LEFT || closeButtonPosition == CloseButtonPosition.BOTTOM_LEFT) {
                layoutParams.addRule(9);
            } else if (closeButtonPosition == CloseButtonPosition.TOP_RIGHT || closeButtonPosition == CloseButtonPosition.BOTTOM_RIGHT) {
                layoutParams.addRule(11);
            } else {
                layoutParams.addRule(14);
            }
            if (closeButtonPosition == CloseButtonPosition.BOTTOM_RIGHT || closeButtonPosition == CloseButtonPosition.BOTTOM_CENTER || closeButtonPosition == CloseButtonPosition.BOTTOM_LEFT) {
                layoutParams.addRule(12);
            } else {
                layoutParams.addRule(10);
            }
        }
        setLayoutParams(layoutParams);
    }

    public void a(Listener listener) {
        this.j = listener;
    }

    private void a() {
        if (Build.VERSION.SDK_INT >= 11) {
            setLayerType(1, null);
        }
        setClickable(true);
        setOnClickListener(new View.OnClickListener() { // from class: com.apprupt.sdk.CvCloseButton.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CvCloseButton.this.k.post(new Runnable() { // from class: com.apprupt.sdk.CvCloseButton.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (CvCloseButton.this.j != null) {
                            CvCloseButton.this.j.a();
                        }
                    }
                });
            }
        });
        this.b = new Paint(1);
        this.b.setColor(Color.argb(255, 255, 255, 255));
        this.d = new Paint(1);
        this.d.setColor(Color.argb(255, 255, 255, 255));
        this.d.setShadowLayer(CvViewHelper.b(3.0f), BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, DrawableConstants.CtaButton.BACKGROUND_COLOR);
        this.e = new Paint(1);
        this.e.setColor(Color.argb(255, 255, 255, 255));
        this.f = new Paint(1);
        this.f.setColor(Color.argb(255, 0, 0, 0));
    }

    @Override // android.view.View
    protected int getSuggestedMinimumWidth() {
        return CvViewHelper.b(f1753a);
    }

    @Override // android.view.View
    protected int getSuggestedMinimumHeight() {
        return CvViewHelper.b(f1753a);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(Math.max(getPaddingLeft() + getPaddingRight() + getSuggestedMinimumWidth(), View.MeasureSpec.getSize(i)), Math.min(View.MeasureSpec.getSize(i2), getPaddingBottom() + getPaddingTop() + getSuggestedMinimumHeight()));
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        float paddingLeft = i - (getPaddingLeft() + getPaddingRight());
        float paddingTop = i2 - (getPaddingTop() + getPaddingBottom());
        float f = 0.48f * paddingLeft;
        float f2 = 0.48f * paddingTop;
        this.i = Math.max(1.0f, Math.min(paddingLeft, paddingTop) * 0.06f);
        float max = Math.max(1.0f, Math.min(paddingLeft, paddingTop) * 0.04f);
        this.c = new RectF(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, paddingLeft, paddingTop);
        this.c.offsetTo(getPaddingLeft(), getPaddingTop());
        this.g = new RectF(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, f, f2);
        this.g.offsetTo(getPaddingLeft() + (0.36f * paddingLeft), getPaddingTop() + (0.16f * paddingTop));
        this.h = new RectF(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, f - (2.0f * max), f2 - (2.0f * max));
        this.h.offsetTo((paddingLeft * 0.36f) + getPaddingLeft() + max, (paddingTop * 0.16f) + getPaddingTop() + max);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        try {
            super.onDraw(canvas);
            canvas.drawOval(this.g, this.d);
            canvas.drawOval(this.h, this.f);
            float width = this.h.width() / 4.0f;
            float height = this.h.height() / 4.0f;
            float f = this.h.left + width;
            float f2 = this.h.top + height;
            float width2 = (this.h.left + this.h.width()) - width;
            float height2 = (this.h.top + this.h.height()) - height;
            this.e.setStrokeWidth(this.i);
            canvas.drawLine(f, f2, width2, height2, this.e);
            canvas.drawLine(width2, f2, f, height2, this.e);
        } catch (NullPointerException e) {
            Logger.a("CLOSE_BUTTON").d("Close button cannot render");
        }
    }
}
