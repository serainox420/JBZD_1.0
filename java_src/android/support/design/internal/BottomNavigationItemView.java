package android.support.design.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.annotation.RestrictTo;
import android.support.design.R;
import android.support.v4.view.ac;
import android.support.v4.view.ai;
import android.support.v7.view.menu.j;
import android.support.v7.view.menu.p;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
@RestrictTo
/* loaded from: classes.dex */
public class BottomNavigationItemView extends FrameLayout implements p.a {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f21a = {16842912};
    private final int b;
    private final int c;
    private final float d;
    private final float e;
    private boolean f;
    private ImageView g;
    private final TextView h;
    private final TextView i;
    private int j;
    private j k;
    private ColorStateList l;

    public BottomNavigationItemView(Context context) {
        this(context, null);
    }

    public BottomNavigationItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BottomNavigationItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.j = -1;
        Resources resources = getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.design_bottom_navigation_text_size);
        int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.design_bottom_navigation_active_text_size);
        this.b = resources.getDimensionPixelSize(R.dimen.design_bottom_navigation_margin);
        this.c = dimensionPixelSize - dimensionPixelSize2;
        this.d = (dimensionPixelSize2 * 1.0f) / dimensionPixelSize;
        this.e = (dimensionPixelSize * 1.0f) / dimensionPixelSize2;
        LayoutInflater.from(context).inflate(R.layout.design_bottom_navigation_item, (ViewGroup) this, true);
        setBackgroundResource(R.drawable.design_bottom_navigation_item_background);
        this.g = (ImageView) findViewById(R.id.icon);
        this.h = (TextView) findViewById(R.id.smallLabel);
        this.i = (TextView) findViewById(R.id.largeLabel);
    }

    @Override // android.support.v7.view.menu.p.a
    public void a(j jVar, int i) {
        this.k = jVar;
        setCheckable(jVar.isCheckable());
        setChecked(jVar.isChecked());
        setEnabled(jVar.isEnabled());
        setIcon(jVar.getIcon());
        setTitle(jVar.getTitle());
        setId(jVar.getItemId());
    }

    public void setItemPosition(int i) {
        this.j = i;
    }

    public int getItemPosition() {
        return this.j;
    }

    public void setShiftingMode(boolean z) {
        this.f = z;
    }

    @Override // android.support.v7.view.menu.p.a
    public j getItemData() {
        return this.k;
    }

    public void setTitle(CharSequence charSequence) {
        this.h.setText(charSequence);
        this.i.setText(charSequence);
        setContentDescription(charSequence);
    }

    public void setCheckable(boolean z) {
        refreshDrawableState();
    }

    public void setChecked(boolean z) {
        ai.f(this.i, this.i.getWidth() / 2);
        ai.g(this.i, this.i.getBaseline());
        ai.f(this.h, this.h.getWidth() / 2);
        ai.g(this.h, this.h.getBaseline());
        if (this.f) {
            if (z) {
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.g.getLayoutParams();
                layoutParams.gravity = 49;
                layoutParams.topMargin = this.b;
                this.g.setLayoutParams(layoutParams);
                this.i.setVisibility(0);
                ai.d((View) this.i, 1.0f);
                ai.e((View) this.i, 1.0f);
            } else {
                FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.g.getLayoutParams();
                layoutParams2.gravity = 17;
                layoutParams2.topMargin = this.b;
                this.g.setLayoutParams(layoutParams2);
                this.i.setVisibility(4);
                ai.d((View) this.i, 0.5f);
                ai.e((View) this.i, 0.5f);
            }
            this.h.setVisibility(4);
        } else if (z) {
            FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) this.g.getLayoutParams();
            layoutParams3.gravity = 49;
            layoutParams3.topMargin = this.b + this.c;
            this.g.setLayoutParams(layoutParams3);
            this.i.setVisibility(0);
            this.h.setVisibility(4);
            ai.d((View) this.i, 1.0f);
            ai.e((View) this.i, 1.0f);
            ai.d(this.h, this.d);
            ai.e(this.h, this.d);
        } else {
            FrameLayout.LayoutParams layoutParams4 = (FrameLayout.LayoutParams) this.g.getLayoutParams();
            layoutParams4.gravity = 49;
            layoutParams4.topMargin = this.b;
            this.g.setLayoutParams(layoutParams4);
            this.i.setVisibility(4);
            this.h.setVisibility(0);
            ai.d(this.i, this.e);
            ai.e(this.i, this.e);
            ai.d((View) this.h, 1.0f);
            ai.e((View) this.h, 1.0f);
        }
        refreshDrawableState();
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.h.setEnabled(z);
        this.i.setEnabled(z);
        this.g.setEnabled(z);
        if (z) {
            ai.a(this, ac.a(getContext(), 1002));
        } else {
            ai.a(this, (ac) null);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (this.k != null && this.k.isCheckable() && this.k.isChecked()) {
            mergeDrawableStates(onCreateDrawableState, f21a);
        }
        return onCreateDrawableState;
    }

    public void setIcon(Drawable drawable) {
        if (drawable != null) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState != null) {
                drawable = constantState.newDrawable();
            }
            drawable = android.support.v4.b.a.a.g(drawable).mutate();
            android.support.v4.b.a.a.a(drawable, this.l);
        }
        this.g.setImageDrawable(drawable);
    }

    @Override // android.support.v7.view.menu.p.a
    public boolean a() {
        return false;
    }

    public void setIconTintList(ColorStateList colorStateList) {
        this.l = colorStateList;
        if (this.k != null) {
            setIcon(this.k.getIcon());
        }
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.h.setTextColor(colorStateList);
        this.i.setTextColor(colorStateList);
    }

    public void setItemBackground(int i) {
        ai.a(this, i == 0 ? null : android.support.v4.content.b.a(getContext(), i));
    }
}
