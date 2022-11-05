package android.support.design.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.design.R;
import android.support.design.widget.r;
import android.support.v4.view.AbsSavedState;
import android.support.v4.view.ai;
import android.support.v4.view.be;
import android.support.v4.widget.Space;
import android.support.v4.widget.z;
import android.support.v7.widget.AppCompatTextView;
import android.support.v7.widget.av;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.AccelerateInterpolator;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.vision.barcode.Barcode;
/* loaded from: classes.dex */
public class TextInputLayout extends LinearLayout {
    private Drawable A;
    private Drawable B;
    private ColorStateList C;
    private boolean D;
    private PorterDuff.Mode E;
    private boolean F;
    private ColorStateList G;
    private ColorStateList H;
    private boolean I;
    private boolean J;
    private r K;
    private boolean L;
    private boolean M;
    private boolean N;

    /* renamed from: a  reason: collision with root package name */
    EditText f87a;
    TextView b;
    boolean c;
    final e d;
    private final FrameLayout e;
    private boolean f;
    private CharSequence g;
    private Paint h;
    private final Rect i;
    private LinearLayout j;
    private int k;
    private Typeface l;
    private boolean m;
    private int n;
    private boolean o;
    private CharSequence p;
    private TextView q;
    private int r;
    private int s;
    private int t;
    private boolean u;
    private boolean v;
    private Drawable w;
    private CharSequence x;
    private CheckableImageButton y;
    private boolean z;

    public TextInputLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TextInputLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        this.i = new Rect();
        this.d = new e(this);
        q.a(context);
        setOrientation(1);
        setWillNotDraw(false);
        setAddStatesFromChildren(true);
        this.e = new FrameLayout(context);
        this.e.setAddStatesFromChildren(true);
        addView(this.e);
        this.d.a(android.support.design.widget.a.b);
        this.d.b(new AccelerateInterpolator());
        this.d.b(8388659);
        av a2 = av.a(context, attributeSet, R.styleable.TextInputLayout, i, R.style.Widget_Design_TextInputLayout);
        this.f = a2.a(R.styleable.TextInputLayout_hintEnabled, true);
        setHint(a2.c(R.styleable.TextInputLayout_android_hint));
        this.J = a2.a(R.styleable.TextInputLayout_hintAnimationEnabled, true);
        if (a2.g(R.styleable.TextInputLayout_android_textColorHint)) {
            ColorStateList e = a2.e(R.styleable.TextInputLayout_android_textColorHint);
            this.H = e;
            this.G = e;
        }
        if (a2.g(R.styleable.TextInputLayout_hintTextAppearance, -1) != -1) {
            setHintTextAppearance(a2.g(R.styleable.TextInputLayout_hintTextAppearance, 0));
        }
        this.n = a2.g(R.styleable.TextInputLayout_errorTextAppearance, 0);
        boolean a3 = a2.a(R.styleable.TextInputLayout_errorEnabled, false);
        boolean a4 = a2.a(R.styleable.TextInputLayout_counterEnabled, false);
        setCounterMaxLength(a2.a(R.styleable.TextInputLayout_counterMaxLength, -1));
        this.s = a2.g(R.styleable.TextInputLayout_counterTextAppearance, 0);
        this.t = a2.g(R.styleable.TextInputLayout_counterOverflowTextAppearance, 0);
        this.v = a2.a(R.styleable.TextInputLayout_passwordToggleEnabled, false);
        this.w = a2.a(R.styleable.TextInputLayout_passwordToggleDrawable);
        this.x = a2.c(R.styleable.TextInputLayout_passwordToggleContentDescription);
        if (a2.g(R.styleable.TextInputLayout_passwordToggleTint)) {
            this.D = true;
            this.C = a2.e(R.styleable.TextInputLayout_passwordToggleTint);
        }
        if (a2.g(R.styleable.TextInputLayout_passwordToggleTintMode)) {
            this.F = true;
            this.E = x.a(a2.a(R.styleable.TextInputLayout_passwordToggleTintMode, -1), (PorterDuff.Mode) null);
        }
        a2.a();
        setErrorEnabled(a3);
        setCounterEnabled(a4);
        i();
        if (ai.d(this) == 0) {
            ai.c((View) this, 1);
        }
        ai.a(this, new a());
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (view instanceof EditText) {
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
            layoutParams2.gravity = (layoutParams2.gravity & (-113)) | 16;
            this.e.addView(view, layoutParams2);
            this.e.setLayoutParams(layoutParams);
            b();
            setEditText((EditText) view);
            return;
        }
        super.addView(view, i, layoutParams);
    }

    public void setTypeface(Typeface typeface) {
        if (typeface != this.l) {
            this.l = typeface;
            this.d.c(typeface);
            if (this.q != null) {
                this.q.setTypeface(typeface);
            }
            if (this.b != null) {
                this.b.setTypeface(typeface);
            }
        }
    }

    public Typeface getTypeface() {
        return this.l;
    }

    private void setEditText(EditText editText) {
        if (this.f87a != null) {
            throw new IllegalArgumentException("We already have an EditText, can only have one");
        }
        if (!(editText instanceof TextInputEditText)) {
            Log.i("TextInputLayout", "EditText added is not a TextInputEditText. Please switch to using that class instead.");
        }
        this.f87a = editText;
        if (!g()) {
            this.d.c(this.f87a.getTypeface());
        }
        this.d.a(this.f87a.getTextSize());
        int gravity = this.f87a.getGravity();
        this.d.b((gravity & (-113)) | 48);
        this.d.a(gravity);
        this.f87a.addTextChangedListener(new TextWatcher() { // from class: android.support.design.widget.TextInputLayout.1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                TextInputLayout.this.a(!TextInputLayout.this.N);
                if (TextInputLayout.this.c) {
                    TextInputLayout.this.a(editable.length());
                }
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }
        });
        if (this.G == null) {
            this.G = this.f87a.getHintTextColors();
        }
        if (this.f && TextUtils.isEmpty(this.g)) {
            setHint(this.f87a.getHint());
            this.f87a.setHint((CharSequence) null);
        }
        if (this.q != null) {
            a(this.f87a.getText().length());
        }
        if (this.j != null) {
            c();
        }
        f();
        a(false, true);
    }

    private void b() {
        int i;
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.e.getLayoutParams();
        if (this.f) {
            if (this.h == null) {
                this.h = new Paint();
            }
            this.h.setTypeface(this.d.d());
            this.h.setTextSize(this.d.h());
            i = (int) (-this.h.ascent());
        } else {
            i = 0;
        }
        if (i != layoutParams.topMargin) {
            layoutParams.topMargin = i;
            this.e.requestLayout();
        }
    }

    void a(boolean z) {
        a(z, false);
    }

    void a(boolean z, boolean z2) {
        boolean z3 = true;
        boolean isEnabled = isEnabled();
        boolean z4 = this.f87a != null && !TextUtils.isEmpty(this.f87a.getText());
        boolean a2 = a(getDrawableState(), 16842908);
        if (TextUtils.isEmpty(getError())) {
            z3 = false;
        }
        if (this.G != null) {
            this.d.b(this.G);
        }
        if (isEnabled && this.u && this.q != null) {
            this.d.a(this.q.getTextColors());
        } else if (isEnabled && a2 && this.H != null) {
            this.d.a(this.H);
        } else if (this.G != null) {
            this.d.a(this.G);
        }
        if (z4 || (isEnabled() && (a2 || z3))) {
            if (z2 || this.I) {
                b(z);
            }
        } else if (z2 || !this.I) {
            c(z);
        }
    }

    public EditText getEditText() {
        return this.f87a;
    }

    public void setHint(CharSequence charSequence) {
        if (this.f) {
            setHintInternal(charSequence);
            sendAccessibilityEvent(Barcode.PDF417);
        }
    }

    private void setHintInternal(CharSequence charSequence) {
        this.g = charSequence;
        this.d.a(charSequence);
    }

    public CharSequence getHint() {
        if (this.f) {
            return this.g;
        }
        return null;
    }

    public void setHintEnabled(boolean z) {
        if (z != this.f) {
            this.f = z;
            CharSequence hint = this.f87a.getHint();
            if (!this.f) {
                if (!TextUtils.isEmpty(this.g) && TextUtils.isEmpty(hint)) {
                    this.f87a.setHint(this.g);
                }
                setHintInternal(null);
            } else if (!TextUtils.isEmpty(hint)) {
                if (TextUtils.isEmpty(this.g)) {
                    setHint(hint);
                }
                this.f87a.setHint((CharSequence) null);
            }
            if (this.f87a != null) {
                b();
            }
        }
    }

    public void setHintTextAppearance(int i) {
        this.d.c(i);
        this.H = this.d.k();
        if (this.f87a != null) {
            a(false);
            b();
        }
    }

    private void a(TextView textView, int i) {
        if (this.j == null) {
            this.j = new LinearLayout(getContext());
            this.j.setOrientation(0);
            addView(this.j, -1, -2);
            this.j.addView(new Space(getContext()), new LinearLayout.LayoutParams(0, 0, 1.0f));
            if (this.f87a != null) {
                c();
            }
        }
        this.j.setVisibility(0);
        this.j.addView(textView, i);
        this.k++;
    }

    private void c() {
        ai.b(this.j, ai.k(this.f87a), 0, ai.l(this.f87a), this.f87a.getPaddingBottom());
    }

    private void a(TextView textView) {
        if (this.j != null) {
            this.j.removeView(textView);
            int i = this.k - 1;
            this.k = i;
            if (i == 0) {
                this.j.setVisibility(8);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0051  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setErrorEnabled(boolean z) {
        boolean z2;
        if (this.m != z) {
            if (this.b != null) {
                ai.r(this.b).b();
            }
            if (z) {
                this.b = new AppCompatTextView(getContext());
                this.b.setId(R.id.textinput_error);
                if (this.l != null) {
                    this.b.setTypeface(this.l);
                }
                try {
                    z.a(this.b, this.n);
                } catch (Exception e) {
                    z2 = true;
                }
                if (Build.VERSION.SDK_INT >= 23) {
                    if (this.b.getTextColors().getDefaultColor() == -65281) {
                        z2 = true;
                        if (z2) {
                            z.a(this.b, android.support.v7.appcompat.R.style.TextAppearance_AppCompat_Caption);
                            this.b.setTextColor(android.support.v4.content.b.c(getContext(), R.color.design_textinput_error_color_light));
                        }
                        this.b.setVisibility(4);
                        ai.d((View) this.b, 1);
                        a(this.b, 0);
                    }
                }
                z2 = false;
                if (z2) {
                }
                this.b.setVisibility(4);
                ai.d((View) this.b, 1);
                a(this.b, 0);
            } else {
                this.o = false;
                d();
                a(this.b);
                this.b = null;
            }
            this.m = z;
        }
    }

    public void setErrorTextAppearance(int i) {
        this.n = i;
        if (this.b != null) {
            z.a(this.b, i);
        }
    }

    public void setError(CharSequence charSequence) {
        a(charSequence, ai.F(this) && isEnabled() && (this.b == null || !TextUtils.equals(this.b.getText(), charSequence)));
    }

    private void a(final CharSequence charSequence, boolean z) {
        boolean z2 = true;
        this.p = charSequence;
        if (!this.m) {
            if (!TextUtils.isEmpty(charSequence)) {
                setErrorEnabled(true);
            } else {
                return;
            }
        }
        if (TextUtils.isEmpty(charSequence)) {
            z2 = false;
        }
        this.o = z2;
        ai.r(this.b).b();
        if (this.o) {
            this.b.setText(charSequence);
            this.b.setVisibility(0);
            if (z) {
                if (ai.e(this.b) == 1.0f) {
                    ai.c(this.b, (float) BitmapDescriptorFactory.HUE_RED);
                }
                ai.r(this.b).a(1.0f).a(200L).a(android.support.design.widget.a.d).a(new be() { // from class: android.support.design.widget.TextInputLayout.2
                    @Override // android.support.v4.view.be, android.support.v4.view.bd
                    public void a(View view) {
                        view.setVisibility(0);
                    }
                }).c();
            } else {
                ai.c((View) this.b, 1.0f);
            }
        } else if (this.b.getVisibility() == 0) {
            if (z) {
                ai.r(this.b).a(BitmapDescriptorFactory.HUE_RED).a(200L).a(android.support.design.widget.a.c).a(new be() { // from class: android.support.design.widget.TextInputLayout.3
                    @Override // android.support.v4.view.be, android.support.v4.view.bd
                    public void b(View view) {
                        TextInputLayout.this.b.setText(charSequence);
                        view.setVisibility(4);
                    }
                }).c();
            } else {
                this.b.setText(charSequence);
                this.b.setVisibility(4);
            }
        }
        d();
        a(z);
    }

    public void setCounterEnabled(boolean z) {
        if (this.c != z) {
            if (z) {
                this.q = new AppCompatTextView(getContext());
                this.q.setId(R.id.textinput_counter);
                if (this.l != null) {
                    this.q.setTypeface(this.l);
                }
                this.q.setMaxLines(1);
                try {
                    z.a(this.q, this.s);
                } catch (Exception e) {
                    z.a(this.q, android.support.v7.appcompat.R.style.TextAppearance_AppCompat_Caption);
                    this.q.setTextColor(android.support.v4.content.b.c(getContext(), R.color.design_textinput_error_color_light));
                }
                a(this.q, -1);
                if (this.f87a == null) {
                    a(0);
                } else {
                    a(this.f87a.getText().length());
                }
            } else {
                a(this.q);
                this.q = null;
            }
            this.c = z;
        }
    }

    public void setCounterMaxLength(int i) {
        if (this.r != i) {
            if (i > 0) {
                this.r = i;
            } else {
                this.r = -1;
            }
            if (this.c) {
                a(this.f87a == null ? 0 : this.f87a.getText().length());
            }
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        a(this, z);
        super.setEnabled(z);
    }

    private static void a(ViewGroup viewGroup, boolean z) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            childAt.setEnabled(z);
            if (childAt instanceof ViewGroup) {
                a((ViewGroup) childAt, z);
            }
        }
    }

    public int getCounterMaxLength() {
        return this.r;
    }

    void a(int i) {
        boolean z = this.u;
        if (this.r == -1) {
            this.q.setText(String.valueOf(i));
            this.u = false;
        } else {
            this.u = i > this.r;
            if (z != this.u) {
                z.a(this.q, this.u ? this.t : this.s);
            }
            this.q.setText(getContext().getString(R.string.character_counter_pattern, Integer.valueOf(i), Integer.valueOf(this.r)));
        }
        if (this.f87a != null && z != this.u) {
            a(false);
            d();
        }
    }

    private void d() {
        Drawable background;
        if (this.f87a != null && (background = this.f87a.getBackground()) != null) {
            e();
            if (android.support.v7.widget.w.c(background)) {
                background = background.mutate();
            }
            if (this.o && this.b != null) {
                background.setColorFilter(android.support.v7.widget.h.a(this.b.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
            } else if (this.u && this.q != null) {
                background.setColorFilter(android.support.v7.widget.h.a(this.q.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
            } else {
                android.support.v4.b.a.a.f(background);
                this.f87a.refreshDrawableState();
            }
        }
    }

    private void e() {
        Drawable background;
        int i = Build.VERSION.SDK_INT;
        if ((i == 21 || i == 22) && (background = this.f87a.getBackground()) != null && !this.L) {
            Drawable newDrawable = background.getConstantState().newDrawable();
            if (background instanceof DrawableContainer) {
                this.L = g.a((DrawableContainer) background, newDrawable.getConstantState());
            }
            if (!this.L) {
                ai.a(this.f87a, newDrawable);
                this.L = true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = android.support.v4.os.e.a(new android.support.v4.os.f<SavedState>() { // from class: android.support.design.widget.TextInputLayout.SavedState.1
            @Override // android.support.v4.os.f
            /* renamed from: a */
            public SavedState b(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.support.v4.os.f
            /* renamed from: a */
            public SavedState[] b(int i) {
                return new SavedState[i];
            }
        });

        /* renamed from: a  reason: collision with root package name */
        CharSequence f93a;

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f93a = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        }

        @Override // android.support.v4.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            TextUtils.writeToParcel(this.f93a, parcel, i);
        }

        public String toString() {
            return "TextInputLayout.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " error=" + ((Object) this.f93a) + "}";
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        if (this.o) {
            savedState.f93a = getError();
        }
        return savedState;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.a());
        setError(savedState.f93a);
        requestLayout();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        this.N = true;
        super.dispatchRestoreInstanceState(sparseArray);
        this.N = false;
    }

    public CharSequence getError() {
        if (this.m) {
            return this.p;
        }
        return null;
    }

    public void setHintAnimationEnabled(boolean z) {
        this.J = z;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.f) {
            this.d.a(canvas);
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        f();
        super.onMeasure(i, i2);
    }

    private void f() {
        if (this.f87a != null) {
            if (h()) {
                if (this.y == null) {
                    this.y = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(R.layout.design_text_input_password_icon, (ViewGroup) this.e, false);
                    this.y.setImageDrawable(this.w);
                    this.y.setContentDescription(this.x);
                    this.e.addView(this.y);
                    this.y.setOnClickListener(new View.OnClickListener() { // from class: android.support.design.widget.TextInputLayout.4
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            TextInputLayout.this.a();
                        }
                    });
                }
                if (this.f87a != null && ai.q(this.f87a) <= 0) {
                    this.f87a.setMinimumHeight(ai.q(this.y));
                }
                this.y.setVisibility(0);
                this.y.setChecked(this.z);
                if (this.A == null) {
                    this.A = new ColorDrawable();
                }
                this.A.setBounds(0, 0, this.y.getMeasuredWidth(), 1);
                Drawable[] b = z.b(this.f87a);
                if (b[2] != this.A) {
                    this.B = b[2];
                }
                z.a(this.f87a, b[0], b[1], this.A, b[3]);
                this.y.setPadding(this.f87a.getPaddingLeft(), this.f87a.getPaddingTop(), this.f87a.getPaddingRight(), this.f87a.getPaddingBottom());
                return;
            }
            if (this.y != null && this.y.getVisibility() == 0) {
                this.y.setVisibility(8);
            }
            if (this.A != null) {
                Drawable[] b2 = z.b(this.f87a);
                if (b2[2] == this.A) {
                    z.a(this.f87a, b2[0], b2[1], this.B, b2[3]);
                    this.A = null;
                }
            }
        }
    }

    public void setPasswordVisibilityToggleDrawable(int i) {
        setPasswordVisibilityToggleDrawable(i != 0 ? android.support.v7.a.a.b.b(getContext(), i) : null);
    }

    public void setPasswordVisibilityToggleDrawable(Drawable drawable) {
        this.w = drawable;
        if (this.y != null) {
            this.y.setImageDrawable(drawable);
        }
    }

    public void setPasswordVisibilityToggleContentDescription(int i) {
        setPasswordVisibilityToggleContentDescription(i != 0 ? getResources().getText(i) : null);
    }

    public void setPasswordVisibilityToggleContentDescription(CharSequence charSequence) {
        this.x = charSequence;
        if (this.y != null) {
            this.y.setContentDescription(charSequence);
        }
    }

    public Drawable getPasswordVisibilityToggleDrawable() {
        return this.w;
    }

    public CharSequence getPasswordVisibilityToggleContentDescription() {
        return this.x;
    }

    public void setPasswordVisibilityToggleEnabled(boolean z) {
        if (this.v != z) {
            this.v = z;
            if (!z && this.z && this.f87a != null) {
                this.f87a.setTransformationMethod(PasswordTransformationMethod.getInstance());
            }
            this.z = false;
            f();
        }
    }

    public void setPasswordVisibilityToggleTintList(ColorStateList colorStateList) {
        this.C = colorStateList;
        this.D = true;
        i();
    }

    public void setPasswordVisibilityToggleTintMode(PorterDuff.Mode mode) {
        this.E = mode;
        this.F = true;
        i();
    }

    void a() {
        if (this.v) {
            int selectionEnd = this.f87a.getSelectionEnd();
            if (g()) {
                this.f87a.setTransformationMethod(null);
                this.z = true;
            } else {
                this.f87a.setTransformationMethod(PasswordTransformationMethod.getInstance());
                this.z = false;
            }
            this.y.setChecked(this.z);
            this.f87a.setSelection(selectionEnd);
        }
    }

    private boolean g() {
        return this.f87a != null && (this.f87a.getTransformationMethod() instanceof PasswordTransformationMethod);
    }

    private boolean h() {
        return this.v && (g() || this.z);
    }

    private void i() {
        if (this.w != null) {
            if (this.D || this.F) {
                this.w = android.support.v4.b.a.a.g(this.w).mutate();
                if (this.D) {
                    android.support.v4.b.a.a.a(this.w, this.C);
                }
                if (this.F) {
                    android.support.v4.b.a.a.a(this.w, this.E);
                }
                if (this.y != null && this.y.getDrawable() != this.w) {
                    this.y.setImageDrawable(this.w);
                }
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.f && this.f87a != null) {
            Rect rect = this.i;
            u.b(this, this.f87a, rect);
            int compoundPaddingLeft = rect.left + this.f87a.getCompoundPaddingLeft();
            int compoundPaddingRight = rect.right - this.f87a.getCompoundPaddingRight();
            this.d.a(compoundPaddingLeft, rect.top + this.f87a.getCompoundPaddingTop(), compoundPaddingRight, rect.bottom - this.f87a.getCompoundPaddingBottom());
            this.d.b(compoundPaddingLeft, getPaddingTop(), compoundPaddingRight, (i4 - i2) - getPaddingBottom());
            this.d.i();
        }
    }

    private void b(boolean z) {
        if (this.K != null && this.K.b()) {
            this.K.e();
        }
        if (z && this.J) {
            a(1.0f);
        } else {
            this.d.b(1.0f);
        }
        this.I = false;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        boolean z = true;
        if (!this.M) {
            this.M = true;
            super.drawableStateChanged();
            int[] drawableState = getDrawableState();
            if (!ai.F(this) || !isEnabled()) {
                z = false;
            }
            a(z);
            d();
            if (this.d != null ? this.d.a(drawableState) | false : false) {
                invalidate();
            }
            this.M = false;
        }
    }

    private void c(boolean z) {
        if (this.K != null && this.K.b()) {
            this.K.e();
        }
        if (z && this.J) {
            a(BitmapDescriptorFactory.HUE_RED);
        } else {
            this.d.b(BitmapDescriptorFactory.HUE_RED);
        }
        this.I = true;
    }

    void a(float f) {
        if (this.d.g() != f) {
            if (this.K == null) {
                this.K = x.a();
                this.K.a(android.support.design.widget.a.f97a);
                this.K.a(200L);
                this.K.a(new r.c() { // from class: android.support.design.widget.TextInputLayout.5
                    @Override // android.support.design.widget.r.c
                    public void a(r rVar) {
                        TextInputLayout.this.d.b(rVar.d());
                    }
                });
            }
            this.K.a(this.d.g(), f);
            this.K.a();
        }
    }

    /* loaded from: classes.dex */
    private class a extends android.support.v4.view.a {
        a() {
        }

        @Override // android.support.v4.view.a
        public void a(View view, AccessibilityEvent accessibilityEvent) {
            super.a(view, accessibilityEvent);
            accessibilityEvent.setClassName(TextInputLayout.class.getSimpleName());
        }

        @Override // android.support.v4.view.a
        public void b(View view, AccessibilityEvent accessibilityEvent) {
            super.b(view, accessibilityEvent);
            CharSequence j = TextInputLayout.this.d.j();
            if (!TextUtils.isEmpty(j)) {
                accessibilityEvent.getText().add(j);
            }
        }

        @Override // android.support.v4.view.a
        public void a(View view, android.support.v4.view.a.c cVar) {
            super.a(view, cVar);
            cVar.b((CharSequence) TextInputLayout.class.getSimpleName());
            CharSequence j = TextInputLayout.this.d.j();
            if (!TextUtils.isEmpty(j)) {
                cVar.c(j);
            }
            if (TextInputLayout.this.f87a != null) {
                cVar.d(TextInputLayout.this.f87a);
            }
            CharSequence text = TextInputLayout.this.b != null ? TextInputLayout.this.b.getText() : null;
            if (!TextUtils.isEmpty(text)) {
                cVar.l(true);
                cVar.e(text);
            }
        }
    }

    private static boolean a(int[] iArr, int i) {
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }
}
