package pl.jbzd.core.ui.indicator;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import pl.jbzd.R;
/* loaded from: classes3.dex */
public class LinePageIndicator extends HorizontalScrollView {
    private static final int[] b = {16842901, 16842904};
    private int A;
    private int B;
    private int C;

    /* renamed from: a  reason: collision with root package name */
    public ViewPager.e f6099a;
    private LinearLayout.LayoutParams c;
    private LinearLayout.LayoutParams d;
    private final b e;
    private LinearLayout f;
    private ViewPager g;
    private int h;
    private int i;
    private float j;
    private Paint k;
    private Paint l;
    private Paint m;
    private int n;
    private int o;
    private int p;
    private int q;
    private boolean r;
    private boolean s;
    private int t;
    private int u;
    private int v;
    private int w;
    private int x;
    private int y;
    private int z;

    /* loaded from: classes3.dex */
    public interface a {
        int a(int i);
    }

    public LinePageIndicator(Context context) {
        this(context, null);
    }

    public LinePageIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LinePageIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = new b();
        this.i = 0;
        this.j = BitmapDescriptorFactory.HUE_RED;
        this.n = -10066330;
        this.o = 436207616;
        this.p = 436207616;
        this.q = 436207616;
        this.r = false;
        this.s = true;
        this.t = 52;
        this.u = 8;
        this.v = 2;
        this.w = 12;
        this.x = 24;
        this.y = 1;
        this.z = 12;
        this.A = -10066330;
        this.B = 0;
        this.C = R.drawable.background_tab;
        setFillViewport(true);
        setWillNotDraw(false);
        this.f = new LinearLayout(context);
        this.f.setOrientation(0);
        this.f.setLayoutParams(new FrameLayout.LayoutParams(-1, pl.jbzd.core.a.a.a(2)));
        addView(this.f);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.t = (int) TypedValue.applyDimension(1, this.t, displayMetrics);
        this.u = (int) TypedValue.applyDimension(1, this.u, displayMetrics);
        this.v = (int) TypedValue.applyDimension(1, this.v, displayMetrics);
        this.w = (int) TypedValue.applyDimension(1, this.w, displayMetrics);
        this.x = (int) TypedValue.applyDimension(1, this.x, displayMetrics);
        this.y = (int) TypedValue.applyDimension(1, this.y, displayMetrics);
        this.z = (int) TypedValue.applyDimension(2, this.z, displayMetrics);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b);
        this.z = obtainStyledAttributes.getDimensionPixelSize(0, this.z);
        this.A = -65536;
        obtainStyledAttributes.recycle();
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, R.styleable.PagerSlidingTabStrip);
        this.o = pl.jbzd.core.a.a.b(R.color.navyBlueGalleryProgressBackground, context);
        this.n = obtainStyledAttributes2.getColor(0, this.n);
        this.p = obtainStyledAttributes2.getColor(1, this.p);
        this.q = obtainStyledAttributes2.getColor(2, this.q);
        this.u = obtainStyledAttributes2.getDimensionPixelSize(3, this.u);
        this.v = obtainStyledAttributes2.getDimensionPixelSize(4, this.v);
        this.w = obtainStyledAttributes2.getDimensionPixelSize(5, this.w);
        this.x = obtainStyledAttributes2.getDimensionPixelSize(6, this.x);
        this.C = obtainStyledAttributes2.getResourceId(8, this.C);
        this.r = obtainStyledAttributes2.getBoolean(9, this.r);
        this.t = obtainStyledAttributes2.getDimensionPixelSize(7, this.t);
        this.s = obtainStyledAttributes2.getBoolean(10, this.s);
        obtainStyledAttributes2.recycle();
        this.k = new Paint();
        this.k.setAntiAlias(true);
        this.k.setStyle(Paint.Style.FILL);
        this.l = new Paint();
        this.l.setAntiAlias(true);
        this.l.setStrokeWidth(this.y);
        this.m = new Paint();
        this.m.setAntiAlias(true);
        this.m.setStyle(Paint.Style.FILL);
        this.c = new LinearLayout.LayoutParams(-2, -1);
        this.d = new LinearLayout.LayoutParams(0, -1, 1.0f);
    }

    public void setViewPager(ViewPager viewPager) {
        this.g = viewPager;
        if (viewPager.getAdapter() == null) {
            throw new IllegalStateException("ViewPager does not have adapter instance.");
        }
        if (viewPager.getAdapter().getCount() > 0) {
            this.c = new LinearLayout.LayoutParams((int) Math.ceil(pl.jbzd.core.a.a.b(getContext()) / viewPager.getAdapter().getCount()), -1);
        }
        viewPager.addOnPageChangeListener(this.e);
        a();
    }

    public void a() {
        this.f.removeAllViews();
        this.h = this.g.getAdapter().getCount();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.h) {
                if (this.g.getAdapter() instanceof a) {
                    a(i2, ((a) this.g.getAdapter()).a(i2));
                } else {
                    a(i2);
                }
                i = i2 + 1;
            } else {
                b();
                getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: pl.jbzd.core.ui.indicator.LinePageIndicator.1
                    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                    @SuppressLint({"NewApi"})
                    public void onGlobalLayout() {
                        if (Build.VERSION.SDK_INT < 16) {
                            LinePageIndicator.this.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                        } else {
                            LinePageIndicator.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                        }
                        LinePageIndicator.this.i = LinePageIndicator.this.g.getCurrentItem();
                        LinePageIndicator.this.b(LinePageIndicator.this.i, 0);
                    }
                });
                return;
            }
        }
    }

    private void a(int i) {
        TextView textView = new TextView(getContext());
        textView.setText("");
        textView.setGravity(17);
        textView.setSingleLine();
        textView.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        a(i, textView);
    }

    private void a(int i, int i2) {
        ImageButton imageButton = new ImageButton(getContext());
        imageButton.setImageResource(i2);
        a(i, imageButton);
    }

    private void a(final int i, View view) {
        view.setFocusable(true);
        view.setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.core.ui.indicator.LinePageIndicator.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                LinePageIndicator.this.g.setCurrentItem(i);
            }
        });
        this.f.addView(view, i, this.r ? this.d : this.c);
    }

    private void b() {
        for (int i = 0; i < this.h; i++) {
            this.f.getChildAt(i).setBackgroundResource(this.C);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i, int i2) {
        if (this.h != 0) {
            int left = this.f.getChildAt(i).getLeft() + i2;
            if (i > 0 || i2 > 0) {
                left -= this.t;
            }
            if (left != this.B) {
                this.B = left;
                scrollTo(left, 0);
            }
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!isInEditMode() && this.h != 0) {
            int height = getHeight();
            this.k.setColor(this.n);
            float right = this.f.getChildAt(this.i).getRight();
            if (this.j > BitmapDescriptorFactory.HUE_RED && this.i < this.h - 1) {
                right = (this.f.getChildAt(this.i + 1).getRight() * this.j) + ((1.0f - this.j) * right);
            }
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, height - this.u, right, height, this.k);
            this.m.setColor(this.o);
            canvas.drawRect(right, this.w, pl.jbzd.core.a.a.b(getContext()), height - this.w, this.m);
            this.l.setColor(this.q);
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.h - 1) {
                    View childAt = this.f.getChildAt(i2);
                    canvas.drawLine(childAt.getRight(), this.w, childAt.getRight(), height - this.w, this.l);
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    private class b implements ViewPager.e {
        private b() {
        }

        @Override // android.support.v4.view.ViewPager.e
        public void a(int i, float f, int i2) {
            LinePageIndicator.this.i = i;
            LinePageIndicator.this.j = f;
            LinePageIndicator.this.b(i, (int) (LinePageIndicator.this.f.getChildAt(i).getWidth() * f));
            LinePageIndicator.this.invalidate();
            if (LinePageIndicator.this.f6099a != null) {
                LinePageIndicator.this.f6099a.a(i, f, i2);
            }
        }

        @Override // android.support.v4.view.ViewPager.e
        public void a(int i) {
            if (i == 0) {
                LinePageIndicator.this.b(LinePageIndicator.this.g.getCurrentItem(), 0);
            }
            if (LinePageIndicator.this.f6099a != null) {
                LinePageIndicator.this.f6099a.a(i);
            }
        }

        @Override // android.support.v4.view.ViewPager.e
        public void b(int i) {
            if (LinePageIndicator.this.f6099a != null) {
                LinePageIndicator.this.f6099a.b(i);
            }
        }
    }

    public void setDividerPadding(int i) {
        this.w = i;
        invalidate();
    }

    public int getDividerPadding() {
        return this.w;
    }

    public void setTextSize(int i) {
        this.z = i;
        b();
    }

    public int getTextSize() {
        return this.z;
    }

    public void setTextColor(int i) {
        this.A = i;
        b();
    }

    public int getTextColor() {
        return this.A;
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.i = savedState.f6102a;
        requestLayout();
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f6102a = this.i;
        return savedState;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: pl.jbzd.core.ui.indicator.LinePageIndicator.SavedState.1
            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* renamed from: a  reason: collision with root package name */
        int f6102a;

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.f6102a = parcel.readInt();
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f6102a);
        }
    }
}
