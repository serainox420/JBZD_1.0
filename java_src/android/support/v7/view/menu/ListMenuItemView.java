package android.support.v7.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.annotation.RestrictTo;
import android.support.v4.view.ai;
import android.support.v7.appcompat.R;
import android.support.v7.view.menu.p;
import android.support.v7.widget.av;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
@RestrictTo
/* loaded from: classes.dex */
public class ListMenuItemView extends LinearLayout implements p.a {

    /* renamed from: a  reason: collision with root package name */
    private j f707a;
    private ImageView b;
    private RadioButton c;
    private TextView d;
    private CheckBox e;
    private TextView f;
    private ImageView g;
    private Drawable h;
    private int i;
    private Context j;
    private boolean k;
    private Drawable l;
    private int m;
    private LayoutInflater n;
    private boolean o;

    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.listMenuViewStyle);
    }

    public ListMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        av a2 = av.a(getContext(), attributeSet, R.styleable.MenuView, i, 0);
        this.h = a2.a(R.styleable.MenuView_android_itemBackground);
        this.i = a2.g(R.styleable.MenuView_android_itemTextAppearance, -1);
        this.k = a2.a(R.styleable.MenuView_preserveIconSpacing, false);
        this.j = context;
        this.l = a2.a(R.styleable.MenuView_subMenuArrow);
        a2.a();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        ai.a(this, this.h);
        this.d = (TextView) findViewById(R.id.title);
        if (this.i != -1) {
            this.d.setTextAppearance(this.j, this.i);
        }
        this.f = (TextView) findViewById(R.id.shortcut);
        this.g = (ImageView) findViewById(R.id.submenuarrow);
        if (this.g != null) {
            this.g.setImageDrawable(this.l);
        }
    }

    @Override // android.support.v7.view.menu.p.a
    public void a(j jVar, int i) {
        this.f707a = jVar;
        this.m = i;
        setVisibility(jVar.isVisible() ? 0 : 8);
        setTitle(jVar.a((p.a) this));
        setCheckable(jVar.isCheckable());
        a(jVar.f(), jVar.d());
        setIcon(jVar.getIcon());
        setEnabled(jVar.isEnabled());
        setSubMenuArrowVisible(jVar.hasSubMenu());
    }

    public void setForceShowIcon(boolean z) {
        this.o = z;
        this.k = z;
    }

    public void setTitle(CharSequence charSequence) {
        if (charSequence != null) {
            this.d.setText(charSequence);
            if (this.d.getVisibility() != 0) {
                this.d.setVisibility(0);
            }
        } else if (this.d.getVisibility() != 8) {
            this.d.setVisibility(8);
        }
    }

    @Override // android.support.v7.view.menu.p.a
    public j getItemData() {
        return this.f707a;
    }

    public void setCheckable(boolean z) {
        CompoundButton compoundButton;
        CompoundButton compoundButton2;
        if (z || this.c != null || this.e != null) {
            if (this.f707a.g()) {
                if (this.c == null) {
                    c();
                }
                compoundButton = this.c;
                compoundButton2 = this.e;
            } else {
                if (this.e == null) {
                    d();
                }
                compoundButton = this.e;
                compoundButton2 = this.c;
            }
            if (z) {
                compoundButton.setChecked(this.f707a.isChecked());
                int i = z ? 0 : 8;
                if (compoundButton.getVisibility() != i) {
                    compoundButton.setVisibility(i);
                }
                if (compoundButton2 != null && compoundButton2.getVisibility() != 8) {
                    compoundButton2.setVisibility(8);
                    return;
                }
                return;
            }
            if (this.e != null) {
                this.e.setVisibility(8);
            }
            if (this.c != null) {
                this.c.setVisibility(8);
            }
        }
    }

    public void setChecked(boolean z) {
        CompoundButton compoundButton;
        if (this.f707a.g()) {
            if (this.c == null) {
                c();
            }
            compoundButton = this.c;
        } else {
            if (this.e == null) {
                d();
            }
            compoundButton = this.e;
        }
        compoundButton.setChecked(z);
    }

    private void setSubMenuArrowVisible(boolean z) {
        if (this.g != null) {
            this.g.setVisibility(z ? 0 : 8);
        }
    }

    public void a(boolean z, char c) {
        int i = (!z || !this.f707a.f()) ? 8 : 0;
        if (i == 0) {
            this.f.setText(this.f707a.e());
        }
        if (this.f.getVisibility() != i) {
            this.f.setVisibility(i);
        }
    }

    public void setIcon(Drawable drawable) {
        boolean z = this.f707a.i() || this.o;
        if (z || this.k) {
            if (this.b != null || drawable != null || this.k) {
                if (this.b == null) {
                    b();
                }
                if (drawable != null || this.k) {
                    ImageView imageView = this.b;
                    if (!z) {
                        drawable = null;
                    }
                    imageView.setImageDrawable(drawable);
                    if (this.b.getVisibility() != 0) {
                        this.b.setVisibility(0);
                        return;
                    }
                    return;
                }
                this.b.setVisibility(8);
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.b != null && this.k) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.b.getLayoutParams();
            if (layoutParams.height > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = layoutParams.height;
            }
        }
        super.onMeasure(i, i2);
    }

    private void b() {
        this.b = (ImageView) getInflater().inflate(R.layout.abc_list_menu_item_icon, (ViewGroup) this, false);
        addView(this.b, 0);
    }

    private void c() {
        this.c = (RadioButton) getInflater().inflate(R.layout.abc_list_menu_item_radio, (ViewGroup) this, false);
        addView(this.c);
    }

    private void d() {
        this.e = (CheckBox) getInflater().inflate(R.layout.abc_list_menu_item_checkbox, (ViewGroup) this, false);
        addView(this.e);
    }

    @Override // android.support.v7.view.menu.p.a
    public boolean a() {
        return false;
    }

    private LayoutInflater getInflater() {
        if (this.n == null) {
            this.n = LayoutInflater.from(getContext());
        }
        return this.n;
    }
}
