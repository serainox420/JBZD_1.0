package android.support.v7.app;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.support.v4.app.FragmentActivity;
import android.support.v7.media.g;
import android.support.v7.mediarouter.R;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.Toast;
/* loaded from: classes.dex */
public class MediaRouteButton extends View {
    private static final int[] m = {16842912};
    private static final int[] n = {16842911};

    /* renamed from: a  reason: collision with root package name */
    private final android.support.v7.media.g f558a;
    private final a b;
    private android.support.v7.media.f c;
    private r d;
    private boolean e;
    private Drawable f;
    private boolean g;
    private boolean h;
    private boolean i;
    private ColorStateList j;
    private int k;
    private int l;

    public MediaRouteButton(Context context) {
        this(context, null);
    }

    public MediaRouteButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.mediaRouteButtonStyle);
    }

    public MediaRouteButton(Context context, AttributeSet attributeSet, int i) {
        super(t.a(context, i), attributeSet, i);
        this.c = android.support.v7.media.f.b;
        this.d = r.a();
        Context context2 = getContext();
        this.f558a = android.support.v7.media.g.a(context2);
        this.b = new a();
        TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, R.styleable.MediaRouteButton, i, 0);
        this.j = obtainStyledAttributes.getColorStateList(R.styleable.MediaRouteButton_buttonTint);
        setRemoteIndicatorDrawable(obtainStyledAttributes.getDrawable(R.styleable.MediaRouteButton_externalRouteEnabledDrawable));
        this.k = obtainStyledAttributes.getDimensionPixelSize(R.styleable.MediaRouteButton_android_minWidth, 0);
        this.l = obtainStyledAttributes.getDimensionPixelSize(R.styleable.MediaRouteButton_android_minHeight, 0);
        obtainStyledAttributes.recycle();
        c();
        setClickable(true);
        setLongClickable(true);
    }

    public android.support.v7.media.f getRouteSelector() {
        return this.c;
    }

    public void setRouteSelector(android.support.v7.media.f fVar) {
        if (fVar == null) {
            throw new IllegalArgumentException("selector must not be null");
        }
        if (!this.c.equals(fVar)) {
            if (this.e) {
                if (!this.c.c()) {
                    this.f558a.a(this.b);
                }
                if (!fVar.c()) {
                    this.f558a.a(fVar, (g.a) this.b);
                }
            }
            this.c = fVar;
            b();
        }
    }

    public r getDialogFactory() {
        return this.d;
    }

    public void setDialogFactory(r rVar) {
        if (rVar == null) {
            throw new IllegalArgumentException("factory must not be null");
        }
        this.d = rVar;
    }

    public boolean a() {
        if (!this.e) {
            return false;
        }
        android.support.v4.app.u fragmentManager = getFragmentManager();
        if (fragmentManager == null) {
            throw new IllegalStateException("The activity must be a subclass of FragmentActivity");
        }
        g.C0043g c = this.f558a.c();
        if (c.o() || !c.a(this.c)) {
            if (fragmentManager.a("android.support.v7.mediarouter:MediaRouteChooserDialogFragment") != null) {
                Log.w("MediaRouteButton", "showDialog(): Route chooser dialog already showing!");
                return false;
            }
            o b = this.d.b();
            b.a(this.c);
            b.show(fragmentManager, "android.support.v7.mediarouter:MediaRouteChooserDialogFragment");
        } else if (fragmentManager.a("android.support.v7.mediarouter:MediaRouteControllerDialogFragment") != null) {
            Log.w("MediaRouteButton", "showDialog(): Route controller dialog already showing!");
            return false;
        } else {
            this.d.c().show(fragmentManager, "android.support.v7.mediarouter:MediaRouteControllerDialogFragment");
        }
        return true;
    }

    private android.support.v4.app.u getFragmentManager() {
        Activity activity = getActivity();
        if (activity instanceof FragmentActivity) {
            return ((FragmentActivity) activity).getSupportFragmentManager();
        }
        return null;
    }

    private Activity getActivity() {
        for (Context context = getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof Activity) {
                return (Activity) context;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setCheatSheetEnabled(boolean z) {
        this.h = z;
    }

    @Override // android.view.View
    public boolean performClick() {
        boolean performClick = super.performClick();
        if (!performClick) {
            playSoundEffect(0);
        }
        return a() || performClick;
    }

    @Override // android.view.View
    public boolean performLongClick() {
        if (super.performLongClick()) {
            return true;
        }
        if (!this.h) {
            return false;
        }
        int[] iArr = new int[2];
        Rect rect = new Rect();
        getLocationOnScreen(iArr);
        getWindowVisibleDisplayFrame(rect);
        Context context = getContext();
        int width = getWidth();
        int height = getHeight();
        int i = iArr[1] + (height / 2);
        int i2 = context.getResources().getDisplayMetrics().widthPixels;
        Toast makeText = Toast.makeText(context, R.string.mr_button_content_description, 0);
        if (i < rect.height()) {
            makeText.setGravity(8388661, (i2 - iArr[0]) - (width / 2), height);
        } else {
            makeText.setGravity(81, 0, height);
        }
        makeText.show();
        performHapticFeedback(0);
        return true;
    }

    @Override // android.view.View
    protected int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (this.i) {
            mergeDrawableStates(onCreateDrawableState, n);
        } else if (this.g) {
            mergeDrawableStates(onCreateDrawableState, m);
        }
        return onCreateDrawableState;
    }

    @Override // android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.f != null) {
            this.f.setState(getDrawableState());
            invalidate();
        }
    }

    public void setRemoteIndicatorDrawable(Drawable drawable) {
        if (this.f != null) {
            this.f.setCallback(null);
            unscheduleDrawable(this.f);
        }
        if (this.j != null) {
            drawable = android.support.v4.b.a.a.g(drawable.mutate());
            android.support.v4.b.a.a.a(drawable, this.j);
        }
        this.f = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            drawable.setState(getDrawableState());
            drawable.setVisible(getVisibility() == 0, false);
        }
        refreshDrawableState();
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f;
    }

    @Override // android.view.View
    public void jumpDrawablesToCurrentState() {
        if (getBackground() != null) {
            android.support.v4.b.a.a.a(getBackground());
        }
        if (this.f != null) {
            android.support.v4.b.a.a.a(this.f);
        }
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        if (this.f != null) {
            this.f.setVisible(getVisibility() == 0, false);
        }
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.e = true;
        if (!this.c.c()) {
            this.f558a.a(this.c, (g.a) this.b);
        }
        b();
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        this.e = false;
        if (!this.c.c()) {
            this.f558a.a(this.b);
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int min;
        int i3 = 0;
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int max = Math.max(this.k, this.f != null ? this.f.getIntrinsicWidth() + getPaddingLeft() + getPaddingRight() : 0);
        int i4 = this.l;
        if (this.f != null) {
            i3 = this.f.getIntrinsicHeight() + getPaddingTop() + getPaddingBottom();
        }
        int max2 = Math.max(i4, i3);
        switch (mode) {
            case Integer.MIN_VALUE:
                min = Math.min(size, max);
                break;
            case 1073741824:
                min = size;
                break;
            default:
                min = max;
                break;
        }
        switch (mode2) {
            case Integer.MIN_VALUE:
                max2 = Math.min(size2, max2);
                break;
            case 1073741824:
                max2 = size2;
                break;
        }
        setMeasuredDimension(min, max2);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f != null) {
            int paddingLeft = getPaddingLeft();
            int width = getWidth() - getPaddingRight();
            int paddingTop = getPaddingTop();
            int height = getHeight() - getPaddingBottom();
            int intrinsicWidth = this.f.getIntrinsicWidth();
            int intrinsicHeight = this.f.getIntrinsicHeight();
            int i = paddingLeft + (((width - paddingLeft) - intrinsicWidth) / 2);
            int i2 = (((height - paddingTop) - intrinsicHeight) / 2) + paddingTop;
            this.f.setBounds(i, i2, i + intrinsicWidth, i2 + intrinsicHeight);
            this.f.draw(canvas);
        }
    }

    void b() {
        boolean z = false;
        g.C0043g c = this.f558a.c();
        boolean z2 = !c.o() && c.a(this.c);
        boolean z3 = z2 && c.h();
        if (this.g != z2) {
            this.g = z2;
            z = true;
        }
        if (this.i != z3) {
            this.i = z3;
            z = true;
        }
        if (z) {
            c();
            refreshDrawableState();
        }
        if (this.e) {
            setEnabled(this.f558a.a(this.c, 1));
        }
        if (this.f.getCurrent() instanceof AnimationDrawable) {
            AnimationDrawable animationDrawable = (AnimationDrawable) this.f.getCurrent();
            if (this.e) {
                if ((z || z3) && !animationDrawable.isRunning()) {
                    animationDrawable.start();
                }
            } else if (z2 && !z3) {
                if (animationDrawable.isRunning()) {
                    animationDrawable.stop();
                }
                animationDrawable.selectDrawable(animationDrawable.getNumberOfFrames() - 1);
            }
        }
    }

    private void c() {
        int i;
        if (this.i) {
            i = R.string.mr_cast_button_connecting;
        } else if (this.g) {
            i = R.string.mr_cast_button_connected;
        } else {
            i = R.string.mr_cast_button_disconnected;
        }
        setContentDescription(getContext().getString(i));
    }

    /* loaded from: classes.dex */
    private final class a extends g.a {
        a() {
        }

        @Override // android.support.v7.media.g.a
        public void onRouteAdded(android.support.v7.media.g gVar, g.C0043g c0043g) {
            MediaRouteButton.this.b();
        }

        @Override // android.support.v7.media.g.a
        public void onRouteRemoved(android.support.v7.media.g gVar, g.C0043g c0043g) {
            MediaRouteButton.this.b();
        }

        @Override // android.support.v7.media.g.a
        public void onRouteChanged(android.support.v7.media.g gVar, g.C0043g c0043g) {
            MediaRouteButton.this.b();
        }

        @Override // android.support.v7.media.g.a
        public void onRouteSelected(android.support.v7.media.g gVar, g.C0043g c0043g) {
            MediaRouteButton.this.b();
        }

        @Override // android.support.v7.media.g.a
        public void onRouteUnselected(android.support.v7.media.g gVar, g.C0043g c0043g) {
            MediaRouteButton.this.b();
        }

        @Override // android.support.v7.media.g.a
        public void onProviderAdded(android.support.v7.media.g gVar, g.e eVar) {
            MediaRouteButton.this.b();
        }

        @Override // android.support.v7.media.g.a
        public void onProviderRemoved(android.support.v7.media.g gVar, g.e eVar) {
            MediaRouteButton.this.b();
        }

        @Override // android.support.v7.media.g.a
        public void onProviderChanged(android.support.v7.media.g gVar, g.e eVar) {
            MediaRouteButton.this.b();
        }
    }
}
