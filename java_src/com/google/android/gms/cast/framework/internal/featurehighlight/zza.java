package com.google.android.gms.cast.framework.internal.featurehighlight;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v4.view.e;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.R;
import com.google.android.gms.internal.zzbli;
import com.google.android.gms.internal.zzbln;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2.dex */
public final class zza extends ViewGroup {
    private View targetView;
    private final int[] zzaqZ;
    private final Rect zzara;
    private final Rect zzarb;
    private final zze zzarc;
    private final zzc zzard;
    private zzb zzare;
    private View zzarf;
    private Animator zzarg;
    private final zzd zzarh;
    private final e zzari;
    private e zzarj;
    private InterfaceC0157zza zzark;
    private boolean zzarl;

    /* renamed from: com.google.android.gms.cast.framework.internal.featurehighlight.zza$zza  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface InterfaceC0157zza {
        void dismiss();

        void zztc();
    }

    public zza(Context context) {
        super(context);
        this.zzaqZ = new int[2];
        this.zzara = new Rect();
        this.zzarb = new Rect();
        setId(R.id.cast_featurehighlight_view);
        setWillNotDraw(false);
        this.zzard = new zzc(context);
        this.zzard.setCallback(this);
        this.zzarc = new zze(context);
        this.zzarc.setCallback(this);
        this.zzarh = new zzd(this);
        this.zzari = new e(context, new GestureDetector.SimpleOnGestureListener() { // from class: com.google.android.gms.cast.framework.internal.featurehighlight.zza.1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onSingleTapUp(MotionEvent motionEvent) {
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                if (!zza.this.zzc(x, y) || !zza.this.zzarc.zzd(x, y)) {
                    zza.this.zzark.dismiss();
                    return true;
                }
                return true;
            }
        });
        this.zzari.a(false);
        setVisibility(8);
    }

    private void zza(Animator animator) {
        if (this.zzarg != null) {
            this.zzarg.cancel();
        }
        this.zzarg = animator;
        this.zzarg.start();
    }

    private void zza(int[] iArr, View view) {
        getLocationInWindow(iArr);
        int i = iArr[0];
        int i2 = iArr[1];
        view.getLocationInWindow(iArr);
        iArr[0] = iArr[0] - i;
        iArr[1] = iArr[1] - i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean zzc(float f, float f2) {
        return this.zzarb.contains(Math.round(f), Math.round(f2));
    }

    private Animator zzk(final Runnable runnable) {
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.zzare.asView(), "alpha", BitmapDescriptorFactory.HUE_RED).setDuration(200L);
        duration.setInterpolator(zzbli.zzUN());
        Animator zztm = this.zzarc.zztm();
        Animator zztm2 = this.zzard.zztm();
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(duration, zztm, zztm2);
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.gms.cast.framework.internal.featurehighlight.zza.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                zza.this.setVisibility(8);
                zza.this.zzarg = null;
                if (runnable != null) {
                    runnable.run();
                }
            }
        });
        return animatorSet;
    }

    private Animator zzl(final Runnable runnable) {
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.zzare.asView(), "alpha", BitmapDescriptorFactory.HUE_RED).setDuration(200L);
        duration.setInterpolator(zzbli.zzUN());
        Animator zzf = this.zzarc.zzf(this.zzara.exactCenterX() - this.zzarc.getCenterX(), this.zzara.exactCenterY() - this.zzarc.getCenterY());
        Animator zztn = this.zzard.zztn();
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(duration, zzf, zztn);
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.gms.cast.framework.internal.featurehighlight.zza.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                zza.this.setVisibility(8);
                zza.this.zzarg = null;
                if (runnable != null) {
                    runnable.run();
                }
            }
        });
        return animatorSet;
    }

    private Animator zztk() {
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.zzare.asView(), "alpha", BitmapDescriptorFactory.HUE_RED, 1.0f).setDuration(350L);
        duration.setInterpolator(zzbli.zzUM());
        Animator zze = this.zzarc.zze(this.zzara.exactCenterX() - this.zzarc.getCenterX(), this.zzara.exactCenterY() - this.zzarc.getCenterY());
        Animator zztk = this.zzard.zztk();
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(duration, zze, zztk);
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.gms.cast.framework.internal.featurehighlight.zza.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                zza.this.zzarg = zza.this.zztl();
                zza.this.zzarg.start();
            }
        });
        return animatorSet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Animator zztl() {
        return this.zzard.zztl();
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ViewGroup.MarginLayoutParams(layoutParams);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        canvas.save();
        if (this.zzarf != null) {
            canvas.clipRect(this.zzarb);
        }
        this.zzarc.draw(canvas);
        this.zzard.draw(canvas);
        if (this.targetView != null) {
            if (this.targetView.getParent() != null) {
                Bitmap createBitmap = Bitmap.createBitmap(this.targetView.getWidth(), this.targetView.getHeight(), Bitmap.Config.ARGB_8888);
                this.targetView.draw(new Canvas(createBitmap));
                int color = this.zzarc.getColor();
                int red = Color.red(color);
                int green = Color.green(color);
                int blue = Color.blue(color);
                for (int i = 0; i < createBitmap.getHeight(); i++) {
                    for (int i2 = 0; i2 < createBitmap.getWidth(); i2++) {
                        int pixel = createBitmap.getPixel(i2, i);
                        if (Color.alpha(pixel) != 0) {
                            createBitmap.setPixel(i2, i, Color.argb(Color.alpha(pixel), red, green, blue));
                        }
                    }
                }
                canvas.drawBitmap(createBitmap, this.zzara.left, this.zzara.top, (Paint) null);
            }
            canvas.restore();
            return;
        }
        throw new IllegalStateException("Neither target view nor drawable was set");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.targetView == null) {
            throw new IllegalStateException("Target view must be set before layout");
        }
        if (this.targetView.getParent() != null) {
            zza(this.zzaqZ, this.targetView);
        }
        this.zzara.set(this.zzaqZ[0], this.zzaqZ[1], this.zzaqZ[0] + this.targetView.getWidth(), this.zzaqZ[1] + this.targetView.getHeight());
        if (this.zzarf != null) {
            zza(this.zzaqZ, this.zzarf);
            this.zzarb.set(this.zzaqZ[0], this.zzaqZ[1], this.zzaqZ[0] + this.zzarf.getMeasuredWidth(), this.zzaqZ[1] + this.zzarf.getMeasuredHeight());
        } else {
            this.zzarb.set(i, i2, i3, i4);
        }
        this.zzarc.setBounds(this.zzarb);
        this.zzard.setBounds(this.zzarb);
        this.zzarh.zza(this.zzara, this.zzarb);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(resolveSize(View.MeasureSpec.getSize(i), i), resolveSize(View.MeasureSpec.getSize(i2), i2));
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.zzarl = this.zzara.contains((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        if (this.zzarl) {
            if (this.zzarj != null) {
                this.zzarj.a(motionEvent);
                if (actionMasked == 1) {
                    motionEvent = MotionEvent.obtain(motionEvent);
                    motionEvent.setAction(3);
                }
            }
            if (this.targetView.getParent() != null) {
                this.targetView.onTouchEvent(motionEvent);
            }
        } else {
            this.zzari.a(motionEvent);
        }
        return true;
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.zzarc || drawable == this.zzard || drawable == null;
    }

    public void zza(final View view, View view2, final boolean z, final InterfaceC0157zza interfaceC0157zza) {
        this.targetView = (View) zzbln.zzw(view);
        this.zzarf = view2;
        this.zzark = (InterfaceC0157zza) zzbln.zzw(interfaceC0157zza);
        this.zzarj = new e(getContext(), new GestureDetector.SimpleOnGestureListener(this) { // from class: com.google.android.gms.cast.framework.internal.featurehighlight.zza.2
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onSingleTapUp(MotionEvent motionEvent) {
                if (view.getParent() != null) {
                    view.performClick();
                }
                if (z) {
                    interfaceC0157zza.zztc();
                    return true;
                }
                return true;
            }
        });
        this.zzarj.a(false);
        setVisibility(4);
    }

    public void zza(zzb zzbVar) {
        this.zzare = (zzb) zzbln.zzw(zzbVar);
        addView(zzbVar.asView(), 0);
    }

    public void zzca(int i) {
        this.zzarc.setColor(i);
    }

    public void zzh(final Runnable runnable) {
        addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.google.android.gms.cast.framework.internal.featurehighlight.zza.3
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                if (runnable != null) {
                    runnable.run();
                }
                zza.this.zztf();
                zza.this.removeOnLayoutChangeListener(this);
            }
        });
    }

    public void zzi(Runnable runnable) {
        zza(zzl(runnable));
    }

    public void zzj(Runnable runnable) {
        zza(zzk(runnable));
    }

    public void zztf() {
        if (this.targetView == null) {
            throw new IllegalStateException("Target view must be set before animation");
        }
        setVisibility(0);
        zza(zztk());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Drawable zztg() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View zzth() {
        return this.zzare.asView();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zze zzti() {
        return this.zzarc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzc zztj() {
        return this.zzard;
    }
}
