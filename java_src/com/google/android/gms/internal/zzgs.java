package com.google.android.gms.internal;

import android.graphics.Color;
import android.graphics.drawable.Drawable;
import com.applovin.sdk.AppLovinErrorCodes;
import java.util.List;
@zzme
/* loaded from: classes.dex */
public class zzgs {
    private static final int zzGb = Color.rgb(12, 174, 206);
    private static final int zzGc = Color.rgb((int) AppLovinErrorCodes.NO_FILL, (int) AppLovinErrorCodes.NO_FILL, (int) AppLovinErrorCodes.NO_FILL);
    static final int zzGd = zzGc;
    static final int zzGe = zzGb;
    private final int mBackgroundColor;
    private final int mTextColor;
    private final String zzGf;
    private final List<Drawable> zzGg;
    private final int zzGh;
    private final int zzGi;
    private final int zzGj;
    private final boolean zzGk;

    public zzgs(String str, List<Drawable> list, Integer num, Integer num2, Integer num3, int i, int i2, boolean z) {
        this.zzGf = str;
        this.zzGg = list;
        this.mBackgroundColor = num != null ? num.intValue() : zzGd;
        this.mTextColor = num2 != null ? num2.intValue() : zzGe;
        this.zzGh = num3 != null ? num3.intValue() : 12;
        this.zzGi = i;
        this.zzGj = i2;
        this.zzGk = z;
    }

    public int getBackgroundColor() {
        return this.mBackgroundColor;
    }

    public String getText() {
        return this.zzGf;
    }

    public int getTextColor() {
        return this.mTextColor;
    }

    public int getTextSize() {
        return this.zzGh;
    }

    public List<Drawable> zzfL() {
        return this.zzGg;
    }

    public int zzfM() {
        return this.zzGi;
    }

    public int zzfN() {
        return this.zzGj;
    }

    public boolean zzfO() {
        return this.zzGk;
    }
}
