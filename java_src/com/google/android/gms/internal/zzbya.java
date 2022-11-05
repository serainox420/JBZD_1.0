package com.google.android.gms.internal;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class zzbya {
    private static String zzcwc;

    public static String zzcC(Context context) {
        if (zzcwc != null) {
            return zzcwc;
        }
        PackageManager packageManager = context.getPackageManager();
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("http://www.example.com"));
        ResolveInfo resolveActivity = packageManager.resolveActivity(intent, 0);
        String str = resolveActivity != null ? resolveActivity.activityInfo.packageName : null;
        List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 0);
        ArrayList arrayList = new ArrayList();
        for (ResolveInfo resolveInfo : queryIntentActivities) {
            Intent intent2 = new Intent();
            intent2.setAction("android.support.customtabs.action.CustomTabsService");
            intent2.setPackage(resolveInfo.activityInfo.packageName);
            if (packageManager.resolveService(intent2, 0) != null) {
                arrayList.add(resolveInfo.activityInfo.packageName);
            }
        }
        if (arrayList.isEmpty()) {
            zzcwc = null;
        } else if (arrayList.size() == 1) {
            zzcwc = (String) arrayList.get(0);
        } else if (!TextUtils.isEmpty(str) && !zzo(context, intent) && arrayList.contains(str)) {
            zzcwc = str;
        } else if (arrayList.contains("com.android.chrome")) {
            zzcwc = "com.android.chrome";
        } else if (arrayList.contains("com.chrome.beta")) {
            zzcwc = "com.chrome.beta";
        } else if (arrayList.contains("com.chrome.dev")) {
            zzcwc = "com.chrome.dev";
        } else if (arrayList.contains("com.google.android.apps.chrome")) {
            zzcwc = "com.google.android.apps.chrome";
        }
        return zzcwc;
    }

    private static boolean zzo(Context context, Intent intent) {
        List<ResolveInfo> queryIntentActivities;
        try {
            queryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 64);
        } catch (RuntimeException e) {
            Log.e("CustomTabsHelper", "Runtime exception while getting specialized handlers");
        }
        if (queryIntentActivities == null || queryIntentActivities.size() == 0) {
            return false;
        }
        for (ResolveInfo resolveInfo : queryIntentActivities) {
            IntentFilter intentFilter = resolveInfo.filter;
            if (intentFilter != null && intentFilter.countDataAuthorities() != 0 && intentFilter.countDataPaths() != 0 && resolveInfo.activityInfo != null) {
                return true;
            }
        }
        return false;
    }
}
