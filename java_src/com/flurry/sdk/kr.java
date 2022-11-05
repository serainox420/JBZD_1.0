package com.flurry.sdk;

import android.text.TextUtils;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
public class kr {

    /* renamed from: a  reason: collision with root package name */
    private final Pattern f2977a = Pattern.compile(".*?(%\\{\\w+\\}).*?");

    public final String a(String str) {
        Matcher matcher = this.f2977a.matcher(str);
        if (matcher.matches()) {
            return matcher.group(1);
        }
        return null;
    }

    public static boolean a(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return false;
        }
        return str2.equals("%{" + str + "}");
    }
}
