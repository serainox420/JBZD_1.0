package com.inmobi.monetization.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.util.Log;
import com.google.android.gms.vision.barcode.Barcode;
import com.inmobi.androidsdk.IMBrowserActivity;
import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AdNetworkUtil.java */
/* loaded from: classes2.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f3870a = false;

    public static void a(Context context) throws InvalidManifestConfigException {
        ResolveInfo resolveInfo;
        if (context.checkCallingOrSelfPermission("android.permission.INTERNET") != 0) {
            Log.e(Constants.LOG_TAG, InvalidManifestErrorMessages.MSG_MISSING_INTERNET_PERMISSION);
            throw new InvalidManifestConfigException(-1);
        } else if (context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") != 0) {
            Log.e(Constants.LOG_TAG, InvalidManifestErrorMessages.MSG_MISSING_ACCESS_NETWORK_PERMISSION);
            throw new InvalidManifestConfigException(-9);
        } else {
            Iterator<ResolveInfo> it = context.getPackageManager().queryIntentActivities(new Intent(context, IMBrowserActivity.class), 65536).iterator();
            while (true) {
                if (!it.hasNext()) {
                    resolveInfo = null;
                    break;
                }
                resolveInfo = it.next();
                if (resolveInfo.activityInfo.name.contentEquals("com.inmobi.androidsdk.IMBrowserActivity")) {
                    break;
                }
            }
            if (resolveInfo == null) {
                Log.e(Constants.LOG_TAG, InvalidManifestErrorMessages.MSG_MISSING_ACTIVITY_DECLARATION);
                throw new InvalidManifestConfigException(-2);
            }
            int i = resolveInfo.activityInfo.configChanges;
            if (i == 0) {
                Log.e(Constants.LOG_TAG, InvalidManifestErrorMessages.MSG_MISSING_CONFIG_CHANGES);
                throw new InvalidManifestConfigException(-3);
            } else if ((i & 16) == 0) {
                Log.e(Constants.LOG_TAG, InvalidManifestErrorMessages.MSG_MISSING_CONFIG_KEYBOARD);
                throw new InvalidManifestConfigException(-4);
            } else if ((i & 32) == 0) {
                Log.e(Constants.LOG_TAG, InvalidManifestErrorMessages.MSG_MISSING_CONFIG_KEYBOARDHIDDEN);
                throw new InvalidManifestConfigException(-5);
            } else if ((i & 128) == 0) {
                Log.e(Constants.LOG_TAG, InvalidManifestErrorMessages.MSG_MISSING_CONFIG_ORIENTATION);
                throw new InvalidManifestConfigException(-6);
            } else if (Build.VERSION.SDK_INT >= 13) {
                if ((i & 1024) == 0) {
                    Log.e(Constants.LOG_TAG, InvalidManifestErrorMessages.MSG_MISSING_CONFIG_SCREENSIZE);
                    throw new InvalidManifestConfigException(-7);
                } else if ((i & Barcode.PDF417) == 0) {
                    Log.e(Constants.LOG_TAG, InvalidManifestErrorMessages.MSG_MISSING_CONFIG_SMALLEST_SCREENSIZE);
                    throw new InvalidManifestConfigException(-8);
                }
            }
        }
    }

    public static Activity a(Activity activity) {
        while (activity.getParent() != null) {
            activity = activity.getParent();
        }
        return activity;
    }
}
