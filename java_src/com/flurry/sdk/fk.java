package com.flurry.sdk;

import android.text.TextUtils;
import java.io.File;
/* loaded from: classes2.dex */
public class fk {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2679a = fk.class.getName();

    public static File a(String str) {
        return new File(lx.b().getPath() + File.separator + ".fcaches" + File.separator + str);
    }

    public static File b(String str) {
        return new File(lx.a().getPath() + File.separator + ".fcaches" + File.separator + str);
    }

    public static File a(String str, int i) {
        return new File(lx.a().getPath() + File.separator + ".fcaches" + File.separator + str + File.separator + i);
    }

    public static String c(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return String.format("%016x", Long.valueOf(ly.i(str))).trim();
    }
}
