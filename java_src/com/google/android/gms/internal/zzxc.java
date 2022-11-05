package com.google.android.gms.internal;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.android.gms.R;
import com.google.android.gms.cast.framework.IntroductoryOverlay;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2.dex */
public class zzxc extends RelativeLayout implements IntroductoryOverlay {
    private Activity mActivity;
    private final boolean zzaqM;
    private boolean zzaqO;
    private int zzaqR;
    private final zza zzaqS;
    private IntroductoryOverlay.OnOverlayDismissedListener zzaqy;

    /* loaded from: classes2.dex */
    private static class zza {
        public int x;
        public int y;
        public Paint zzaqV;
        public float zzaqW;

        private zza() {
        }
    }

    public zzxc(IntroductoryOverlay.Builder builder) {
        this(builder, null, R.attr.castIntroOverlayStyle);
    }

    @TargetApi(14)
    public zzxc(IntroductoryOverlay.Builder builder, AttributeSet attributeSet, int i) {
        super(builder.getActivity(), attributeSet, i);
        this.mActivity = builder.getActivity();
        this.zzaqM = builder.zzsU();
        this.zzaqy = builder.zzsS();
        TypedArray obtainStyledAttributes = this.mActivity.getTheme().obtainStyledAttributes(attributeSet, R.styleable.CastIntroOverlay, i, R.style.CastIntroOverlay);
        if (builder.zzsR() != null) {
            Rect rect = new Rect();
            builder.zzsR().getGlobalVisibleRect(rect);
            this.zzaqS = new zza();
            this.zzaqS.x = rect.centerX();
            this.zzaqS.y = rect.centerY();
            this.zzaqS.zzaqV = zztd();
            this.zzaqS.zzaqW = builder.zzsX();
            if (this.zzaqS.zzaqW == BitmapDescriptorFactory.HUE_RED) {
                this.zzaqS.zzaqW = obtainStyledAttributes.getDimension(R.styleable.CastIntroOverlay_castFocusRadius, BitmapDescriptorFactory.HUE_RED);
            }
        } else {
            this.zzaqS = null;
        }
        LayoutInflater.from(this.mActivity).inflate(R.layout.cast_intro_overlay, this);
        this.zzaqR = builder.zzsT();
        if (this.zzaqR == 0) {
            this.zzaqR = obtainStyledAttributes.getColor(R.styleable.CastIntroOverlay_castBackgroundColor, Color.argb(0, 0, 0, 0));
        }
        TextView textView = (TextView) findViewById(R.id.textTitle);
        if (!TextUtils.isEmpty(builder.zzsV())) {
            textView.setText(builder.zzsV());
            int resourceId = obtainStyledAttributes.getResourceId(R.styleable.CastIntroOverlay_castTitleTextAppearance, 0);
            if (resourceId != 0) {
                textView.setTextAppearance(this.mActivity, resourceId);
            }
        }
        zza(builder.zzsW(), obtainStyledAttributes);
        obtainStyledAttributes.recycle();
        int i2 = Build.VERSION.SDK_INT;
        setFitsSystemWindows(true);
    }

    @TargetApi(11)
    private void zza(String str, TypedArray typedArray) {
        if (TextUtils.isEmpty(str)) {
            str = typedArray.getString(R.styleable.CastIntroOverlay_castButtonText);
        }
        int color = typedArray.getColor(R.styleable.CastIntroOverlay_castButtonBackgroundColor, Color.argb(0, 0, 0, 0));
        Button button = (Button) findViewById(R.id.button);
        button.setText(str);
        button.getBackground().setColorFilter(color, PorterDuff.Mode.MULTIPLY);
        int resourceId = typedArray.getResourceId(R.styleable.CastIntroOverlay_castButtonTextAppearance, 0);
        if (resourceId != 0) {
            button.setTextAppearance(this.mActivity, resourceId);
        }
        button.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.gms.internal.zzxc.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (Build.VERSION.SDK_INT < 16) {
                    zzxc.this.zzte();
                    return;
                }
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "alpha", BitmapDescriptorFactory.HUE_RED);
                ofFloat.setDuration(400L).addListener(new AnimatorListenerAdapter() { // from class: com.google.android.gms.internal.zzxc.1.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        zzxc.this.zzte();
                    }
                });
                ofFloat.start();
            }
        });
    }

    private Paint zztd() {
        PorterDuffXfermode porterDuffXfermode = new PorterDuffXfermode(PorterDuff.Mode.MULTIPLY);
        Paint paint = new Paint();
        paint.setColor(-1);
        paint.setAlpha(0);
        paint.setXfermode(porterDuffXfermode);
        paint.setAntiAlias(true);
        return paint;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzte() {
        IntroductoryOverlay.zza.zzau(this.mActivity);
        if (this.zzaqy != null) {
            this.zzaqy.onOverlayDismissed();
            this.zzaqy = null;
        }
        remove();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        Bitmap createBitmap = Bitmap.createBitmap(getWidth(), getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas2 = new Canvas(createBitmap);
        canvas2.drawColor(this.zzaqR);
        if (this.zzaqS != null) {
            canvas2.drawCircle(this.zzaqS.x, this.zzaqS.y, this.zzaqS.zzaqW, this.zzaqS.zzaqV);
        }
        canvas.drawBitmap(createBitmap, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (Paint) null);
        createBitmap.recycle();
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        if (this.mActivity != null) {
            this.mActivity = null;
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return true;
    }

    @Override // com.google.android.gms.cast.framework.IntroductoryOverlay
    public void remove() {
        if (this.mActivity != null) {
            ((ViewGroup) this.mActivity.getWindow().getDecorView()).removeView(this);
            this.mActivity = null;
        }
        this.zzaqy = null;
    }

    @Override // com.google.android.gms.cast.framework.IntroductoryOverlay
    public void show() {
        if (this.mActivity != null && !zzxb.zzax(this.mActivity)) {
            if (this.zzaqM && IntroductoryOverlay.zza.zzav(this.mActivity)) {
                this.mActivity = null;
                this.zzaqy = null;
            } else if (this.zzaqO) {
            } else {
                this.zzaqO = true;
                ((ViewGroup) this.mActivity.getWindow().getDecorView()).addView(this);
            }
        }
    }
}
