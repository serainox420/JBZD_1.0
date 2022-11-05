package com.facebook.ads.internal.view.hscroll;

import android.content.Context;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.MotionEvent;
import android.view.View;
/* loaded from: classes.dex */
public class d extends RecyclerView implements View.OnTouchListener {

    /* renamed from: a  reason: collision with root package name */
    protected int f2336a;
    protected int b;
    private int c;
    private boolean d;
    private boolean e;
    private LinearLayoutManager f;
    private a g;

    /* loaded from: classes.dex */
    public interface a {
        int a(int i);
    }

    public d(Context context) {
        super(context);
        this.f2336a = 0;
        this.c = 0;
        this.d = true;
        this.e = false;
        a(context);
    }

    private int a(int i) {
        int i2 = this.c - i;
        int a2 = this.g.a(i2);
        return i2 > this.b ? a(this.f2336a, a2) : i2 < (-this.b) ? b(this.f2336a, a2) : this.f2336a;
    }

    private int a(int i, int i2) {
        return Math.min(i + i2, getItemCount() - 1);
    }

    private void a(Context context) {
        setOnTouchListener(this);
        this.b = ((int) context.getResources().getDisplayMetrics().density) * 10;
    }

    private int b(int i, int i2) {
        return Math.max(i - i2, 0);
    }

    private int getItemCount() {
        if (getAdapter() == null) {
            return 0;
        }
        return getAdapter().getItemCount();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(int i, boolean z) {
        if (getAdapter() == null) {
            return;
        }
        this.f2336a = i;
        if (z) {
            smoothScrollToPosition(i);
        } else {
            scrollToPosition(i);
        }
    }

    public int getCurrentPosition() {
        return this.f2336a;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int rawX = (int) motionEvent.getRawX();
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 1 || actionMasked == 6 || actionMasked == 3 || actionMasked == 4) {
            if (this.e) {
                a(a(rawX), true);
            }
            this.d = true;
            this.e = false;
            return true;
        } else if (actionMasked != 0 && actionMasked != 5 && (!this.d || actionMasked != 2)) {
            return false;
        } else {
            this.c = rawX;
            if (this.d) {
                this.d = false;
            }
            this.e = true;
            return false;
        }
    }

    @Override // android.support.v7.widget.RecyclerView
    public void setLayoutManager(RecyclerView.h hVar) {
        if (!(hVar instanceof LinearLayoutManager)) {
            throw new IllegalArgumentException("SnapRecyclerView only supports LinearLayoutManager");
        }
        super.setLayoutManager(hVar);
        this.f = (LinearLayoutManager) hVar;
    }

    public void setSnapDelegate(a aVar) {
        this.g = aVar;
    }
}
