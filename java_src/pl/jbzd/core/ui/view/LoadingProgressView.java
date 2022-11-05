package pl.jbzd.core.ui.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes3.dex */
public class LoadingProgressView extends View {

    /* renamed from: a  reason: collision with root package name */
    private int f6113a;
    private float b;
    private Paint c;
    private RectF d;

    public LoadingProgressView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6113a = 0;
        this.b = BitmapDescriptorFactory.HUE_RED;
        a();
    }

    public LoadingProgressView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f6113a = 0;
        this.b = BitmapDescriptorFactory.HUE_RED;
        a();
    }

    private void a() {
        this.c = new Paint();
        this.c.setAntiAlias(true);
        this.c.setStyle(Paint.Style.STROKE);
        this.c.setColor(-1);
        this.c.setStrokeWidth(10.0f);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        b();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.b >= 100.0f) {
            canvas.drawArc(this.d, -90.0f, 360.0f, false, this.c);
        } else {
            for (float f = -90.0f; f < 360.0f; f += 1.0f) {
                canvas.drawArc(this.d, -90.0f, (this.b * 360.0f) / 500.0f, false, this.c);
            }
        }
        super.onDraw(canvas);
    }

    private void b() {
        this.d = new RectF(10.0f, 10.0f, getWidth() - 10, getWidth() - 10);
    }

    public void setCurrentProgress(float f) {
        this.b = f;
        postInvalidate();
    }
}
