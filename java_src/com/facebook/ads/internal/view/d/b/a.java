package com.facebook.ads.internal.view.d.b;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.ads.internal.util.s;
import com.facebook.ads.internal.util.u;
import com.mopub.mobileads.resource.DrawableConstants;
/* loaded from: classes.dex */
public class a extends m {
    private final C0102a b;

    /* renamed from: com.facebook.ads.internal.view.d.b.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private static class C0102a extends RelativeLayout {

        /* renamed from: a  reason: collision with root package name */
        private final String f2282a;
        private final String b;
        private final String c;
        private final DisplayMetrics d;
        private ImageView e;
        private TextView f;
        private boolean g;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.facebook.ads.internal.view.d.b.a$a$3  reason: invalid class name */
        /* loaded from: classes.dex */
        public class AnonymousClass3 implements Animation.AnimationListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f2285a;
            final /* synthetic */ int b;

            AnonymousClass3(int i, int i2) {
                this.f2285a = i;
                this.b = i2;
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                new Handler().postDelayed(new Runnable() { // from class: com.facebook.ads.internal.view.d.b.a.a.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!C0102a.this.g) {
                            return;
                        }
                        C0102a.this.g = false;
                        Animation animation2 = new Animation() { // from class: com.facebook.ads.internal.view.d.b.a.a.3.1.1
                            @Override // android.view.animation.Animation
                            protected void applyTransformation(float f, Transformation transformation) {
                                int i = (int) (AnonymousClass3.this.f2285a + ((AnonymousClass3.this.b - AnonymousClass3.this.f2285a) * f));
                                C0102a.this.getLayoutParams().width = i;
                                C0102a.this.requestLayout();
                                C0102a.this.f.getLayoutParams().width = i - AnonymousClass3.this.b;
                                C0102a.this.f.requestLayout();
                            }

                            @Override // android.view.animation.Animation
                            public boolean willChangeBounds() {
                                return true;
                            }
                        };
                        animation2.setDuration(300L);
                        animation2.setFillAfter(true);
                        C0102a.this.startAnimation(animation2);
                    }
                }, 3000L);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        }

        public C0102a(Context context, String str, String str2, String str3) {
            super(context);
            this.g = false;
            this.f2282a = str;
            this.b = str2;
            this.c = str3;
            this.d = context.getResources().getDisplayMetrics();
            a();
            b();
            c();
        }

        private void a() {
            setOnTouchListener(new View.OnTouchListener() { // from class: com.facebook.ads.internal.view.d.b.a.a.1
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    if (motionEvent.getAction() == 0) {
                        if (!C0102a.this.g) {
                            C0102a.this.d();
                        } else if (!TextUtils.isEmpty(C0102a.this.b)) {
                            com.facebook.ads.internal.util.h.a(C0102a.this.getContext(), Uri.parse(C0102a.this.b), C0102a.this.c);
                        }
                        return true;
                    }
                    return false;
                }
            });
        }

        private void b() {
            Context context = getContext();
            this.e = new ImageView(context);
            this.e.setImageBitmap(u.a(context, s.IC_AD_CHOICES));
            addView(this.e);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(Math.round(this.d.density * 16.0f), Math.round(this.d.density * 16.0f));
            layoutParams.addRule(9);
            layoutParams.addRule(15, -1);
            layoutParams.setMargins(Math.round(4.0f * this.d.density), Math.round(this.d.density * 2.0f), Math.round(this.d.density * 2.0f), Math.round(this.d.density * 2.0f));
            this.e.setLayoutParams(layoutParams);
        }

        private void c() {
            this.f = new TextView(getContext());
            addView(this.f);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.width = 0;
            layoutParams.addRule(11, this.e.getId());
            layoutParams.addRule(15, -1);
            this.f.setLayoutParams(layoutParams);
            this.f.setSingleLine();
            this.f.setText(this.f2282a);
            this.f.setTextSize(10.0f);
            this.f.setTextColor(-4341303);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void d() {
            Paint paint = new Paint();
            paint.setTextSize(this.f.getTextSize());
            int round = Math.round(paint.measureText(this.f2282a) + (4.0f * this.d.density));
            final int width = getWidth();
            final int i = round + width;
            this.g = true;
            Animation animation = new Animation() { // from class: com.facebook.ads.internal.view.d.b.a.a.2
                @Override // android.view.animation.Animation
                protected void applyTransformation(float f, Transformation transformation) {
                    int i2 = (int) (width + ((i - width) * f));
                    C0102a.this.getLayoutParams().width = i2;
                    C0102a.this.requestLayout();
                    C0102a.this.f.getLayoutParams().width = i2 - width;
                    C0102a.this.f.requestLayout();
                }

                @Override // android.view.animation.Animation
                public boolean willChangeBounds() {
                    return true;
                }
            };
            animation.setAnimationListener(new AnonymousClass3(i, width));
            animation.setDuration(300L);
            animation.setFillAfter(true);
            startAnimation(animation);
        }
    }

    public a(Context context, String str, String str2, float[] fArr) {
        super(context);
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        this.b = new C0102a(context, "AdChoices", str, str2);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
        gradientDrawable.setAlpha(178);
        gradientDrawable.setCornerRadii(new float[]{fArr[0] * displayMetrics.density, fArr[0] * displayMetrics.density, fArr[1] * displayMetrics.density, fArr[1] * displayMetrics.density, fArr[2] * displayMetrics.density, fArr[2] * displayMetrics.density, fArr[3] * displayMetrics.density, fArr[3] * displayMetrics.density});
        if (Build.VERSION.SDK_INT >= 16) {
            this.b.setBackground(gradientDrawable);
        } else {
            this.b.setBackgroundDrawable(gradientDrawable);
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.width = Math.round(20.0f * displayMetrics.density);
        layoutParams.height = Math.round(displayMetrics.density * 18.0f);
        addView(this.b, layoutParams);
    }
}
