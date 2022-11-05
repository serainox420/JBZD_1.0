package android.support.transition;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.lang.reflect.Method;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ViewOverlay.java */
@TargetApi(14)
/* loaded from: classes.dex */
public class ah {

    /* renamed from: a  reason: collision with root package name */
    protected a f167a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ah(Context context, ViewGroup viewGroup, View view) {
        this.f167a = new a(context, viewGroup, view, this);
    }

    static ViewGroup c(View view) {
        View view2 = view;
        while (view2 != null) {
            if (view2.getId() == 16908290 && (view2 instanceof ViewGroup)) {
                return (ViewGroup) view2;
            }
            if (view2.getParent() instanceof ViewGroup) {
                view2 = (ViewGroup) view2.getParent();
            }
        }
        return null;
    }

    public static ah d(View view) {
        ViewGroup c = c(view);
        if (c != null) {
            int childCount = c.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = c.getChildAt(i);
                if (childAt instanceof a) {
                    return ((a) childAt).e;
                }
            }
            return new ag(c.getContext(), c, view);
        }
        return null;
    }

    public void a(Drawable drawable) {
        this.f167a.a(drawable);
    }

    public void b(Drawable drawable) {
        this.f167a.b(drawable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ViewOverlay.java */
    /* loaded from: classes.dex */
    public static class a extends ViewGroup {

        /* renamed from: a  reason: collision with root package name */
        static Method f168a;
        ViewGroup b;
        View c;
        ArrayList<Drawable> d;
        ah e;

        static {
            try {
                f168a = ViewGroup.class.getDeclaredMethod("invalidateChildInParentFast", Integer.TYPE, Integer.TYPE, Rect.class);
            } catch (NoSuchMethodException e) {
            }
        }

        a(Context context, ViewGroup viewGroup, View view, ah ahVar) {
            super(context);
            this.d = null;
            this.b = viewGroup;
            this.c = view;
            setRight(viewGroup.getWidth());
            setBottom(viewGroup.getHeight());
            viewGroup.addView(this);
            this.e = ahVar;
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            return false;
        }

        public void a(Drawable drawable) {
            if (this.d == null) {
                this.d = new ArrayList<>();
            }
            if (!this.d.contains(drawable)) {
                this.d.add(drawable);
                invalidate(drawable.getBounds());
                drawable.setCallback(this);
            }
        }

        public void b(Drawable drawable) {
            if (this.d != null) {
                this.d.remove(drawable);
                invalidate(drawable.getBounds());
                drawable.setCallback(null);
            }
        }

        @Override // android.view.View
        protected boolean verifyDrawable(Drawable drawable) {
            return super.verifyDrawable(drawable) || (this.d != null && this.d.contains(drawable));
        }

        public void a(View view) {
            if (view.getParent() instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view.getParent();
                if (viewGroup != this.b && viewGroup.getParent() != null) {
                    int[] iArr = new int[2];
                    int[] iArr2 = new int[2];
                    viewGroup.getLocationOnScreen(iArr);
                    this.b.getLocationOnScreen(iArr2);
                    android.support.v4.view.ai.f(view, iArr[0] - iArr2[0]);
                    android.support.v4.view.ai.e(view, iArr[1] - iArr2[1]);
                }
                viewGroup.removeView(view);
                if (view.getParent() != null) {
                    viewGroup.removeView(view);
                }
            }
            super.addView(view, getChildCount() - 1);
        }

        public void b(View view) {
            super.removeView(view);
            if (a()) {
                this.b.removeView(this);
            }
        }

        boolean a() {
            return getChildCount() == 0 && (this.d == null || this.d.size() == 0);
        }

        @Override // android.view.View, android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable drawable) {
            invalidate(drawable.getBounds());
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            int[] iArr = new int[2];
            int[] iArr2 = new int[2];
            ViewGroup viewGroup = (ViewGroup) getParent();
            this.b.getLocationOnScreen(iArr);
            this.c.getLocationOnScreen(iArr2);
            canvas.translate(iArr2[0] - iArr[0], iArr2[1] - iArr[1]);
            canvas.clipRect(new Rect(0, 0, this.c.getWidth(), this.c.getHeight()));
            super.dispatchDraw(canvas);
            int size = this.d == null ? 0 : this.d.size();
            for (int i = 0; i < size; i++) {
                this.d.get(i).draw(canvas);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        }

        private void a(int[] iArr) {
            int[] iArr2 = new int[2];
            int[] iArr3 = new int[2];
            ViewGroup viewGroup = (ViewGroup) getParent();
            this.b.getLocationOnScreen(iArr2);
            this.c.getLocationOnScreen(iArr3);
            iArr[0] = iArr3[0] - iArr2[0];
            iArr[1] = iArr3[1] - iArr2[1];
        }

        @Override // android.view.ViewGroup, android.view.ViewParent
        public ViewParent invalidateChildInParent(int[] iArr, Rect rect) {
            if (this.b != null) {
                rect.offset(iArr[0], iArr[1]);
                if (this.b instanceof ViewGroup) {
                    iArr[0] = 0;
                    iArr[1] = 0;
                    int[] iArr2 = new int[2];
                    a(iArr2);
                    rect.offset(iArr2[0], iArr2[1]);
                    return super.invalidateChildInParent(iArr, rect);
                }
                invalidate(rect);
            }
            return null;
        }
    }
}
