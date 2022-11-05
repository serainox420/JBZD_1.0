package com.flurry.sdk;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.PathShape;
import android.os.Build;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.mobileads.resource.DrawableConstants;
/* loaded from: classes2.dex */
public final class hn {
    private static int c;
    private static int d;

    /* renamed from: a  reason: collision with root package name */
    public TextView f2805a;
    public float b;
    private Path e;
    private PathShape f;
    private ShapeDrawable g;
    private int h;
    private RectF i;
    private final float j;

    public hn(Context context, int i, int i2) {
        int i3;
        this.e = null;
        this.f = null;
        this.g = null;
        this.f2805a = null;
        this.h = 0;
        this.b = BitmapDescriptorFactory.HUE_RED;
        this.i = null;
        this.j = -90.0f;
        c = lw.b(2);
        d = lw.b(1);
        if (i < i2) {
            i3 = i / 2;
        } else {
            i3 = i2 / 2;
        }
        this.h = i3;
        this.f2805a = new TextView(context);
        this.f2805a.setTextColor(-1);
        this.f2805a.setTypeface(Typeface.MONOSPACE);
        this.f2805a.setTextSize(1, 12.0f);
        this.f2805a.setGravity(17);
    }

    public hn() {
        this.e = null;
        this.f = null;
        this.g = null;
        this.f2805a = null;
        this.h = 0;
        this.b = BitmapDescriptorFactory.HUE_RED;
        this.i = null;
        this.j = -90.0f;
        c = 3;
        d = 1;
    }

    static /* synthetic */ void a(hn hnVar, int i) {
        hnVar.i = new RectF();
        hnVar.i.set(c, c, hnVar.h - c, hnVar.h - c);
        hnVar.e = new Path();
        hnVar.e.arcTo(hnVar.i, -90.0f, ((-i) * hnVar.b) + 1.0f, false);
        hnVar.f = new PathShape(hnVar.e, hnVar.h, hnVar.h);
        hnVar.g = new ShapeDrawable(hnVar.f);
        hnVar.g.setIntrinsicHeight(hnVar.h * 2);
        hnVar.g.setIntrinsicWidth(hnVar.h * 2);
        hnVar.g.getPaint().setStyle(Paint.Style.STROKE);
        hnVar.g.getPaint().setColor(-1);
        hnVar.g.getPaint().setStrokeWidth(d);
        hnVar.g.getPaint().setAntiAlias(true);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
        gradientDrawable.setShape(1);
        gradientDrawable.setAlpha(178);
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{gradientDrawable, hnVar.g});
        if (Build.VERSION.SDK_INT >= 16) {
            hnVar.f2805a.setBackground(layerDrawable);
        } else {
            hnVar.f2805a.setBackgroundDrawable(layerDrawable);
        }
    }
}
