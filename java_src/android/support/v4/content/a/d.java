package android.support.v4.content.a;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
/* compiled from: ResourcesCompat.java */
/* loaded from: classes.dex */
public final class d {
    public static Drawable a(Resources resources, int i, Resources.Theme theme) throws Resources.NotFoundException {
        return Build.VERSION.SDK_INT >= 21 ? e.a(resources, i, theme) : resources.getDrawable(i);
    }
}
