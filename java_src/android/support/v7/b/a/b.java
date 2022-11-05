package android.support.v7.b.a;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v7.appcompat.R;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* compiled from: DrawerArrowDrawable.java */
/* loaded from: classes.dex */
public class b extends Drawable {
    private static final float b = (float) Math.toRadians(45.0d);
    private float c;
    private float d;
    private float e;
    private float f;
    private boolean g;
    private final int i;
    private float k;
    private float l;

    /* renamed from: a  reason: collision with root package name */
    private final Paint f632a = new Paint();
    private final Path h = new Path();
    private boolean j = false;
    private int m = 2;

    public b(Context context) {
        this.f632a.setStyle(Paint.Style.STROKE);
        this.f632a.setStrokeJoin(Paint.Join.MITER);
        this.f632a.setStrokeCap(Paint.Cap.BUTT);
        this.f632a.setAntiAlias(true);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, R.styleable.DrawerArrowToggle, R.attr.drawerArrowStyle, R.style.Base_Widget_AppCompat_DrawerArrowToggle);
        a(obtainStyledAttributes.getColor(R.styleable.DrawerArrowToggle_color, 0));
        a(obtainStyledAttributes.getDimension(R.styleable.DrawerArrowToggle_thickness, BitmapDescriptorFactory.HUE_RED));
        a(obtainStyledAttributes.getBoolean(R.styleable.DrawerArrowToggle_spinBars, true));
        b(Math.round(obtainStyledAttributes.getDimension(R.styleable.DrawerArrowToggle_gapBetweenBars, BitmapDescriptorFactory.HUE_RED)));
        this.i = obtainStyledAttributes.getDimensionPixelSize(R.styleable.DrawerArrowToggle_drawableSize, 0);
        this.d = Math.round(obtainStyledAttributes.getDimension(R.styleable.DrawerArrowToggle_barLength, BitmapDescriptorFactory.HUE_RED));
        this.c = Math.round(obtainStyledAttributes.getDimension(R.styleable.DrawerArrowToggle_arrowHeadLength, BitmapDescriptorFactory.HUE_RED));
        this.e = obtainStyledAttributes.getDimension(R.styleable.DrawerArrowToggle_arrowShaftLength, BitmapDescriptorFactory.HUE_RED);
        obtainStyledAttributes.recycle();
    }

    public void a(int i) {
        if (i != this.f632a.getColor()) {
            this.f632a.setColor(i);
            invalidateSelf();
        }
    }

    public void a(float f) {
        if (this.f632a.getStrokeWidth() != f) {
            this.f632a.setStrokeWidth(f);
            this.l = (float) ((f / 2.0f) * Math.cos(b));
            invalidateSelf();
        }
    }

    public void b(float f) {
        if (f != this.f) {
            this.f = f;
            invalidateSelf();
        }
    }

    public void a(boolean z) {
        if (this.g != z) {
            this.g = z;
            invalidateSelf();
        }
    }

    public void b(boolean z) {
        if (this.j != z) {
            this.j = z;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        boolean z;
        float strokeWidth;
        Rect bounds = getBounds();
        switch (this.m) {
            case 0:
                z = false;
                break;
            case 1:
                z = true;
                break;
            case 2:
            default:
                if (android.support.v4.b.a.a.i(this) != 1) {
                    z = false;
                    break;
                } else {
                    z = true;
                    break;
                }
            case 3:
                if (android.support.v4.b.a.a.i(this) != 0) {
                    z = false;
                    break;
                } else {
                    z = true;
                    break;
                }
        }
        float a2 = a(this.d, (float) Math.sqrt(this.c * this.c * 2.0f), this.k);
        float a3 = a(this.d, this.e, this.k);
        float round = Math.round(a(BitmapDescriptorFactory.HUE_RED, this.l, this.k));
        float a4 = a(BitmapDescriptorFactory.HUE_RED, b, this.k);
        float a5 = a(z ? 0.0f : -180.0f, z ? 180.0f : BitmapDescriptorFactory.HUE_RED, this.k);
        float round2 = (float) Math.round(a2 * Math.cos(a4));
        float round3 = (float) Math.round(a2 * Math.sin(a4));
        this.h.rewind();
        float a6 = a(this.f + this.f632a.getStrokeWidth(), -this.l, this.k);
        float f = (-a3) / 2.0f;
        this.h.moveTo(f + round, BitmapDescriptorFactory.HUE_RED);
        this.h.rLineTo(a3 - (round * 2.0f), BitmapDescriptorFactory.HUE_RED);
        this.h.moveTo(f, a6);
        this.h.rLineTo(round2, round3);
        this.h.moveTo(f, -a6);
        this.h.rLineTo(round2, -round3);
        this.h.close();
        canvas.save();
        canvas.translate(bounds.centerX(), (float) (((((int) ((bounds.height() - (3.0f * strokeWidth)) - (this.f * 2.0f))) / 4) * 2) + (this.f632a.getStrokeWidth() * 1.5d) + this.f));
        if (this.g) {
            canvas.rotate((z ^ this.j ? -1 : 1) * a5);
        } else if (z) {
            canvas.rotate(180.0f);
        }
        canvas.drawPath(this.h, this.f632a);
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (i != this.f632a.getAlpha()) {
            this.f632a.setAlpha(i);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f632a.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.i;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.i;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public void c(float f) {
        if (this.k != f) {
            this.k = f;
            invalidateSelf();
        }
    }

    private static float a(float f, float f2, float f3) {
        return ((f2 - f) * f3) + f;
    }
}
