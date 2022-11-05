package com.facebook.ads;

import android.content.Context;
import android.graphics.Paint;
import android.net.Uri;
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
import com.facebook.ads.NativeAd;
import com.facebook.ads.internal.util.h;
/* loaded from: classes.dex */
public class AdChoicesView extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    private final Context f2002a;
    private final NativeAd b;
    private final DisplayMetrics c;
    private boolean d;
    private TextView e;
    private String f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.facebook.ads.AdChoicesView$3  reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass3 implements Animation.AnimationListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f2005a;
        final /* synthetic */ int b;

        AnonymousClass3(int i, int i2) {
            this.f2005a = i;
            this.b = i2;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            new Handler().postDelayed(new Runnable() { // from class: com.facebook.ads.AdChoicesView.3.1
                @Override // java.lang.Runnable
                public void run() {
                    if (!AdChoicesView.this.d) {
                        return;
                    }
                    AdChoicesView.this.d = false;
                    Animation animation2 = new Animation() { // from class: com.facebook.ads.AdChoicesView.3.1.1
                        @Override // android.view.animation.Animation
                        protected void applyTransformation(float f, Transformation transformation) {
                            int i = (int) (AnonymousClass3.this.f2005a + ((AnonymousClass3.this.b - AnonymousClass3.this.f2005a) * f));
                            AdChoicesView.this.getLayoutParams().width = i;
                            AdChoicesView.this.requestLayout();
                            AdChoicesView.this.e.getLayoutParams().width = i - AnonymousClass3.this.b;
                            AdChoicesView.this.e.requestLayout();
                        }

                        @Override // android.view.animation.Animation
                        public boolean willChangeBounds() {
                            return true;
                        }
                    };
                    animation2.setDuration(300L);
                    animation2.setFillAfter(true);
                    AdChoicesView.this.startAnimation(animation2);
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

    public AdChoicesView(Context context, NativeAd nativeAd) {
        this(context, nativeAd, false);
    }

    public AdChoicesView(Context context, final NativeAd nativeAd, boolean z) {
        super(context);
        this.d = false;
        this.f2002a = context;
        this.b = nativeAd;
        this.c = this.f2002a.getResources().getDisplayMetrics();
        if (this.b.isAdLoaded() && !this.b.a().g()) {
            setVisibility(8);
            return;
        }
        this.f = this.b.b();
        if (TextUtils.isEmpty(this.f)) {
            this.f = "AdChoices";
        }
        NativeAd.Image adChoicesIcon = this.b.getAdChoicesIcon();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        setOnTouchListener(new View.OnTouchListener() { // from class: com.facebook.ads.AdChoicesView.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 0) {
                    if (!AdChoicesView.this.d) {
                        AdChoicesView.this.a();
                    } else if (!TextUtils.isEmpty(AdChoicesView.this.b.getAdChoicesLinkUrl())) {
                        h.a(AdChoicesView.this.f2002a, Uri.parse(AdChoicesView.this.b.getAdChoicesLinkUrl()), nativeAd.h());
                    }
                    return true;
                }
                return false;
            }
        });
        this.e = new TextView(this.f2002a);
        addView(this.e);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        if (!z || adChoicesIcon == null) {
            this.d = true;
        } else {
            layoutParams2.addRule(11, a(adChoicesIcon).getId());
            layoutParams2.width = 0;
            layoutParams.width = Math.round((adChoicesIcon.getWidth() + 4) * this.c.density);
            layoutParams.height = Math.round((adChoicesIcon.getHeight() + 2) * this.c.density);
            this.d = false;
        }
        setLayoutParams(layoutParams);
        layoutParams2.addRule(15, -1);
        this.e.setLayoutParams(layoutParams2);
        this.e.setSingleLine();
        this.e.setText(this.f);
        this.e.setTextSize(10.0f);
        this.e.setTextColor(-4341303);
    }

    private ImageView a(NativeAd.Image image) {
        ImageView imageView = new ImageView(this.f2002a);
        addView(imageView);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(Math.round(image.getWidth() * this.c.density), Math.round(image.getHeight() * this.c.density));
        layoutParams.addRule(9);
        layoutParams.addRule(15, -1);
        layoutParams.setMargins(Math.round(4.0f * this.c.density), Math.round(this.c.density * 2.0f), Math.round(this.c.density * 2.0f), Math.round(this.c.density * 2.0f));
        imageView.setLayoutParams(layoutParams);
        NativeAd.downloadAndDisplayImage(image, imageView);
        return imageView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        Paint paint = new Paint();
        paint.setTextSize(this.e.getTextSize());
        int round = Math.round(paint.measureText(this.f) + (4.0f * this.c.density));
        final int width = getWidth();
        final int i = round + width;
        this.d = true;
        Animation animation = new Animation() { // from class: com.facebook.ads.AdChoicesView.2
            @Override // android.view.animation.Animation
            protected void applyTransformation(float f, Transformation transformation) {
                int i2 = (int) (width + ((i - width) * f));
                AdChoicesView.this.getLayoutParams().width = i2;
                AdChoicesView.this.requestLayout();
                AdChoicesView.this.e.getLayoutParams().width = i2 - width;
                AdChoicesView.this.e.requestLayout();
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
