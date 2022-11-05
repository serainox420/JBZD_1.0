package android.support.v4.content;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
/* compiled from: ContextCompatApi23.java */
@TargetApi(23)
/* loaded from: classes.dex */
class d {
    public static ColorStateList a(Context context, int i) {
        return context.getColorStateList(i);
    }

    public static int b(Context context, int i) {
        return context.getColor(i);
    }
}
