package com.smartadserver.android.library.ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Build;
import android.widget.ImageView;
import android.widget.RelativeLayout;
/* compiled from: SASVideo360ResetButton.java */
/* loaded from: classes3.dex */
public class b extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    private ImageView f5612a;
    private ImageView b;

    @SuppressLint({"NewApi"})
    public b(Context context) {
        super(context);
        this.f5612a = new ImageView(getContext());
        this.f5612a.setScaleType(ImageView.ScaleType.FIT_CENTER);
        this.b = new ImageView(getContext());
        this.b.setScaleType(ImageView.ScaleType.FIT_CENTER);
        this.f5612a.setImageDrawable(new BitmapDrawable(getResources(), com.smartadserver.android.library.f.a.w));
        this.b.setImageDrawable(new BitmapDrawable(getResources(), com.smartadserver.android.library.f.a.x));
        ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
        shapeDrawable.getPaint().setColor(Color.parseColor("#66000000"));
        shapeDrawable.getPaint().setStyle(Paint.Style.FILL);
        shapeDrawable.getPaint().setAntiAlias(true);
        if (Build.VERSION.SDK_INT >= 16) {
            setBackground(shapeDrawable);
        } else {
            setBackgroundDrawable(shapeDrawable);
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13, -1);
        addView(this.f5612a, layoutParams);
        addView(this.b, layoutParams);
    }

    public void setAngle(final float f) {
        post(new Runnable() { // from class: com.smartadserver.android.library.ui.b.1
            @Override // java.lang.Runnable
            public void run() {
                b.this.b.setRotation(f);
            }
        });
    }
}
