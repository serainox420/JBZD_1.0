package android.support.v4.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.v4.view.ViewPager;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.ref.WeakReference;
@ViewPager.a
/* loaded from: classes.dex */
public class PagerTitleStrip extends ViewGroup {
    private static final int[] n = {16842804, 16842901, 16842904, 16842927};
    private static final int[] o = {16843660};
    private static final b q;

    /* renamed from: a  reason: collision with root package name */
    ViewPager f409a;
    TextView b;
    TextView c;
    TextView d;
    float e;
    int f;
    private int g;
    private int h;
    private int i;
    private boolean j;
    private boolean k;
    private final a l;
    private WeakReference<aa> m;
    private int p;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface b {
        void a(TextView textView);
    }

    static {
        if (Build.VERSION.SDK_INT >= 14) {
            q = new d();
        } else {
            q = new c();
        }
    }

    /* loaded from: classes.dex */
    static class c implements b {
        c() {
        }

        @Override // android.support.v4.view.PagerTitleStrip.b
        public void a(TextView textView) {
            textView.setSingleLine();
        }
    }

    /* loaded from: classes.dex */
    static class d implements b {
        d() {
        }

        @Override // android.support.v4.view.PagerTitleStrip.b
        public void a(TextView textView) {
            ab.a(textView);
        }
    }

    private static void setSingleLineAllCaps(TextView textView) {
        q.a(textView);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PagerTitleStrip(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        boolean z = false;
        this.g = -1;
        this.e = -1.0f;
        this.l = new a();
        TextView textView = new TextView(context);
        this.b = textView;
        addView(textView);
        TextView textView2 = new TextView(context);
        this.c = textView2;
        addView(textView2);
        TextView textView3 = new TextView(context);
        this.d = textView3;
        addView(textView3);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, n);
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        if (resourceId != 0) {
            android.support.v4.widget.z.a(this.b, resourceId);
            android.support.v4.widget.z.a(this.c, resourceId);
            android.support.v4.widget.z.a(this.d, resourceId);
        }
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(1, 0);
        if (dimensionPixelSize != 0) {
            a(0, dimensionPixelSize);
        }
        if (obtainStyledAttributes.hasValue(2)) {
            int color = obtainStyledAttributes.getColor(2, 0);
            this.b.setTextColor(color);
            this.c.setTextColor(color);
            this.d.setTextColor(color);
        }
        this.i = obtainStyledAttributes.getInteger(3, 80);
        obtainStyledAttributes.recycle();
        this.f = this.c.getTextColors().getDefaultColor();
        setNonPrimaryAlpha(0.6f);
        this.b.setEllipsize(TextUtils.TruncateAt.END);
        this.c.setEllipsize(TextUtils.TruncateAt.END);
        this.d.setEllipsize(TextUtils.TruncateAt.END);
        if (resourceId != 0) {
            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(resourceId, o);
            z = obtainStyledAttributes2.getBoolean(0, false);
            obtainStyledAttributes2.recycle();
        }
        if (z) {
            setSingleLineAllCaps(this.b);
            setSingleLineAllCaps(this.c);
            setSingleLineAllCaps(this.d);
        } else {
            this.b.setSingleLine();
            this.c.setSingleLine();
            this.d.setSingleLine();
        }
        this.h = (int) (context.getResources().getDisplayMetrics().density * 16.0f);
    }

    public void setTextSpacing(int i) {
        this.h = i;
        requestLayout();
    }

    public int getTextSpacing() {
        return this.h;
    }

    public void setNonPrimaryAlpha(float f) {
        this.p = ((int) (255.0f * f)) & 255;
        int i = (this.p << 24) | (this.f & 16777215);
        this.b.setTextColor(i);
        this.d.setTextColor(i);
    }

    public void setTextColor(int i) {
        this.f = i;
        this.c.setTextColor(i);
        int i2 = (this.p << 24) | (this.f & 16777215);
        this.b.setTextColor(i2);
        this.d.setTextColor(i2);
    }

    public void a(int i, float f) {
        this.b.setTextSize(i, f);
        this.c.setTextSize(i, f);
        this.d.setTextSize(i, f);
    }

    public void setGravity(int i) {
        this.i = i;
        requestLayout();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (!(parent instanceof ViewPager)) {
            throw new IllegalStateException("PagerTitleStrip must be a direct child of a ViewPager.");
        }
        ViewPager viewPager = (ViewPager) parent;
        aa adapter = viewPager.getAdapter();
        viewPager.setInternalPageChangeListener(this.l);
        viewPager.addOnAdapterChangeListener(this.l);
        this.f409a = viewPager;
        a(this.m != null ? this.m.get() : null, adapter);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f409a != null) {
            a(this.f409a.getAdapter(), (aa) null);
            this.f409a.setInternalPageChangeListener(null);
            this.f409a.removeOnAdapterChangeListener(this.l);
            this.f409a = null;
        }
    }

    void a(int i, aa aaVar) {
        CharSequence charSequence = null;
        int count = aaVar != null ? aaVar.getCount() : 0;
        this.j = true;
        this.b.setText((i < 1 || aaVar == null) ? null : aaVar.getPageTitle(i - 1));
        this.c.setText((aaVar == null || i >= count) ? null : aaVar.getPageTitle(i));
        if (i + 1 < count && aaVar != null) {
            charSequence = aaVar.getPageTitle(i + 1);
        }
        this.d.setText(charSequence);
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.max(0, (int) (((getWidth() - getPaddingLeft()) - getPaddingRight()) * 0.8f)), Integer.MIN_VALUE);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(Math.max(0, (getHeight() - getPaddingTop()) - getPaddingBottom()), Integer.MIN_VALUE);
        this.b.measure(makeMeasureSpec, makeMeasureSpec2);
        this.c.measure(makeMeasureSpec, makeMeasureSpec2);
        this.d.measure(makeMeasureSpec, makeMeasureSpec2);
        this.g = i;
        if (!this.k) {
            a(i, this.e, false);
        }
        this.j = false;
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (!this.j) {
            super.requestLayout();
        }
    }

    void a(aa aaVar, aa aaVar2) {
        if (aaVar != null) {
            aaVar.unregisterDataSetObserver(this.l);
            this.m = null;
        }
        if (aaVar2 != null) {
            aaVar2.registerDataSetObserver(this.l);
            this.m = new WeakReference<>(aaVar2);
        }
        if (this.f409a != null) {
            this.g = -1;
            this.e = -1.0f;
            a(this.f409a.getCurrentItem(), aaVar2);
            requestLayout();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i, float f, boolean z) {
        int i2;
        int i3;
        int i4;
        if (i != this.g) {
            a(i, this.f409a.getAdapter());
        } else if (!z && f == this.e) {
            return;
        }
        this.k = true;
        int measuredWidth = this.b.getMeasuredWidth();
        int measuredWidth2 = this.c.getMeasuredWidth();
        int measuredWidth3 = this.d.getMeasuredWidth();
        int i5 = measuredWidth2 / 2;
        int width = getWidth();
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int i6 = paddingRight + i5;
        int i7 = (width - (paddingLeft + i5)) - i6;
        float f2 = 0.5f + f;
        if (f2 > 1.0f) {
            f2 -= 1.0f;
        }
        int i8 = ((width - i6) - ((int) (f2 * i7))) - (measuredWidth2 / 2);
        int i9 = i8 + measuredWidth2;
        int baseline = this.b.getBaseline();
        int baseline2 = this.c.getBaseline();
        int baseline3 = this.d.getBaseline();
        int max = Math.max(Math.max(baseline, baseline2), baseline3);
        int i10 = max - baseline;
        int i11 = max - baseline2;
        int i12 = max - baseline3;
        int max2 = Math.max(Math.max(this.b.getMeasuredHeight() + i10, this.c.getMeasuredHeight() + i11), this.d.getMeasuredHeight() + i12);
        switch (this.i & 112) {
            case 16:
                int i13 = (((height - paddingTop) - paddingBottom) - max2) / 2;
                i2 = i13 + i10;
                i3 = i11 + i13;
                i4 = i13 + i12;
                break;
            case 80:
                int i14 = (height - paddingBottom) - max2;
                i2 = i14 + i10;
                i3 = i11 + i14;
                i4 = i14 + i12;
                break;
            default:
                i2 = paddingTop + i10;
                i3 = i11 + paddingTop;
                i4 = paddingTop + i12;
                break;
        }
        this.c.layout(i8, i3, i9, this.c.getMeasuredHeight() + i3);
        int min = Math.min(paddingLeft, (i8 - this.h) - measuredWidth);
        this.b.layout(min, i2, measuredWidth + min, this.b.getMeasuredHeight() + i2);
        int max3 = Math.max((width - paddingRight) - measuredWidth3, this.h + i9);
        this.d.layout(max3, i4, max3 + measuredWidth3, this.d.getMeasuredHeight() + i4);
        this.e = f;
        this.k = false;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int max;
        if (View.MeasureSpec.getMode(i) != 1073741824) {
            throw new IllegalStateException("Must measure with an exact width");
        }
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int childMeasureSpec = getChildMeasureSpec(i2, paddingTop, -2);
        int size = View.MeasureSpec.getSize(i);
        int childMeasureSpec2 = getChildMeasureSpec(i, (int) (size * 0.2f), -2);
        this.b.measure(childMeasureSpec2, childMeasureSpec);
        this.c.measure(childMeasureSpec2, childMeasureSpec);
        this.d.measure(childMeasureSpec2, childMeasureSpec);
        if (View.MeasureSpec.getMode(i2) == 1073741824) {
            max = View.MeasureSpec.getSize(i2);
        } else {
            max = Math.max(getMinHeight(), paddingTop + this.c.getMeasuredHeight());
        }
        setMeasuredDimension(size, ai.a(max, i2, ai.j(this.c) << 16));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        float f = BitmapDescriptorFactory.HUE_RED;
        if (this.f409a != null) {
            if (this.e >= BitmapDescriptorFactory.HUE_RED) {
                f = this.e;
            }
            a(this.g, f, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getMinHeight() {
        Drawable background = getBackground();
        if (background == null) {
            return 0;
        }
        return background.getIntrinsicHeight();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a extends DataSetObserver implements ViewPager.d, ViewPager.e {
        private int b;

        a() {
        }

        @Override // android.support.v4.view.ViewPager.e
        public void a(int i, float f, int i2) {
            if (f > 0.5f) {
                i++;
            }
            PagerTitleStrip.this.a(i, f, false);
        }

        @Override // android.support.v4.view.ViewPager.e
        public void b(int i) {
            float f = BitmapDescriptorFactory.HUE_RED;
            if (this.b == 0) {
                PagerTitleStrip.this.a(PagerTitleStrip.this.f409a.getCurrentItem(), PagerTitleStrip.this.f409a.getAdapter());
                if (PagerTitleStrip.this.e >= BitmapDescriptorFactory.HUE_RED) {
                    f = PagerTitleStrip.this.e;
                }
                PagerTitleStrip.this.a(PagerTitleStrip.this.f409a.getCurrentItem(), f, true);
            }
        }

        @Override // android.support.v4.view.ViewPager.e
        public void a(int i) {
            this.b = i;
        }

        @Override // android.support.v4.view.ViewPager.d
        public void a(ViewPager viewPager, aa aaVar, aa aaVar2) {
            PagerTitleStrip.this.a(aaVar, aaVar2);
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            float f = BitmapDescriptorFactory.HUE_RED;
            PagerTitleStrip.this.a(PagerTitleStrip.this.f409a.getCurrentItem(), PagerTitleStrip.this.f409a.getAdapter());
            if (PagerTitleStrip.this.e >= BitmapDescriptorFactory.HUE_RED) {
                f = PagerTitleStrip.this.e;
            }
            PagerTitleStrip.this.a(PagerTitleStrip.this.f409a.getCurrentItem(), f, true);
        }
    }
}
