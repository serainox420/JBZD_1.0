package android.support.v4.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Build;
import android.support.v4.view.ai;
import android.view.animation.Animation;
import android.widget.ImageView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CircleImageView.java */
/* loaded from: classes.dex */
public class b extends ImageView {

    /* renamed from: a  reason: collision with root package name */
    int f507a;
    private Animation.AnimationListener b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Context context, int i) {
        super(context);
        ShapeDrawable shapeDrawable;
        float f = getContext().getResources().getDisplayMetrics().density;
        int i2 = (int) (1.75f * f);
        int i3 = (int) (BitmapDescriptorFactory.HUE_RED * f);
        this.f507a = (int) (3.5f * f);
        if (a()) {
            shapeDrawable = new ShapeDrawable(new OvalShape());
            ai.h(this, f * 4.0f);
        } else {
            shapeDrawable = new ShapeDrawable(new a(this.f507a));
            ai.a(this, 1, shapeDrawable.getPaint());
            shapeDrawable.getPaint().setShadowLayer(this.f507a, i3, i2, 503316480);
            int i4 = this.f507a;
            setPadding(i4, i4, i4, i4);
        }
        shapeDrawable.getPaint().setColor(i);
        ai.a(this, shapeDrawable);
    }

    private boolean a() {
        return Build.VERSION.SDK_INT >= 21;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (!a()) {
            setMeasuredDimension(getMeasuredWidth() + (this.f507a * 2), getMeasuredHeight() + (this.f507a * 2));
        }
    }

    public void a(Animation.AnimationListener animationListener) {
        this.b = animationListener;
    }

    @Override // android.view.View
    public void onAnimationStart() {
        super.onAnimationStart();
        if (this.b != null) {
            this.b.onAnimationStart(getAnimation());
        }
    }

    @Override // android.view.View
    public void onAnimationEnd() {
        super.onAnimationEnd();
        if (this.b != null) {
            this.b.onAnimationEnd(getAnimation());
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        if (getBackground() instanceof ShapeDrawable) {
            ((ShapeDrawable) getBackground()).getPaint().setColor(i);
        }
    }

    /* compiled from: CircleImageView.java */
    /* loaded from: classes.dex */
    private class a extends OvalShape {
        private RadialGradient b;
        private Paint c = new Paint();

        a(int i) {
            b.this.f507a = i;
            a((int) rect().width());
        }

        @Override // android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
        protected void onResize(float f, float f2) {
            super.onResize(f, f2);
            a((int) f);
        }

        @Override // android.graphics.drawable.shapes.OvalShape, android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
        public void draw(Canvas canvas, Paint paint) {
            int width = b.this.getWidth();
            int height = b.this.getHeight();
            canvas.drawCircle(width / 2, height / 2, width / 2, this.c);
            canvas.drawCircle(width / 2, height / 2, (width / 2) - b.this.f507a, paint);
        }

        private void a(int i) {
            this.b = new RadialGradient(i / 2, i / 2, b.this.f507a, new int[]{1023410176, 0}, (float[]) null, Shader.TileMode.CLAMP);
            this.c.setShader(this.b);
        }
    }
}
