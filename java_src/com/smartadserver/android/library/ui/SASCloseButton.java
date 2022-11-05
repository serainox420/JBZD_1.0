package com.smartadserver.android.library.ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.StateListDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Build;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.mopub.mobileads.resource.DrawableConstants;
/* loaded from: classes3.dex */
public class SASCloseButton extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    public static final int[] f5508a = {10, 11, 12, 9, 14, 15};
    private CloseButtonImageView b;
    private TextView c;
    private long d;
    private long e;
    private Animation f;
    private boolean g;

    static /* synthetic */ long a(SASCloseButton sASCloseButton, long j) {
        long j2 = sASCloseButton.d - j;
        sASCloseButton.d = j2;
        return j2;
    }

    @SuppressLint({"NewApi"})
    public SASCloseButton(Context context) {
        super(context);
        this.d = -1L;
        this.g = false;
        this.b = new CloseButtonImageView(getContext());
        this.f = AnimationUtils.loadAnimation(getContext().getApplicationContext(), 17432576);
        this.b.setScaleType(ImageView.ScaleType.CENTER_CROP);
        this.b.setVisibility(4);
        this.c = new TextView(getContext());
        ViewGroup.LayoutParams layoutParams = this.b.getLayoutParams();
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(layoutParams.width - (this.b.getPaddingLeft() * 2), layoutParams.height - (this.b.getPaddingLeft() * 2));
        layoutParams2.addRule(13, -1);
        this.c.setLayoutParams(layoutParams2);
        ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
        shapeDrawable.getPaint().setColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
        shapeDrawable.getPaint().setStyle(Paint.Style.FILL);
        shapeDrawable.getPaint().setAntiAlias(true);
        if (Build.VERSION.SDK_INT >= 16) {
            this.c.setBackground(shapeDrawable);
        } else {
            this.c.setBackgroundDrawable(shapeDrawable);
        }
        this.c.setTypeface(Typeface.create("sans-serif-light", 0));
        this.c.setTextColor(-1);
        this.c.setGravity(17);
        this.c.setIncludeFontPadding(false);
        this.c.setTextSize(0, Math.min(layoutParams2.width * 0.6f, layoutParams2.height * 0.6f));
        this.c.setVisibility(8);
        if (Build.VERSION.SDK_INT >= 11) {
            this.c.setAlpha(0.75f);
        }
        this.c.setClickable(true);
        ((RelativeLayout.LayoutParams) this.b.getLayoutParams()).addRule(13, -1);
        addView(this.b);
        setVisibility(8);
        addView(this.c);
    }

    public void setCloseButtonPosition(int i) {
        a(a(i), (RelativeLayout.LayoutParams) getLayoutParams());
        getParent().requestLayout();
    }

    /* loaded from: classes3.dex */
    public static class CloseButtonImageView extends ImageView {
        public CloseButtonImageView(Context context) {
            super(context);
            a();
        }

        public CloseButtonImageView(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            a();
        }

        public void a() {
            StateListDrawable stateListDrawable;
            Bitmap bitmap = com.smartadserver.android.library.f.a.f5434a;
            Bitmap bitmap2 = com.smartadserver.android.library.f.a.b;
            if (SASAdView.getCloseButtonDrawable() != null) {
                stateListDrawable = SASAdView.getCloseButtonDrawable();
            } else {
                if (SASAdView.getCloseButtonBitmap() != null) {
                    bitmap2 = SASAdView.getCloseButtonBitmap();
                    bitmap = bitmap2;
                }
                BitmapDrawable bitmapDrawable = new BitmapDrawable(getResources(), bitmap);
                BitmapDrawable bitmapDrawable2 = new BitmapDrawable(getResources(), bitmap2);
                StateListDrawable stateListDrawable2 = new StateListDrawable();
                stateListDrawable2.addState(new int[]{16842919}, bitmapDrawable2);
                stateListDrawable2.addState(new int[]{16842910}, bitmapDrawable);
                stateListDrawable = stateListDrawable2;
            }
            setImageDrawable(stateListDrawable);
            setBackgroundColor(0);
            DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
            float f = displayMetrics.density / 3.5f;
            int min = Math.min(bitmap.getWidth(), bitmap.getHeight());
            Math.round((min * f) / 6.0f);
            int round = Math.round(((displayMetrics.density * 50.0f) - (min * f)) / 2.0f);
            int round2 = (round * 2) + Math.round(bitmap.getWidth() * f);
            int round3 = (round * 2) + Math.round(bitmap.getHeight() * f);
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            if (layoutParams == null) {
                layoutParams = new RelativeLayout.LayoutParams(round2, round3);
            } else {
                layoutParams.width = round2;
                layoutParams.height = round3;
            }
            setLayoutParams(layoutParams);
            setPadding(round, round, round, round);
        }

        public void a(int i, int i2) {
            Bitmap bitmap = com.smartadserver.android.library.f.a.i;
            if (com.smartadserver.android.library.g.c.f5436a) {
                bitmap = Bitmap.createBitmap(bitmap);
                new Canvas(bitmap).drawARGB(128, 255, 165, 0);
            }
            setImageBitmap(bitmap);
            DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
            int round = Math.round(i * displayMetrics.density);
            int round2 = Math.round(displayMetrics.density * i2);
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            if (layoutParams == null) {
                layoutParams = new RelativeLayout.LayoutParams(round, round2);
            } else {
                layoutParams.width = round;
                layoutParams.height = round2;
            }
            setLayoutParams(layoutParams);
            setPadding(0, 0, 0, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        this.f.setStartTime(-1L);
        setAnimation(this.f);
        setVisibility(0);
    }

    public synchronized void a(int i, int i2, boolean z) {
        boolean z2 = false;
        synchronized (this) {
            this.d = -1L;
            this.c.setVisibility(8);
            if (i == 0 && this.b.getVisibility() != 0) {
                this.e = System.currentTimeMillis();
                if (!this.g && z && i2 > 1000) {
                    z2 = true;
                }
                this.d = Math.max(i2, 200);
                if (z2) {
                    this.c.setVisibility(0);
                    a(false);
                    postDelayed(new Runnable() { // from class: com.smartadserver.android.library.ui.SASCloseButton.1
                        @Override // java.lang.Runnable
                        public void run() {
                            SASCloseButton.this.a();
                        }
                    }, 200L);
                }
            } else if (i != 0) {
                this.e = -1L;
                setAnimation(null);
                this.b.setVisibility(4);
                setVisibility(i);
            }
        }
    }

    public synchronized void a(final boolean z) {
        if (this.d > 0) {
            post(new Runnable() { // from class: com.smartadserver.android.library.ui.SASCloseButton.2
                @Override // java.lang.Runnable
                public void run() {
                    if (z) {
                        SASCloseButton.a(SASCloseButton.this, Math.min(250L, System.currentTimeMillis() - SASCloseButton.this.e));
                    }
                    if (SASCloseButton.this.d <= 0) {
                        if (SASCloseButton.this.c.getVisibility() == 0) {
                            SASCloseButton.this.c.setVisibility(4);
                        } else {
                            SASCloseButton.this.a();
                        }
                        SASCloseButton.this.b.setVisibility(0);
                        return;
                    }
                    SASCloseButton.this.c.setText("" + ((int) Math.ceil(SASCloseButton.this.d / 1000.0d)));
                }
            });
        }
    }

    public void setCloseButtonVisibility(int i) {
        a(i, 0, false);
    }

    public int getCloseButtonVisibility() {
        return this.b.getVisibility();
    }

    public void a(int i, int i2) {
        if (i == -1 || i2 == -1) {
            this.g = false;
            this.b.a();
            return;
        }
        this.g = true;
        this.b.a(i, i2);
    }

    public void setCloseButtonOnClickListener(View.OnClickListener onClickListener) {
        this.b.setOnClickListener(onClickListener);
    }

    private static int[] a(int i) {
        switch (i) {
            case 0:
                return new int[]{-1, 0, 0, -1, 0, 0};
            case 1:
            default:
                return new int[]{-1, -1, 0, 0, 0, 0};
            case 2:
                return new int[]{0, 0, -1, -1, 0, 0};
            case 3:
                return new int[]{0, -1, -1, 0, 0, 0};
            case 4:
                return new int[]{-1, 0, 0, 0, -1, 0};
            case 5:
                return new int[]{0, 0, -1, 0, -1, 0};
            case 6:
                return new int[]{0, 0, 0, 0, -1, -1};
        }
    }

    private static void a(int[] iArr, RelativeLayout.LayoutParams layoutParams) {
        for (int i = 0; i < f5508a.length; i++) {
            layoutParams.addRule(f5508a[i], iArr[i]);
        }
    }
}
