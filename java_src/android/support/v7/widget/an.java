package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.RestrictTo;
import android.support.v7.app.ActionBar;
import android.support.v7.appcompat.R;
import android.support.v7.widget.LinearLayoutCompat;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
/* compiled from: ScrollingTabContainerView.java */
@RestrictTo
/* loaded from: classes.dex */
public class an extends HorizontalScrollView implements AdapterView.OnItemSelectedListener {
    private static final Interpolator j = new DecelerateInterpolator();

    /* renamed from: a  reason: collision with root package name */
    Runnable f872a;
    LinearLayoutCompat b;
    int c;
    int d;
    private b e;
    private Spinner f;
    private boolean g;
    private int h;
    private int i;

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        boolean z = true;
        int mode = View.MeasureSpec.getMode(i);
        boolean z2 = mode == 1073741824;
        setFillViewport(z2);
        int childCount = this.b.getChildCount();
        if (childCount > 1 && (mode == 1073741824 || mode == Integer.MIN_VALUE)) {
            if (childCount > 2) {
                this.c = (int) (View.MeasureSpec.getSize(i) * 0.4f);
            } else {
                this.c = View.MeasureSpec.getSize(i) / 2;
            }
            this.c = Math.min(this.c, this.d);
        } else {
            this.c = -1;
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.h, 1073741824);
        if (z2 || !this.g) {
            z = false;
        }
        if (z) {
            this.b.measure(0, makeMeasureSpec);
            if (this.b.getMeasuredWidth() > View.MeasureSpec.getSize(i)) {
                b();
            } else {
                c();
            }
        } else {
            c();
        }
        int measuredWidth = getMeasuredWidth();
        super.onMeasure(i, makeMeasureSpec);
        int measuredWidth2 = getMeasuredWidth();
        if (z2 && measuredWidth != measuredWidth2) {
            setTabSelected(this.i);
        }
    }

    private boolean a() {
        return this.f != null && this.f.getParent() == this;
    }

    public void setAllowCollapse(boolean z) {
        this.g = z;
    }

    private void b() {
        if (!a()) {
            if (this.f == null) {
                this.f = d();
            }
            removeView(this.b);
            addView(this.f, new ViewGroup.LayoutParams(-2, -1));
            if (this.f.getAdapter() == null) {
                this.f.setAdapter((SpinnerAdapter) new a());
            }
            if (this.f872a != null) {
                removeCallbacks(this.f872a);
                this.f872a = null;
            }
            this.f.setSelection(this.i);
        }
    }

    private boolean c() {
        if (a()) {
            removeView(this.f);
            addView(this.b, new ViewGroup.LayoutParams(-2, -1));
            setTabSelected(this.f.getSelectedItemPosition());
        }
        return false;
    }

    public void setTabSelected(int i) {
        this.i = i;
        int childCount = this.b.getChildCount();
        int i2 = 0;
        while (i2 < childCount) {
            View childAt = this.b.getChildAt(i2);
            boolean z = i2 == i;
            childAt.setSelected(z);
            if (z) {
                a(i);
            }
            i2++;
        }
        if (this.f != null && i >= 0) {
            this.f.setSelection(i);
        }
    }

    public void setContentHeight(int i) {
        this.h = i;
        requestLayout();
    }

    private Spinner d() {
        AppCompatSpinner appCompatSpinner = new AppCompatSpinner(getContext(), null, R.attr.actionDropDownStyle);
        appCompatSpinner.setLayoutParams(new LinearLayoutCompat.LayoutParams(-2, -1));
        appCompatSpinner.setOnItemSelectedListener(this);
        return appCompatSpinner;
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        android.support.v7.view.a a2 = android.support.v7.view.a.a(getContext());
        setContentHeight(a2.e());
        this.d = a2.g();
    }

    public void a(int i) {
        final View childAt = this.b.getChildAt(i);
        if (this.f872a != null) {
            removeCallbacks(this.f872a);
        }
        this.f872a = new Runnable() { // from class: android.support.v7.widget.an.1
            @Override // java.lang.Runnable
            public void run() {
                an.this.smoothScrollTo(childAt.getLeft() - ((an.this.getWidth() - childAt.getWidth()) / 2), 0);
                an.this.f872a = null;
            }
        };
        post(this.f872a);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f872a != null) {
            post(this.f872a);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f872a != null) {
            removeCallbacks(this.f872a);
        }
    }

    c a(ActionBar.b bVar, boolean z) {
        c cVar = new c(getContext(), bVar, z);
        if (z) {
            cVar.setBackgroundDrawable(null);
            cVar.setLayoutParams(new AbsListView.LayoutParams(-1, this.h));
        } else {
            cVar.setFocusable(true);
            if (this.e == null) {
                this.e = new b();
            }
            cVar.setOnClickListener(this.e);
        }
        return cVar;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j2) {
        ((c) view).b().d();
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ScrollingTabContainerView.java */
    /* loaded from: classes.dex */
    public class c extends LinearLayoutCompat implements View.OnLongClickListener {
        private final int[] b;
        private ActionBar.b c;
        private TextView d;
        private ImageView e;
        private View f;

        public c(Context context, ActionBar.b bVar, boolean z) {
            super(context, null, R.attr.actionBarTabStyle);
            this.b = new int[]{16842964};
            this.c = bVar;
            av a2 = av.a(context, null, this.b, R.attr.actionBarTabStyle, 0);
            if (a2.g(0)) {
                setBackgroundDrawable(a2.a(0));
            }
            a2.a();
            if (z) {
                setGravity(8388627);
            }
            a();
        }

        public void a(ActionBar.b bVar) {
            this.c = bVar;
            a();
        }

        @Override // android.view.View
        public void setSelected(boolean z) {
            boolean z2 = isSelected() != z;
            super.setSelected(z);
            if (z2 && z) {
                sendAccessibilityEvent(4);
            }
        }

        @Override // android.support.v7.widget.LinearLayoutCompat, android.view.View
        public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setClassName(ActionBar.b.class.getName());
        }

        @Override // android.support.v7.widget.LinearLayoutCompat, android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            if (Build.VERSION.SDK_INT >= 14) {
                accessibilityNodeInfo.setClassName(ActionBar.b.class.getName());
            }
        }

        @Override // android.support.v7.widget.LinearLayoutCompat, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            if (an.this.c > 0 && getMeasuredWidth() > an.this.c) {
                super.onMeasure(View.MeasureSpec.makeMeasureSpec(an.this.c, 1073741824), i2);
            }
        }

        public void a() {
            ActionBar.b bVar = this.c;
            View c = bVar.c();
            if (c != null) {
                ViewParent parent = c.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(c);
                    }
                    addView(c);
                }
                this.f = c;
                if (this.d != null) {
                    this.d.setVisibility(8);
                }
                if (this.e != null) {
                    this.e.setVisibility(8);
                    this.e.setImageDrawable(null);
                    return;
                }
                return;
            }
            if (this.f != null) {
                removeView(this.f);
                this.f = null;
            }
            Drawable a2 = bVar.a();
            CharSequence b = bVar.b();
            if (a2 != null) {
                if (this.e == null) {
                    AppCompatImageView appCompatImageView = new AppCompatImageView(getContext());
                    LinearLayoutCompat.LayoutParams layoutParams = new LinearLayoutCompat.LayoutParams(-2, -2);
                    layoutParams.h = 16;
                    appCompatImageView.setLayoutParams(layoutParams);
                    addView(appCompatImageView, 0);
                    this.e = appCompatImageView;
                }
                this.e.setImageDrawable(a2);
                this.e.setVisibility(0);
            } else if (this.e != null) {
                this.e.setVisibility(8);
                this.e.setImageDrawable(null);
            }
            boolean z = !TextUtils.isEmpty(b);
            if (z) {
                if (this.d == null) {
                    AppCompatTextView appCompatTextView = new AppCompatTextView(getContext(), null, R.attr.actionBarTabTextStyle);
                    appCompatTextView.setEllipsize(TextUtils.TruncateAt.END);
                    LinearLayoutCompat.LayoutParams layoutParams2 = new LinearLayoutCompat.LayoutParams(-2, -2);
                    layoutParams2.h = 16;
                    appCompatTextView.setLayoutParams(layoutParams2);
                    addView(appCompatTextView);
                    this.d = appCompatTextView;
                }
                this.d.setText(b);
                this.d.setVisibility(0);
            } else if (this.d != null) {
                this.d.setVisibility(8);
                this.d.setText((CharSequence) null);
            }
            if (this.e != null) {
                this.e.setContentDescription(bVar.e());
            }
            if (!z && !TextUtils.isEmpty(bVar.e())) {
                setOnLongClickListener(this);
                return;
            }
            setOnLongClickListener(null);
            setLongClickable(false);
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            int[] iArr = new int[2];
            getLocationOnScreen(iArr);
            Context context = getContext();
            int width = getWidth();
            int height = getHeight();
            int i = context.getResources().getDisplayMetrics().widthPixels;
            Toast makeText = Toast.makeText(context, this.c.e(), 0);
            makeText.setGravity(49, (iArr[0] + (width / 2)) - (i / 2), height);
            makeText.show();
            return true;
        }

        public ActionBar.b b() {
            return this.c;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ScrollingTabContainerView.java */
    /* loaded from: classes.dex */
    public class a extends BaseAdapter {
        a() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return an.this.b.getChildCount();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return ((c) an.this.b.getChildAt(i)).b();
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                return an.this.a((ActionBar.b) getItem(i), true);
            }
            ((c) view).a((ActionBar.b) getItem(i));
            return view;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ScrollingTabContainerView.java */
    /* loaded from: classes.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((c) view).b().d();
            int childCount = an.this.b.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = an.this.b.getChildAt(i);
                childAt.setSelected(childAt == view);
            }
        }
    }
}
