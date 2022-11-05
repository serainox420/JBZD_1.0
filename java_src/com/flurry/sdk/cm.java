package com.flurry.sdk;

import android.content.Context;
import android.graphics.Bitmap;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
/* loaded from: classes2.dex */
public final class cm extends ImageButton {

    /* renamed from: a  reason: collision with root package name */
    public boolean f2510a;
    public boolean b;
    public boolean c;

    public cm(Context context) {
        super(context);
        this.f2510a = false;
        this.b = false;
        this.c = false;
    }

    public final void setFlurryBackgroundColor(int i) {
        setBackgroundColor(i);
        this.b = true;
    }

    public final void setFlurryMraidImageBitmap(Bitmap bitmap) {
        setImageBitmap(bitmap);
        this.c = true;
    }

    public final void setDefaultLayoutParams(RelativeLayout.LayoutParams layoutParams) {
        float f = getResources().getDisplayMetrics().density;
        int i = (int) (10.0f * f);
        layoutParams.setMargins(0, i, i, 0);
        int i2 = (int) (f * 50.0f);
        layoutParams.height = i2;
        layoutParams.width = i2;
        setLayoutParams(layoutParams);
        this.f2510a = true;
        hi hiVar = new hi();
        hiVar.g();
        setFlurryMraidImageBitmap(hiVar.f2801a);
        setBackgroundColor(0);
        this.f2510a = true;
    }
}
