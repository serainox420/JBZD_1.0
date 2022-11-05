package android.support.v4.view;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
/* compiled from: TintableBackgroundView.java */
/* loaded from: classes.dex */
public interface af {
    ColorStateList getSupportBackgroundTintList();

    PorterDuff.Mode getSupportBackgroundTintMode();

    void setSupportBackgroundTintList(ColorStateList colorStateList);

    void setSupportBackgroundTintMode(PorterDuff.Mode mode);
}
