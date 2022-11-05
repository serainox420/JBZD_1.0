package android.support.design.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.support.annotation.RestrictTo;
import android.support.design.R;
import android.support.v4.view.ai;
import android.support.v4.widget.z;
import android.support.v7.view.menu.j;
import android.support.v7.view.menu.p;
import android.support.v7.widget.LinearLayoutCompat;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.CheckedTextView;
import android.widget.FrameLayout;
import com.google.android.gms.vision.barcode.Barcode;
@RestrictTo
/* loaded from: classes.dex */
public class NavigationMenuItemView extends ForegroundLinearLayout implements p.a {
    private static final int[] d = {16842912};
    boolean c;
    private final int e;
    private boolean f;
    private final CheckedTextView g;
    private FrameLayout h;
    private j i;
    private ColorStateList j;
    private boolean k;
    private Drawable l;
    private final android.support.v4.view.a m;

    public NavigationMenuItemView(Context context) {
        this(context, null);
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.m = new android.support.v4.view.a() { // from class: android.support.design.internal.NavigationMenuItemView.1
            @Override // android.support.v4.view.a
            public void a(View view, android.support.v4.view.a.c cVar) {
                super.a(view, cVar);
                cVar.a(NavigationMenuItemView.this.c);
            }
        };
        setOrientation(0);
        LayoutInflater.from(context).inflate(R.layout.design_navigation_menu_item, (ViewGroup) this, true);
        this.e = context.getResources().getDimensionPixelSize(R.dimen.design_navigation_icon_size);
        this.g = (CheckedTextView) findViewById(R.id.design_menu_item_text);
        this.g.setDuplicateParentStateEnabled(true);
        ai.a(this.g, this.m);
    }

    @Override // android.support.v7.view.menu.p.a
    public void a(j jVar, int i) {
        this.i = jVar;
        setVisibility(jVar.isVisible() ? 0 : 8);
        if (getBackground() == null) {
            ai.a(this, e());
        }
        setCheckable(jVar.isCheckable());
        setChecked(jVar.isChecked());
        setEnabled(jVar.isEnabled());
        setTitle(jVar.getTitle());
        setIcon(jVar.getIcon());
        setActionView(jVar.getActionView());
        d();
    }

    private boolean c() {
        return this.i.getTitle() == null && this.i.getIcon() == null && this.i.getActionView() != null;
    }

    private void d() {
        if (c()) {
            this.g.setVisibility(8);
            if (this.h != null) {
                LinearLayoutCompat.LayoutParams layoutParams = (LinearLayoutCompat.LayoutParams) this.h.getLayoutParams();
                layoutParams.width = -1;
                this.h.setLayoutParams(layoutParams);
                return;
            }
            return;
        }
        this.g.setVisibility(0);
        if (this.h != null) {
            LinearLayoutCompat.LayoutParams layoutParams2 = (LinearLayoutCompat.LayoutParams) this.h.getLayoutParams();
            layoutParams2.width = -2;
            this.h.setLayoutParams(layoutParams2);
        }
    }

    public void b() {
        if (this.h != null) {
            this.h.removeAllViews();
        }
        this.g.setCompoundDrawables(null, null, null, null);
    }

    private void setActionView(View view) {
        if (view != null) {
            if (this.h == null) {
                this.h = (FrameLayout) ((ViewStub) findViewById(R.id.design_menu_item_action_area_stub)).inflate();
            }
            this.h.removeAllViews();
            this.h.addView(view);
        }
    }

    private StateListDrawable e() {
        TypedValue typedValue = new TypedValue();
        if (getContext().getTheme().resolveAttribute(android.support.v7.appcompat.R.attr.colorControlHighlight, typedValue, true)) {
            StateListDrawable stateListDrawable = new StateListDrawable();
            stateListDrawable.addState(d, new ColorDrawable(typedValue.data));
            stateListDrawable.addState(EMPTY_STATE_SET, new ColorDrawable(0));
            return stateListDrawable;
        }
        return null;
    }

    @Override // android.support.v7.view.menu.p.a
    public j getItemData() {
        return this.i;
    }

    public void setTitle(CharSequence charSequence) {
        this.g.setText(charSequence);
    }

    public void setCheckable(boolean z) {
        refreshDrawableState();
        if (this.c != z) {
            this.c = z;
            this.m.a(this.g, Barcode.PDF417);
        }
    }

    public void setChecked(boolean z) {
        refreshDrawableState();
        this.g.setChecked(z);
    }

    public void setIcon(Drawable drawable) {
        if (drawable != null) {
            if (this.k) {
                Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                drawable = android.support.v4.b.a.a.g(drawable).mutate();
                android.support.v4.b.a.a.a(drawable, this.j);
            }
            drawable.setBounds(0, 0, this.e, this.e);
        } else if (this.f) {
            if (this.l == null) {
                this.l = android.support.v4.content.a.d.a(getResources(), R.drawable.navigation_empty_icon, getContext().getTheme());
                if (this.l != null) {
                    this.l.setBounds(0, 0, this.e, this.e);
                }
            }
            drawable = this.l;
        }
        z.a(this.g, drawable, null, null, null);
    }

    @Override // android.support.v7.view.menu.p.a
    public boolean a() {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (this.i != null && this.i.isCheckable() && this.i.isChecked()) {
            mergeDrawableStates(onCreateDrawableState, d);
        }
        return onCreateDrawableState;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setIconTintList(ColorStateList colorStateList) {
        this.j = colorStateList;
        this.k = this.j != null;
        if (this.i != null) {
            setIcon(this.i.getIcon());
        }
    }

    public void setTextAppearance(int i) {
        z.a(this.g, i);
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.g.setTextColor(colorStateList);
    }

    public void setNeedsEmptyIcon(boolean z) {
        this.f = z;
    }
}
