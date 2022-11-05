package com.flurry.sdk;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.text.TextUtils;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes2.dex */
public class fj {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2678a = fj.class.getSimpleName();
    private static final List<String> b = Arrays.asList("com.android.chrome", "org.mozilla.firefox", "mobi.mgeek.TunnyBrowser", "com.UCMobile.intl", "com.opera.mini.android", "com.jiubang.browser", "com.opera.browser", "com.uc.browser.en", "acr.browser.barebones", "com.boatbrowser.free", "com.mx.browser", "com.ilegendsoft.mercury", "gpc.myweb.hinet.net.PopupWeb", "mobi.browser.flashfox", "com.baidu.browser.inter", "com.sec.webbrowserminiapp", "com.android.browser", "com.android.vending");

    public static Intent a(Context context, String str) {
        boolean z;
        if (context == null || TextUtils.isEmpty(str)) {
            return null;
        }
        PackageManager packageManager = context.getPackageManager();
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
        List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
        if (queryIntentActivities != null && queryIntentActivities.size() > 0) {
            for (ResolveInfo resolveInfo : queryIntentActivities) {
                ActivityInfo activityInfo = resolveInfo.activityInfo;
                String str2 = activityInfo.packageName;
                if (TextUtils.isEmpty(str2)) {
                    z = false;
                    continue;
                } else if ("com.android.vending".equalsIgnoreCase(str2) || "com.google.market".equalsIgnoreCase(str2)) {
                    z = true;
                    continue;
                } else {
                    z = false;
                    continue;
                }
                if (z) {
                    km.a(3, f2678a, "Launching App in package: " + activityInfo.packageName);
                    ComponentName componentName = new ComponentName(activityInfo.applicationInfo.packageName, activityInfo.name);
                    intent.addCategory("android.intent.category.LAUNCHER");
                    intent.setComponent(componentName);
                    return intent;
                }
            }
        }
        return null;
    }
}
