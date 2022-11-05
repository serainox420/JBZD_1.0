package android.support.v7.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.annotation.RestrictTo;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import java.lang.reflect.Field;
@RestrictTo
/* loaded from: classes.dex */
public class ListViewCompat extends ListView {
    private static final int[] g = {0};

    /* renamed from: a  reason: collision with root package name */
    final Rect f801a;
    int b;
    int c;
    int d;
    int e;
    protected int f;
    private Field h;
    private a i;

    public ListViewCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ListViewCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f801a = new Rect();
        this.b = 0;
        this.c = 0;
        this.d = 0;
        this.e = 0;
        try {
            this.h = AbsListView.class.getDeclaredField("mIsChildViewEnabled");
            this.h.setAccessible(true);
        } catch (NoSuchFieldException e) {
            e.printStackTrace();
        }
    }

    @Override // android.widget.AbsListView
    public void setSelector(Drawable drawable) {
        this.i = drawable != null ? new a(drawable) : null;
        super.setSelector(this.i);
        Rect rect = new Rect();
        if (drawable != null) {
            drawable.getPadding(rect);
        }
        this.b = rect.left;
        this.c = rect.top;
        this.d = rect.right;
        this.e = rect.bottom;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        setSelectorEnabled(true);
        b();
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        a(canvas);
        super.dispatchDraw(canvas);
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            case 0:
                this.f = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
                break;
        }
        return super.onTouchEvent(motionEvent);
    }

    protected void b() {
        Drawable selector = getSelector();
        if (selector != null && c()) {
            selector.setState(getDrawableState());
        }
    }

    protected boolean c() {
        return a() && isPressed();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean a() {
        return false;
    }

    protected void a(Canvas canvas) {
        Drawable selector;
        if (!this.f801a.isEmpty() && (selector = getSelector()) != null) {
            selector.setBounds(this.f801a);
            selector.draw(canvas);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(int i, View view, float f, float f2) {
        a(i, view);
        Drawable selector = getSelector();
        if (selector != null && i != -1) {
            android.support.v4.b.a.a.a(selector, f, f2);
        }
    }

    protected void a(int i, View view) {
        boolean z = true;
        Drawable selector = getSelector();
        boolean z2 = (selector == null || i == -1) ? false : true;
        if (z2) {
            selector.setVisible(false, false);
        }
        b(i, view);
        if (z2) {
            Rect rect = this.f801a;
            float exactCenterX = rect.exactCenterX();
            float exactCenterY = rect.exactCenterY();
            if (getVisibility() != 0) {
                z = false;
            }
            selector.setVisible(z, false);
            android.support.v4.b.a.a.a(selector, exactCenterX, exactCenterY);
        }
    }

    protected void b(int i, View view) {
        Rect rect = this.f801a;
        rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        rect.left -= this.b;
        rect.top -= this.c;
        rect.right += this.d;
        rect.bottom += this.e;
        try {
            boolean z = this.h.getBoolean(this);
            if (view.isEnabled() != z) {
                this.h.set(this, Boolean.valueOf(!z));
                if (i != -1) {
                    refreshDrawableState();
                }
            }
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        }
    }

    public int a(int i, int i2, int i3, int i4, int i5) {
        View view;
        int makeMeasureSpec;
        int listPaddingTop = getListPaddingTop();
        int listPaddingBottom = getListPaddingBottom();
        getListPaddingLeft();
        getListPaddingRight();
        int dividerHeight = getDividerHeight();
        Drawable divider = getDivider();
        ListAdapter adapter = getAdapter();
        if (adapter == null) {
            return listPaddingTop + listPaddingBottom;
        }
        int i6 = listPaddingBottom + listPaddingTop;
        if (dividerHeight <= 0 || divider == null) {
            dividerHeight = 0;
        }
        int i7 = 0;
        View view2 = null;
        int i8 = 0;
        int count = adapter.getCount();
        int i9 = 0;
        while (i9 < count) {
            int itemViewType = adapter.getItemViewType(i9);
            if (itemViewType != i8) {
                view = null;
                i8 = itemViewType;
            } else {
                view = view2;
            }
            view2 = adapter.getView(i9, view, this);
            ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = generateDefaultLayoutParams();
                view2.setLayoutParams(layoutParams);
            }
            if (layoutParams.height > 0) {
                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(layoutParams.height, 1073741824);
            } else {
                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
            }
            view2.measure(i, makeMeasureSpec);
            view2.forceLayout();
            int measuredHeight = (i9 > 0 ? i6 + dividerHeight : i6) + view2.getMeasuredHeight();
            if (measuredHeight >= i4) {
                return (i5 < 0 || i9 <= i5 || i7 <= 0 || measuredHeight == i4) ? i4 : i7;
            }
            if (i5 >= 0 && i9 >= i5) {
                i7 = measuredHeight;
            }
            i9++;
            i6 = measuredHeight;
        }
        return i6;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setSelectorEnabled(boolean z) {
        if (this.i != null) {
            this.i.a(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a extends android.support.v7.b.a.a {

        /* renamed from: a  reason: collision with root package name */
        private boolean f802a;

        public a(Drawable drawable) {
            super(drawable);
            this.f802a = true;
        }

        void a(boolean z) {
            this.f802a = z;
        }

        @Override // android.support.v7.b.a.a, android.graphics.drawable.Drawable
        public boolean setState(int[] iArr) {
            if (this.f802a) {
                return super.setState(iArr);
            }
            return false;
        }

        @Override // android.support.v7.b.a.a, android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            if (this.f802a) {
                super.draw(canvas);
            }
        }

        @Override // android.support.v7.b.a.a, android.graphics.drawable.Drawable
        public void setHotspot(float f, float f2) {
            if (this.f802a) {
                super.setHotspot(f, f2);
            }
        }

        @Override // android.support.v7.b.a.a, android.graphics.drawable.Drawable
        public void setHotspotBounds(int i, int i2, int i3, int i4) {
            if (this.f802a) {
                super.setHotspotBounds(i, i2, i3, i4);
            }
        }

        @Override // android.support.v7.b.a.a, android.graphics.drawable.Drawable
        public boolean setVisible(boolean z, boolean z2) {
            if (this.f802a) {
                return super.setVisible(z, z2);
            }
            return false;
        }
    }
}
