package com.flurry.sdk;

import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import java.util.List;
/* loaded from: classes2.dex */
public final class bu implements br {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2493a = bu.class.getSimpleName();

    @Override // com.flurry.sdk.br
    public final boolean a(Context context, bv bvVar) {
        List<String> list;
        boolean z;
        if (bvVar == null) {
            return false;
        }
        String str = bvVar.f2494a;
        if (TextUtils.isEmpty(str) || (list = bvVar.d) == null) {
            return false;
        }
        PackageManager packageManager = context.getPackageManager();
        String packageName = context.getPackageName();
        boolean z2 = true;
        for (String str2 : list) {
            if (TextUtils.isEmpty(str) || packageManager == null || TextUtils.isEmpty(packageName) || TextUtils.isEmpty(str2)) {
                z = false;
            } else if (-1 == packageManager.checkPermission(str2, packageName)) {
                km.b(f2493a, str + ": package=\"" + packageName + "\": AndroidManifest.xml should include uses-permission node with android:name=\"" + str2 + "\"");
                z = false;
            } else {
                km.a(3, f2493a, str + ": package=\"" + packageName + "\": AndroidManifest.xml has uses-permission node with android:name=\"" + str2 + "\"");
                z = true;
            }
            z2 = !z ? false : z2;
        }
        return z2;
    }
}
