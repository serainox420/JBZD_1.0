package android.support.design.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.annotation.RestrictTo;
import android.support.design.R;
import android.support.v4.view.ai;
import android.support.v4.view.bg;
import android.support.v4.view.z;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
@RestrictTo
/* loaded from: classes.dex */
public class ScrimInsetsFrameLayout extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    Drawable f28a;
    Rect b;
    private Rect c;

    public ScrimInsetsFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ScrimInsetsFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.c = new Rect();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ScrimInsetsFrameLayout, i, R.style.Widget_Design_ScrimInsetsFrameLayout);
        this.f28a = obtainStyledAttributes.getDrawable(R.styleable.ScrimInsetsFrameLayout_insetForeground);
        obtainStyledAttributes.recycle();
        setWillNotDraw(true);
        ai.a(this, new z() { // from class: android.support.design.internal.ScrimInsetsFrameLayout.1
            @Override // android.support.v4.view.z
            public bg a(View view, bg bgVar) {
                if (ScrimInsetsFrameLayout.this.b == null) {
                    ScrimInsetsFrameLayout.this.b = new Rect();
                }
                ScrimInsetsFrameLayout.this.b.set(bgVar.a(), bgVar.b(), bgVar.c(), bgVar.d());
                ScrimInsetsFrameLayout.this.a(bgVar);
                ScrimInsetsFrameLayout.this.setWillNotDraw(!bgVar.e() || ScrimInsetsFrameLayout.this.f28a == null);
                ai.c(ScrimInsetsFrameLayout.this);
                return bgVar.g();
            }
        });
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        int width = getWidth();
        int height = getHeight();
        if (this.b != null && this.f28a != null) {
            int save = canvas.save();
            canvas.translate(getScrollX(), getScrollY());
            this.c.set(0, 0, width, this.b.top);
            this.f28a.setBounds(this.c);
            this.f28a.draw(canvas);
            this.c.set(0, height - this.b.bottom, width, height);
            this.f28a.setBounds(this.c);
            this.f28a.draw(canvas);
            this.c.set(0, this.b.top, this.b.left, height - this.b.bottom);
            this.f28a.setBounds(this.c);
            this.f28a.draw(canvas);
            this.c.set(width - this.b.right, this.b.top, width, height - this.b.bottom);
            this.f28a.setBounds(this.c);
            this.f28a.draw(canvas);
            canvas.restoreToCount(save);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f28a != null) {
            this.f28a.setCallback(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f28a != null) {
            this.f28a.setCallback(null);
        }
    }

    protected void a(bg bgVar) {
    }
}
