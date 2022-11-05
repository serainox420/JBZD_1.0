package com.flurry.sdk;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import java.util.List;
/* loaded from: classes2.dex */
public final class bt implements br {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2492a = bt.class.getSimpleName();

    @Override // com.flurry.sdk.br
    public final boolean a(Context context, bv bvVar) {
        List<String> list;
        boolean z;
        if (bvVar == null) {
            return false;
        }
        String str = bvVar.f2494a;
        if (TextUtils.isEmpty(str) || (list = bvVar.c) == null) {
            return false;
        }
        Bundle c = lv.c(context);
        String packageName = context.getPackageName();
        boolean z2 = true;
        for (String str2 : list) {
            if (TextUtils.isEmpty(str) || TextUtils.isEmpty(packageName) || c == null || TextUtils.isEmpty(str2)) {
                z = false;
            } else {
                String string = c.getString(str2);
                if (TextUtils.isEmpty(string)) {
                    km.b(f2492a, str + ": package=\"" + packageName + "\": AndroidManifest.xml should include meta-data node with android:name=\"" + str2 + "\" and not empty value for android:value");
                    z = false;
                } else {
                    km.a(3, f2492a, str + ": package=\"" + packageName + "\": AndroidManifest.xml has meta-data node with android:name=\"" + str2 + "\" and android:value=\"" + string + "\"");
                    z = true;
                }
            }
            z2 = !z ? false : z2;
        }
        return z2;
    }
}
