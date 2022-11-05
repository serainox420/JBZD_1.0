package com.mopub.common;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.StateListDrawable;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.widget.FrameLayout;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Drawables;
/* loaded from: classes3.dex */
public class CloseableLayout extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private final int f4324a;
    private OnCloseListener b;
    private final StateListDrawable c;
    private ClosePosition d;
    private final int e;
    private final int f;
    private final int g;
    private boolean h;
    private final Rect i;
    private final Rect j;
    private final Rect k;
    private final Rect l;
    private a m;

    /* loaded from: classes3.dex */
    public interface OnCloseListener {
        void onClose();
    }

    /* loaded from: classes3.dex */
    public enum ClosePosition {
        TOP_LEFT(51),
        TOP_CENTER(49),
        TOP_RIGHT(53),
        CENTER(17),
        BOTTOM_LEFT(83),
        BOTTOM_CENTER(81),
        BOTTOM_RIGHT(85);
        

        /* renamed from: a  reason: collision with root package name */
        private final int f4325a;

        ClosePosition(int i) {
            this.f4325a = i;
        }

        int a() {
            return this.f4325a;
        }
    }

    public CloseableLayout(Context context) {
        super(context);
        this.i = new Rect();
        this.j = new Rect();
        this.k = new Rect();
        this.l = new Rect();
        this.c = new StateListDrawable();
        this.d = ClosePosition.TOP_RIGHT;
        this.c.addState(SELECTED_STATE_SET, Drawables.INTERSTITIAL_CLOSE_BUTTON_PRESSED.createDrawable(context));
        this.c.addState(EMPTY_STATE_SET, Drawables.INTERSTITIAL_CLOSE_BUTTON_NORMAL.createDrawable(context));
        this.c.setState(EMPTY_STATE_SET);
        this.c.setCallback(this);
        this.f4324a = ViewConfiguration.get(context).getScaledTouchSlop();
        this.e = Dips.asIntPixels(50.0f, context);
        this.f = Dips.asIntPixels(30.0f, context);
        this.g = Dips.asIntPixels(8.0f, context);
        setWillNotDraw(false);
    }

    public void setOnCloseListener(OnCloseListener onCloseListener) {
        this.b = onCloseListener;
    }

    public void setClosePosition(ClosePosition closePosition) {
        Preconditions.checkNotNull(closePosition);
        this.d = closePosition;
        this.h = true;
        invalidate();
    }

    public void setCloseVisible(boolean z) {
        if (this.c.setVisible(z, false)) {
            invalidate(this.j);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.h = true;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.h) {
            this.h = false;
            this.i.set(0, 0, getWidth(), getHeight());
            applyCloseRegionBounds(this.d, this.i, this.j);
            this.l.set(this.j);
            this.l.inset(this.g, this.g);
            a(this.d, this.l, this.k);
            this.c.setBounds(this.k);
        }
        if (this.c.isVisible()) {
            this.c.draw(canvas);
        }
    }

    public void applyCloseRegionBounds(ClosePosition closePosition, Rect rect, Rect rect2) {
        a(closePosition, this.e, rect, rect2);
    }

    private void a(ClosePosition closePosition, Rect rect, Rect rect2) {
        a(closePosition, this.f, rect, rect2);
    }

    private void a(ClosePosition closePosition, int i, Rect rect, Rect rect2) {
        Gravity.apply(closePosition.a(), i, i, rect, rect2);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0) {
            return false;
        }
        return a((int) motionEvent.getX(), (int) motionEvent.getY(), 0);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!a((int) motionEvent.getX(), (int) motionEvent.getY(), this.f4324a)) {
            setClosePressed(false);
            super.onTouchEvent(motionEvent);
            return false;
        }
        switch (motionEvent.getAction()) {
            case 0:
                setClosePressed(true);
                break;
            case 1:
                if (a()) {
                    if (this.m == null) {
                        this.m = new a();
                    }
                    postDelayed(this.m, ViewConfiguration.getPressedStateDuration());
                    b();
                    break;
                }
                break;
            case 3:
                setClosePressed(false);
                break;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setClosePressed(boolean z) {
        if (z != a()) {
            this.c.setState(z ? SELECTED_STATE_SET : EMPTY_STATE_SET);
            invalidate(this.j);
        }
    }

    @VisibleForTesting
    boolean a() {
        return this.c.getState() == SELECTED_STATE_SET;
    }

    @VisibleForTesting
    boolean a(int i, int i2, int i3) {
        return i >= this.j.left - i3 && i2 >= this.j.top - i3 && i < this.j.right + i3 && i2 < this.j.bottom + i3;
    }

    private void b() {
        playSoundEffect(0);
        if (this.b != null) {
            this.b.onClose();
        }
    }

    /* loaded from: classes3.dex */
    private final class a implements Runnable {
        private a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CloseableLayout.this.setClosePressed(false);
        }
    }

    @VisibleForTesting
    void setCloseBounds(Rect rect) {
        this.j.set(rect);
    }

    @VisibleForTesting
    Rect getCloseBounds() {
        return this.j;
    }

    @VisibleForTesting
    void setCloseBoundChanged(boolean z) {
        this.h = z;
    }

    @VisibleForTesting
    public boolean isCloseVisible() {
        return this.c.isVisible();
    }
}
