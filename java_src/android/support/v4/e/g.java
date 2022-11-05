package android.support.v4.e;

import android.annotation.TargetApi;
import android.text.TextUtils;
import java.util.Locale;
/* compiled from: TextUtilsCompatJellybeanMr1.java */
@TargetApi(17)
/* loaded from: classes.dex */
class g {
    public static int a(Locale locale) {
        return TextUtils.getLayoutDirectionFromLocale(locale);
    }
}
