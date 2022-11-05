package com.google.android.gms.instantapps;

import android.app.Activity;
import android.content.ComponentName;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
/* loaded from: classes2.dex */
public interface PackageManagerWrapper {
    ApplicationInfo getApplicationInfo(String str, int i) throws PackageManager.NameNotFoundException;

    CharSequence getApplicationLabel(ApplicationInfo applicationInfo);

    ComponentName getCallingActivity(Activity activity);

    String getCallingPackage(Activity activity);

    PackageInfo getPackageInfo(String str, int i) throws PackageManager.NameNotFoundException;

    String[] getPackagesForUid(int i);

    boolean isInstantApp(int i);
}
