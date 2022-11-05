package android.support.v4.content.a;

import android.annotation.TargetApi;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
/* compiled from: ResourcesCompatApi21.java */
@TargetApi(21)
/* loaded from: classes.dex */
class e {
    public static Drawable a(Resources resources, int i, Resources.Theme theme) throws Resources.NotFoundException {
        return resources.getDrawable(i, theme);
    }
}
