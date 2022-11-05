package android.support.v7.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.support.annotation.RestrictTo;
import android.support.v4.view.ai;
import android.support.v7.appcompat.R;
import android.support.v7.view.menu.h;
import android.support.v7.view.menu.p;
import android.support.v7.widget.ActionMenuView;
import android.support.v7.widget.AppCompatTextView;
import android.support.v7.widget.z;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Toast;
@RestrictTo
/* loaded from: classes.dex */
public class ActionMenuItemView extends AppCompatTextView implements p.a, ActionMenuView.a, View.OnClickListener, View.OnLongClickListener {

    /* renamed from: a  reason: collision with root package name */
    j f704a;
    h.b b;
    b c;
    private CharSequence d;
    private Drawable e;
    private z f;
    private boolean g;
    private boolean h;
    private int i;
    private int j;
    private int k;

    /* loaded from: classes.dex */
    public static abstract class b {
        public abstract s a();
    }

    public ActionMenuItemView(Context context) {
        this(context, null);
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Resources resources = context.getResources();
        this.g = e();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ActionMenuItemView, i, 0);
        this.i = obtainStyledAttributes.getDimensionPixelSize(R.styleable.ActionMenuItemView_android_minWidth, 0);
        obtainStyledAttributes.recycle();
        this.k = (int) ((resources.getDisplayMetrics().density * 32.0f) + 0.5f);
        setOnClickListener(this);
        setOnLongClickListener(this);
        this.j = -1;
        setSaveEnabled(false);
    }

    @Override // android.widget.TextView, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.g = e();
        f();
    }

    private boolean e() {
        Configuration configuration = getContext().getResources().getConfiguration();
        int b2 = android.support.v4.content.a.a.b(getResources());
        return b2 >= 480 || (b2 >= 640 && android.support.v4.content.a.a.a(getResources()) >= 480) || configuration.orientation == 2;
    }

    @Override // android.widget.TextView, android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        this.j = i;
        super.setPadding(i, i2, i3, i4);
    }

    @Override // android.support.v7.view.menu.p.a
    public j getItemData() {
        return this.f704a;
    }

    @Override // android.support.v7.view.menu.p.a
    public void a(j jVar, int i) {
        this.f704a = jVar;
        setIcon(jVar.getIcon());
        setTitle(jVar.a((p.a) this));
        setId(jVar.getItemId());
        setVisibility(jVar.isVisible() ? 0 : 8);
        setEnabled(jVar.isEnabled());
        if (jVar.hasSubMenu() && this.f == null) {
            this.f = new a();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.f704a.hasSubMenu() || this.f == null || !this.f.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.b != null) {
            this.b.a(this.f704a);
        }
    }

    public void setItemInvoker(h.b bVar) {
        this.b = bVar;
    }

    public void setPopupCallback(b bVar) {
        this.c = bVar;
    }

    @Override // android.support.v7.view.menu.p.a
    public boolean a() {
        return true;
    }

    public void setCheckable(boolean z) {
    }

    public void setChecked(boolean z) {
    }

    public void setExpandedFormat(boolean z) {
        if (this.h != z) {
            this.h = z;
            if (this.f704a != null) {
                this.f704a.h();
            }
        }
    }

    private void f() {
        boolean z = false;
        boolean z2 = !TextUtils.isEmpty(this.d);
        if (this.e == null || (this.f704a.m() && (this.g || this.h))) {
            z = true;
        }
        setText(z2 & z ? this.d : null);
    }

    public void setIcon(Drawable drawable) {
        this.e = drawable;
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (intrinsicWidth > this.k) {
                float f = this.k / intrinsicWidth;
                intrinsicWidth = this.k;
                intrinsicHeight = (int) (intrinsicHeight * f);
            }
            if (intrinsicHeight > this.k) {
                float f2 = this.k / intrinsicHeight;
                intrinsicHeight = this.k;
                intrinsicWidth = (int) (intrinsicWidth * f2);
            }
            drawable.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
        }
        setCompoundDrawables(drawable, null, null, null);
        f();
    }

    public boolean b() {
        return !TextUtils.isEmpty(getText());
    }

    public void setTitle(CharSequence charSequence) {
        this.d = charSequence;
        setContentDescription(this.d);
        f();
    }

    @Override // android.support.v7.widget.ActionMenuView.a
    public boolean c() {
        return b() && this.f704a.getIcon() == null;
    }

    @Override // android.support.v7.widget.ActionMenuView.a
    public boolean d() {
        return b();
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        if (b()) {
            return false;
        }
        int[] iArr = new int[2];
        Rect rect = new Rect();
        getLocationOnScreen(iArr);
        getWindowVisibleDisplayFrame(rect);
        Context context = getContext();
        int width = getWidth();
        int height = getHeight();
        int i = iArr[1] + (height / 2);
        int i2 = (width / 2) + iArr[0];
        if (ai.g(view) == 0) {
            i2 = context.getResources().getDisplayMetrics().widthPixels - i2;
        }
        Toast makeText = Toast.makeText(context, this.f704a.getTitle(), 0);
        if (i < rect.height()) {
            makeText.setGravity(8388661, i2, (iArr[1] + height) - rect.top);
        } else {
            makeText.setGravity(81, 0, height);
        }
        makeText.show();
        return true;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i, int i2) {
        boolean b2 = b();
        if (b2 && this.j >= 0) {
            super.setPadding(this.j, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int measuredWidth = getMeasuredWidth();
        int min = mode == Integer.MIN_VALUE ? Math.min(size, this.i) : this.i;
        if (mode != 1073741824 && this.i > 0 && measuredWidth < min) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(min, 1073741824), i2);
        }
        if (!b2 && this.e != null) {
            super.setPadding((getMeasuredWidth() - this.e.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
    }

    /* loaded from: classes.dex */
    private class a extends z {
        public a() {
            super(ActionMenuItemView.this);
        }

        @Override // android.support.v7.widget.z
        public s a() {
            if (ActionMenuItemView.this.c != null) {
                return ActionMenuItemView.this.c.a();
            }
            return null;
        }

        @Override // android.support.v7.widget.z
        protected boolean b() {
            s a2;
            return ActionMenuItemView.this.b != null && ActionMenuItemView.this.b.a(ActionMenuItemView.this.f704a) && (a2 = a()) != null && a2.f();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(null);
    }
}
