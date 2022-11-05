package com.inmobi.re.container;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.mobileads.resource.DrawableConstants;
/* loaded from: classes2.dex */
public class CustomView extends View {

    /* renamed from: a  reason: collision with root package name */
    private float f3909a;
    private float b;
    private float c;
    private float d;
    private float e;
    private SwitchIconType f;
    private int g;
    private Paint h;
    private Path i;
    private RectF j;

    /* loaded from: classes2.dex */
    public enum SwitchIconType {
        CLOSE_BUTTON,
        CLOSE_TRANSPARENT,
        CLOSE_ICON,
        REFRESH,
        BACK,
        FORWARD_ACTIVE,
        FORWARD_INACTIVE
    }

    private CustomView(Context context) {
        super(context);
    }

    public CustomView(Context context, float f, SwitchIconType switchIconType) {
        this(context);
        this.f = switchIconType;
        this.f3909a = f;
        this.g = 15;
        this.b = (50.0f * this.f3909a) / 2.0f;
        this.c = (30.0f * this.f3909a) / 2.0f;
        this.d = this.b - (this.c / 3.0f);
        this.e = this.b + (this.c / 3.0f);
        this.h = new Paint(1);
        this.j = new RectF();
        this.i = new Path();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.h.reset();
        switch (this.f) {
            case CLOSE_BUTTON:
                this.h.setAntiAlias(true);
                this.h.setColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
                this.h.setStrokeWidth(3.0f);
                this.h.setStyle(Paint.Style.FILL_AND_STROKE);
                canvas.drawCircle(this.b, this.b, this.c, this.h);
                this.h.setColor(-1);
                this.h.setStyle(Paint.Style.STROKE);
                canvas.drawLine(this.d, this.d, this.e, this.e, this.h);
                canvas.drawLine(this.d, this.e, this.e, this.d, this.h);
                canvas.drawCircle(this.b, this.b, this.c, this.h);
                return;
            case CLOSE_TRANSPARENT:
                this.h.setAntiAlias(true);
                this.h.setColor(0);
                this.h.setStrokeWidth(3.0f);
                this.h.setStyle(Paint.Style.FILL_AND_STROKE);
                canvas.drawCircle(this.b, this.b, this.b, this.h);
                return;
            case FORWARD_ACTIVE:
                this.i.reset();
                this.i.setFillType(Path.FillType.EVEN_ODD);
                this.i.moveTo((getWidth() / 2) - ((this.g * this.f3909a) / 2.0f), (getHeight() / 2) - ((this.g * this.f3909a) / 2.0f));
                this.i.lineTo((getWidth() / 2) + ((this.g * this.f3909a) / 2.0f), getHeight() / 2);
                this.i.lineTo((getWidth() / 2) - ((this.g * this.f3909a) / 2.0f), (getHeight() / 2) + ((this.g * this.f3909a) / 2.0f));
                this.i.lineTo((getWidth() / 2) - ((this.g * this.f3909a) / 2.0f), (getHeight() / 2) - ((this.g * this.f3909a) / 2.0f));
                this.i.close();
                this.h.setAntiAlias(true);
                this.h.setColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
                this.h.setStrokeWidth(3.0f);
                this.h.setStyle(Paint.Style.FILL_AND_STROKE);
                canvas.drawPath(this.i, this.h);
                return;
            case FORWARD_INACTIVE:
                this.i.reset();
                this.i.setFillType(Path.FillType.EVEN_ODD);
                this.i.moveTo((getWidth() / 2) - ((this.g * this.f3909a) / 2.0f), (getHeight() / 2) - ((this.g * this.f3909a) / 2.0f));
                this.i.lineTo((getWidth() / 2) + ((this.g * this.f3909a) / 2.0f), getHeight() / 2);
                this.i.lineTo((getWidth() / 2) - ((this.g * this.f3909a) / 2.0f), (getHeight() / 2) + ((this.g * this.f3909a) / 2.0f));
                this.i.lineTo((getWidth() / 2) - ((this.g * this.f3909a) / 2.0f), (getHeight() / 2) - ((this.g * this.f3909a) / 2.0f));
                this.i.close();
                this.h.setAntiAlias(true);
                this.h.setColor(-12303292);
                this.h.setStrokeWidth(3.0f);
                this.h.setStyle(Paint.Style.FILL_AND_STROKE);
                canvas.drawPath(this.i, this.h);
                return;
            case BACK:
                this.i.reset();
                this.i.setFillType(Path.FillType.EVEN_ODD);
                this.i.moveTo((getWidth() / 2) - ((this.g * this.f3909a) / 2.0f), getHeight() / 2);
                this.i.lineTo((getWidth() / 2) + ((this.g * this.f3909a) / 2.0f), (getHeight() / 2) - ((this.g * this.f3909a) / 2.0f));
                this.i.lineTo((getWidth() / 2) + ((this.g * this.f3909a) / 2.0f), (getHeight() / 2) + ((this.g * this.f3909a) / 2.0f));
                this.i.lineTo((getWidth() / 2) - ((this.g * this.f3909a) / 2.0f), getHeight() / 2);
                this.i.close();
                this.h.setAntiAlias(true);
                this.h.setColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
                this.h.setStrokeWidth(3.0f);
                this.h.setStyle(Paint.Style.FILL_AND_STROKE);
                canvas.drawPath(this.i, this.h);
                return;
            case REFRESH:
                this.i.reset();
                this.h.setAntiAlias(true);
                this.h.setColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
                this.h.setStrokeWidth(5.0f);
                this.h.setStyle(Paint.Style.STROKE);
                this.j.set((getWidth() / 2) - ((this.g * this.f3909a) / 2.0f), (getHeight() / 2) - ((this.g * this.f3909a) / 2.0f), (getWidth() / 2) + ((this.g * this.f3909a) / 2.0f), (getHeight() / 2) + ((this.g * this.f3909a) / 2.0f));
                canvas.drawArc(this.j, BitmapDescriptorFactory.HUE_RED, 270.0f, false, this.h);
                this.i.setFillType(Path.FillType.EVEN_ODD);
                this.i.moveTo((getWidth() / 2) + ((this.g * this.f3909a) / 2.0f), (getHeight() / 2) - (this.f3909a * 2.0f));
                this.i.lineTo(((getWidth() / 2) + ((this.g * this.f3909a) / 2.0f)) - (this.f3909a * 2.0f), getHeight() / 2);
                this.i.lineTo((getWidth() / 2) + ((this.g * this.f3909a) / 2.0f) + (this.f3909a * 2.0f), getHeight() / 2);
                this.i.lineTo((getWidth() / 2) + ((this.g * this.f3909a) / 2.0f), (getHeight() / 2) - (this.f3909a * 2.0f));
                this.i.close();
                this.h.setStyle(Paint.Style.FILL_AND_STROKE);
                canvas.drawPath(this.i, this.h);
                return;
            case CLOSE_ICON:
                this.h.setAntiAlias(true);
                this.h.setColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
                this.h.setStrokeWidth(5.0f);
                this.h.setStyle(Paint.Style.STROKE);
                canvas.drawLine((getWidth() / 2) - ((this.g * this.f3909a) / 2.0f), (getHeight() / 2) - ((this.g * this.f3909a) / 2.0f), ((this.g * this.f3909a) / 2.0f) + (getWidth() / 2), ((this.g * this.f3909a) / 2.0f) + (getHeight() / 2), this.h);
                canvas.drawLine((getWidth() / 2) - ((this.g * this.f3909a) / 2.0f), ((this.g * this.f3909a) / 2.0f) + (getHeight() / 2), ((this.g * this.f3909a) / 2.0f) + (getWidth() / 2), (getHeight() / 2) - ((this.g * this.f3909a) / 2.0f), this.h);
                return;
            default:
                return;
        }
    }

    public void setSwitchInt(SwitchIconType switchIconType) {
        this.f = switchIconType;
    }

    public void disableView(boolean z) {
        if (z) {
            setClickable(false);
            setEnabled(false);
            return;
        }
        setClickable(true);
        setEnabled(true);
    }
}
