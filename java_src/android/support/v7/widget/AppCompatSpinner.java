package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.RestrictTo;
import android.support.v7.appcompat.R;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.ThemedSpinnerAdapter;
/* loaded from: classes.dex */
public class AppCompatSpinner extends Spinner implements android.support.v4.view.af {
    private static final int[] d = {16843505};

    /* renamed from: a  reason: collision with root package name */
    b f771a;
    int b;
    final Rect c;
    private f e;
    private Context f;
    private z g;
    private SpinnerAdapter h;
    private boolean i;

    public AppCompatSpinner(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.spinnerStyle);
    }

    public AppCompatSpinner(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, -1);
    }

    public AppCompatSpinner(Context context, AttributeSet attributeSet, int i, int i2) {
        this(context, attributeSet, i, i2, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00e1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public AppCompatSpinner(Context context, AttributeSet attributeSet, int i, int i2, Resources.Theme theme) {
        super(context, attributeSet, i);
        CharSequence[] f;
        TypedArray typedArray;
        this.c = new Rect();
        av a2 = av.a(context, attributeSet, R.styleable.Spinner, i, 0);
        this.e = new f(this);
        if (theme != null) {
            this.f = new android.support.v7.view.d(context, theme);
        } else {
            int g = a2.g(R.styleable.Spinner_popupTheme, 0);
            if (g != 0) {
                this.f = new android.support.v7.view.d(context, g);
            } else {
                this.f = Build.VERSION.SDK_INT < 23 ? context : null;
            }
        }
        if (this.f != null) {
            if (i2 == -1) {
                if (Build.VERSION.SDK_INT >= 11) {
                    try {
                        typedArray = context.obtainStyledAttributes(attributeSet, d, i, 0);
                        try {
                            try {
                                i2 = typedArray.hasValue(0) ? typedArray.getInt(0, 0) : i2;
                                if (typedArray != null) {
                                    typedArray.recycle();
                                }
                            } catch (Exception e) {
                                e = e;
                                Log.i("AppCompatSpinner", "Could not read android:spinnerMode", e);
                                if (typedArray != null) {
                                    typedArray.recycle();
                                }
                                if (i2 == 1) {
                                }
                                f = a2.f(R.styleable.Spinner_android_entries);
                                if (f != null) {
                                }
                                a2.a();
                                this.i = true;
                                if (this.h != null) {
                                }
                                this.e.a(attributeSet, i);
                            }
                        } catch (Throwable th) {
                            th = th;
                            if (typedArray != null) {
                                typedArray.recycle();
                            }
                            throw th;
                        }
                    } catch (Exception e2) {
                        e = e2;
                        typedArray = null;
                    } catch (Throwable th2) {
                        th = th2;
                        typedArray = null;
                        if (typedArray != null) {
                        }
                        throw th;
                    }
                } else {
                    i2 = 1;
                }
            }
            if (i2 == 1) {
                final b bVar = new b(this.f, attributeSet, i);
                av a3 = av.a(this.f, attributeSet, R.styleable.Spinner, i, 0);
                this.b = a3.f(R.styleable.Spinner_android_dropDownWidth, -2);
                bVar.a(a3.a(R.styleable.Spinner_android_popupBackground));
                bVar.a(a2.d(R.styleable.Spinner_android_prompt));
                a3.a();
                this.f771a = bVar;
                this.g = new z(this) { // from class: android.support.v7.widget.AppCompatSpinner.1
                    @Override // android.support.v7.widget.z
                    public android.support.v7.view.menu.s a() {
                        return bVar;
                    }

                    @Override // android.support.v7.widget.z
                    public boolean b() {
                        if (!AppCompatSpinner.this.f771a.f()) {
                            AppCompatSpinner.this.f771a.d();
                            return true;
                        }
                        return true;
                    }
                };
            }
        }
        f = a2.f(R.styleable.Spinner_android_entries);
        if (f != null) {
            ArrayAdapter arrayAdapter = new ArrayAdapter(context, 17367048, f);
            arrayAdapter.setDropDownViewResource(R.layout.support_simple_spinner_dropdown_item);
            setAdapter((SpinnerAdapter) arrayAdapter);
        }
        a2.a();
        this.i = true;
        if (this.h != null) {
            setAdapter(this.h);
            this.h = null;
        }
        this.e.a(attributeSet, i);
    }

    @Override // android.widget.Spinner
    public Context getPopupContext() {
        if (this.f771a != null) {
            return this.f;
        }
        if (Build.VERSION.SDK_INT >= 23) {
            return super.getPopupContext();
        }
        return null;
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundDrawable(Drawable drawable) {
        if (this.f771a != null) {
            this.f771a.a(drawable);
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setPopupBackgroundDrawable(drawable);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundResource(int i) {
        setPopupBackgroundDrawable(android.support.v7.a.a.b.b(getPopupContext(), i));
    }

    @Override // android.widget.Spinner
    public Drawable getPopupBackground() {
        if (this.f771a != null) {
            return this.f771a.h();
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getPopupBackground();
        }
        return null;
    }

    @Override // android.widget.Spinner
    public void setDropDownVerticalOffset(int i) {
        if (this.f771a != null) {
            this.f771a.d(i);
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setDropDownVerticalOffset(i);
        }
    }

    @Override // android.widget.Spinner
    public int getDropDownVerticalOffset() {
        if (this.f771a != null) {
            return this.f771a.k();
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getDropDownVerticalOffset();
        }
        return 0;
    }

    @Override // android.widget.Spinner
    public void setDropDownHorizontalOffset(int i) {
        if (this.f771a != null) {
            this.f771a.c(i);
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setDropDownHorizontalOffset(i);
        }
    }

    @Override // android.widget.Spinner
    public int getDropDownHorizontalOffset() {
        if (this.f771a != null) {
            return this.f771a.j();
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getDropDownHorizontalOffset();
        }
        return 0;
    }

    @Override // android.widget.Spinner
    public void setDropDownWidth(int i) {
        if (this.f771a != null) {
            this.b = i;
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setDropDownWidth(i);
        }
    }

    @Override // android.widget.Spinner
    public int getDropDownWidth() {
        if (this.f771a != null) {
            return this.b;
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getDropDownWidth();
        }
        return 0;
    }

    @Override // android.widget.AdapterView
    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        if (!this.i) {
            this.h = spinnerAdapter;
            return;
        }
        super.setAdapter(spinnerAdapter);
        if (this.f771a != null) {
            this.f771a.a(new a(spinnerAdapter, (this.f == null ? getContext() : this.f).getTheme()));
        }
    }

    @Override // android.widget.Spinner, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f771a != null && this.f771a.f()) {
            this.f771a.e();
        }
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.g == null || !this.g.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f771a != null && View.MeasureSpec.getMode(i) == Integer.MIN_VALUE) {
            setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), a(getAdapter(), getBackground())), View.MeasureSpec.getSize(i)), getMeasuredHeight());
        }
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean performClick() {
        if (this.f771a != null) {
            if (!this.f771a.f()) {
                this.f771a.d();
            }
            return true;
        }
        return super.performClick();
    }

    @Override // android.widget.Spinner
    public void setPrompt(CharSequence charSequence) {
        if (this.f771a != null) {
            this.f771a.a(charSequence);
        } else {
            super.setPrompt(charSequence);
        }
    }

    @Override // android.widget.Spinner
    public CharSequence getPrompt() {
        return this.f771a != null ? this.f771a.a() : super.getPrompt();
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        if (this.e != null) {
            this.e.a(i);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        if (this.e != null) {
            this.e.a(drawable);
        }
    }

    @Override // android.support.v4.view.af
    @RestrictTo
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        if (this.e != null) {
            this.e.a(colorStateList);
        }
    }

    @Override // android.support.v4.view.af
    @RestrictTo
    public ColorStateList getSupportBackgroundTintList() {
        if (this.e != null) {
            return this.e.a();
        }
        return null;
    }

    @Override // android.support.v4.view.af
    @RestrictTo
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        if (this.e != null) {
            this.e.a(mode);
        }
    }

    @Override // android.support.v4.view.af
    @RestrictTo
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        if (this.e != null) {
            return this.e.b();
        }
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.e != null) {
            this.e.c();
        }
    }

    int a(SpinnerAdapter spinnerAdapter, Drawable drawable) {
        View view;
        if (spinnerAdapter == null) {
            return 0;
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int max = Math.max(0, getSelectedItemPosition());
        int min = Math.min(spinnerAdapter.getCount(), max + 15);
        int max2 = Math.max(0, max - (15 - (min - max)));
        View view2 = null;
        int i = 0;
        int i2 = 0;
        while (max2 < min) {
            int itemViewType = spinnerAdapter.getItemViewType(max2);
            if (itemViewType != i2) {
                view = null;
            } else {
                itemViewType = i2;
                view = view2;
            }
            view2 = spinnerAdapter.getView(max2, view, this);
            if (view2.getLayoutParams() == null) {
                view2.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view2.measure(makeMeasureSpec, makeMeasureSpec2);
            i = Math.max(i, view2.getMeasuredWidth());
            max2++;
            i2 = itemViewType;
        }
        if (drawable == null) {
            return i;
        }
        drawable.getPadding(this.c);
        return this.c.left + this.c.right + i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a implements ListAdapter, SpinnerAdapter {

        /* renamed from: a  reason: collision with root package name */
        private SpinnerAdapter f773a;
        private ListAdapter b;

        public a(SpinnerAdapter spinnerAdapter, Resources.Theme theme) {
            this.f773a = spinnerAdapter;
            if (spinnerAdapter instanceof ListAdapter) {
                this.b = (ListAdapter) spinnerAdapter;
            }
            if (theme != null) {
                if (Build.VERSION.SDK_INT >= 23 && (spinnerAdapter instanceof ThemedSpinnerAdapter)) {
                    ThemedSpinnerAdapter themedSpinnerAdapter = (ThemedSpinnerAdapter) spinnerAdapter;
                    if (themedSpinnerAdapter.getDropDownViewTheme() != theme) {
                        themedSpinnerAdapter.setDropDownViewTheme(theme);
                    }
                } else if (spinnerAdapter instanceof ar) {
                    ar arVar = (ar) spinnerAdapter;
                    if (arVar.a() == null) {
                        arVar.a(theme);
                    }
                }
            }
        }

        @Override // android.widget.Adapter
        public int getCount() {
            if (this.f773a == null) {
                return 0;
            }
            return this.f773a.getCount();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            if (this.f773a == null) {
                return null;
            }
            return this.f773a.getItem(i);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            if (this.f773a == null) {
                return -1L;
            }
            return this.f773a.getItemId(i);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            return getDropDownView(i, view, viewGroup);
        }

        @Override // android.widget.SpinnerAdapter
        public View getDropDownView(int i, View view, ViewGroup viewGroup) {
            if (this.f773a == null) {
                return null;
            }
            return this.f773a.getDropDownView(i, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public boolean hasStableIds() {
            return this.f773a != null && this.f773a.hasStableIds();
        }

        @Override // android.widget.Adapter
        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
            if (this.f773a != null) {
                this.f773a.registerDataSetObserver(dataSetObserver);
            }
        }

        @Override // android.widget.Adapter
        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            if (this.f773a != null) {
                this.f773a.unregisterDataSetObserver(dataSetObserver);
            }
        }

        @Override // android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            ListAdapter listAdapter = this.b;
            if (listAdapter != null) {
                return listAdapter.areAllItemsEnabled();
            }
            return true;
        }

        @Override // android.widget.ListAdapter
        public boolean isEnabled(int i) {
            ListAdapter listAdapter = this.b;
            if (listAdapter != null) {
                return listAdapter.isEnabled(i);
            }
            return true;
        }

        @Override // android.widget.Adapter
        public int getItemViewType(int i) {
            return 0;
        }

        @Override // android.widget.Adapter
        public int getViewTypeCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public boolean isEmpty() {
            return getCount() == 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class b extends ListPopupWindow {

        /* renamed from: a  reason: collision with root package name */
        ListAdapter f774a;
        private CharSequence h;
        private final Rect i;

        public b(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            this.i = new Rect();
            b(AppCompatSpinner.this);
            a(true);
            a(0);
            a(new AdapterView.OnItemClickListener() { // from class: android.support.v7.widget.AppCompatSpinner.b.1
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                    AppCompatSpinner.this.setSelection(i2);
                    if (AppCompatSpinner.this.getOnItemClickListener() != null) {
                        AppCompatSpinner.this.performItemClick(view, i2, b.this.f774a.getItemId(i2));
                    }
                    b.this.e();
                }
            });
        }

        @Override // android.support.v7.widget.ListPopupWindow
        public void a(ListAdapter listAdapter) {
            super.a(listAdapter);
            this.f774a = listAdapter;
        }

        public CharSequence a() {
            return this.h;
        }

        public void a(CharSequence charSequence) {
            this.h = charSequence;
        }

        void b() {
            int i;
            int i2;
            Drawable h = h();
            if (h != null) {
                h.getPadding(AppCompatSpinner.this.c);
                i = ba.a(AppCompatSpinner.this) ? AppCompatSpinner.this.c.right : -AppCompatSpinner.this.c.left;
            } else {
                Rect rect = AppCompatSpinner.this.c;
                AppCompatSpinner.this.c.right = 0;
                rect.left = 0;
                i = 0;
            }
            int paddingLeft = AppCompatSpinner.this.getPaddingLeft();
            int paddingRight = AppCompatSpinner.this.getPaddingRight();
            int width = AppCompatSpinner.this.getWidth();
            if (AppCompatSpinner.this.b == -2) {
                int a2 = AppCompatSpinner.this.a((SpinnerAdapter) this.f774a, h());
                int i3 = (AppCompatSpinner.this.getContext().getResources().getDisplayMetrics().widthPixels - AppCompatSpinner.this.c.left) - AppCompatSpinner.this.c.right;
                if (a2 <= i3) {
                    i3 = a2;
                }
                g(Math.max(i3, (width - paddingLeft) - paddingRight));
            } else if (AppCompatSpinner.this.b == -1) {
                g((width - paddingLeft) - paddingRight);
            } else {
                g(AppCompatSpinner.this.b);
            }
            if (ba.a(AppCompatSpinner.this)) {
                i2 = ((width - paddingRight) - l()) + i;
            } else {
                i2 = i + paddingLeft;
            }
            c(i2);
        }

        @Override // android.support.v7.widget.ListPopupWindow, android.support.v7.view.menu.s
        public void d() {
            ViewTreeObserver viewTreeObserver;
            boolean f = f();
            b();
            h(2);
            super.d();
            g().setChoiceMode(1);
            i(AppCompatSpinner.this.getSelectedItemPosition());
            if (!f && (viewTreeObserver = AppCompatSpinner.this.getViewTreeObserver()) != null) {
                final ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: android.support.v7.widget.AppCompatSpinner.b.2
                    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                    public void onGlobalLayout() {
                        if (!b.this.a(AppCompatSpinner.this)) {
                            b.this.e();
                            return;
                        }
                        b.this.b();
                        b.super.d();
                    }
                };
                viewTreeObserver.addOnGlobalLayoutListener(onGlobalLayoutListener);
                a(new PopupWindow.OnDismissListener() { // from class: android.support.v7.widget.AppCompatSpinner.b.3
                    @Override // android.widget.PopupWindow.OnDismissListener
                    public void onDismiss() {
                        ViewTreeObserver viewTreeObserver2 = AppCompatSpinner.this.getViewTreeObserver();
                        if (viewTreeObserver2 != null) {
                            viewTreeObserver2.removeGlobalOnLayoutListener(onGlobalLayoutListener);
                        }
                    }
                });
            }
        }

        boolean a(View view) {
            return android.support.v4.view.ai.H(view) && view.getGlobalVisibleRect(this.i);
        }
    }
}
