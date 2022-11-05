package android.support.v7.widget;

import android.graphics.Rect;
import android.support.v7.widget.RecyclerView;
import android.view.View;
/* compiled from: OrientationHelper.java */
/* loaded from: classes.dex */
public abstract class ag {

    /* renamed from: a  reason: collision with root package name */
    protected final RecyclerView.h f865a;
    final Rect b;
    private int c;

    public abstract int a(View view);

    public abstract void a(int i);

    public abstract int b(View view);

    public abstract int c();

    public abstract int c(View view);

    public abstract int d();

    public abstract int d(View view);

    public abstract int e();

    public abstract int e(View view);

    public abstract int f();

    public abstract int f(View view);

    public abstract int g();

    public abstract int h();

    public abstract int i();

    private ag(RecyclerView.h hVar) {
        this.c = Integer.MIN_VALUE;
        this.b = new Rect();
        this.f865a = hVar;
    }

    public void a() {
        this.c = f();
    }

    public int b() {
        if (Integer.MIN_VALUE == this.c) {
            return 0;
        }
        return f() - this.c;
    }

    public static ag a(RecyclerView.h hVar, int i) {
        switch (i) {
            case 0:
                return a(hVar);
            case 1:
                return b(hVar);
            default:
                throw new IllegalArgumentException("invalid orientation");
        }
    }

    public static ag a(RecyclerView.h hVar) {
        return new ag(hVar) { // from class: android.support.v7.widget.ag.1
            @Override // android.support.v7.widget.ag
            public int d() {
                return this.f865a.getWidth() - this.f865a.getPaddingRight();
            }

            @Override // android.support.v7.widget.ag
            public int e() {
                return this.f865a.getWidth();
            }

            @Override // android.support.v7.widget.ag
            public void a(int i) {
                this.f865a.offsetChildrenHorizontal(i);
            }

            @Override // android.support.v7.widget.ag
            public int c() {
                return this.f865a.getPaddingLeft();
            }

            @Override // android.support.v7.widget.ag
            public int e(View view) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                return layoutParams.rightMargin + this.f865a.getDecoratedMeasuredWidth(view) + layoutParams.leftMargin;
            }

            @Override // android.support.v7.widget.ag
            public int f(View view) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                return layoutParams.bottomMargin + this.f865a.getDecoratedMeasuredHeight(view) + layoutParams.topMargin;
            }

            @Override // android.support.v7.widget.ag
            public int b(View view) {
                return ((RecyclerView.LayoutParams) view.getLayoutParams()).rightMargin + this.f865a.getDecoratedRight(view);
            }

            @Override // android.support.v7.widget.ag
            public int a(View view) {
                return this.f865a.getDecoratedLeft(view) - ((RecyclerView.LayoutParams) view.getLayoutParams()).leftMargin;
            }

            @Override // android.support.v7.widget.ag
            public int c(View view) {
                this.f865a.getTransformedBoundingBox(view, true, this.b);
                return this.b.right;
            }

            @Override // android.support.v7.widget.ag
            public int d(View view) {
                this.f865a.getTransformedBoundingBox(view, true, this.b);
                return this.b.left;
            }

            @Override // android.support.v7.widget.ag
            public int f() {
                return (this.f865a.getWidth() - this.f865a.getPaddingLeft()) - this.f865a.getPaddingRight();
            }

            @Override // android.support.v7.widget.ag
            public int g() {
                return this.f865a.getPaddingRight();
            }

            @Override // android.support.v7.widget.ag
            public int h() {
                return this.f865a.getWidthMode();
            }

            @Override // android.support.v7.widget.ag
            public int i() {
                return this.f865a.getHeightMode();
            }
        };
    }

    public static ag b(RecyclerView.h hVar) {
        return new ag(hVar) { // from class: android.support.v7.widget.ag.2
            @Override // android.support.v7.widget.ag
            public int d() {
                return this.f865a.getHeight() - this.f865a.getPaddingBottom();
            }

            @Override // android.support.v7.widget.ag
            public int e() {
                return this.f865a.getHeight();
            }

            @Override // android.support.v7.widget.ag
            public void a(int i) {
                this.f865a.offsetChildrenVertical(i);
            }

            @Override // android.support.v7.widget.ag
            public int c() {
                return this.f865a.getPaddingTop();
            }

            @Override // android.support.v7.widget.ag
            public int e(View view) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                return layoutParams.bottomMargin + this.f865a.getDecoratedMeasuredHeight(view) + layoutParams.topMargin;
            }

            @Override // android.support.v7.widget.ag
            public int f(View view) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                return layoutParams.rightMargin + this.f865a.getDecoratedMeasuredWidth(view) + layoutParams.leftMargin;
            }

            @Override // android.support.v7.widget.ag
            public int b(View view) {
                return ((RecyclerView.LayoutParams) view.getLayoutParams()).bottomMargin + this.f865a.getDecoratedBottom(view);
            }

            @Override // android.support.v7.widget.ag
            public int a(View view) {
                return this.f865a.getDecoratedTop(view) - ((RecyclerView.LayoutParams) view.getLayoutParams()).topMargin;
            }

            @Override // android.support.v7.widget.ag
            public int c(View view) {
                this.f865a.getTransformedBoundingBox(view, true, this.b);
                return this.b.bottom;
            }

            @Override // android.support.v7.widget.ag
            public int d(View view) {
                this.f865a.getTransformedBoundingBox(view, true, this.b);
                return this.b.top;
            }

            @Override // android.support.v7.widget.ag
            public int f() {
                return (this.f865a.getHeight() - this.f865a.getPaddingTop()) - this.f865a.getPaddingBottom();
            }

            @Override // android.support.v7.widget.ag
            public int g() {
                return this.f865a.getPaddingBottom();
            }

            @Override // android.support.v7.widget.ag
            public int h() {
                return this.f865a.getHeightMode();
            }

            @Override // android.support.v7.widget.ag
            public int i() {
                return this.f865a.getWidthMode();
            }
        };
    }
}
