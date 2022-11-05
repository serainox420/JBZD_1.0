package com.facebook.appevents.internal;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import bolts.c;
import com.facebook.FacebookSdk;
import com.loopme.debugging.Params;
/* loaded from: classes.dex */
class SourceApplicationInfo {
    private static final String CALL_APPLICATION_PACKAGE_KEY = "com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage";
    private static final String OPENED_BY_APP_LINK_KEY = "com.facebook.appevents.SourceApplicationInfo.openedByApplink";
    private static final String SOURCE_APPLICATION_HAS_BEEN_SET_BY_THIS_INTENT = "_fbSourceApplicationHasBeenSet";
    private String callingApplicationPackage;
    private boolean openedByApplink;

    private SourceApplicationInfo(String str, boolean z) {
        this.callingApplicationPackage = str;
        this.openedByApplink = z;
    }

    public static SourceApplicationInfo getStoredSourceApplicatioInfo() {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(FacebookSdk.getApplicationContext());
        if (!defaultSharedPreferences.contains(CALL_APPLICATION_PACKAGE_KEY)) {
            return null;
        }
        return new SourceApplicationInfo(defaultSharedPreferences.getString(CALL_APPLICATION_PACKAGE_KEY, null), defaultSharedPreferences.getBoolean(OPENED_BY_APP_LINK_KEY, false));
    }

    public static void clearSavedSourceApplicationInfoFromDisk() {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(FacebookSdk.getApplicationContext()).edit();
        edit.remove(CALL_APPLICATION_PACKAGE_KEY);
        edit.remove(OPENED_BY_APP_LINK_KEY);
        edit.apply();
    }

    public String getCallingApplicationPackage() {
        return this.callingApplicationPackage;
    }

    public boolean isOpenedByApplink() {
        return this.openedByApplink;
    }

    public String toString() {
        String str = "Unclassified";
        if (this.openedByApplink) {
            str = "Applink";
        }
        if (this.callingApplicationPackage != null) {
            return str + "(" + this.callingApplicationPackage + ")";
        }
        return str;
    }

    public void writeSourceApplicationInfoToDisk() {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(FacebookSdk.getApplicationContext()).edit();
        edit.putString(CALL_APPLICATION_PACKAGE_KEY, this.callingApplicationPackage);
        edit.putBoolean(OPENED_BY_APP_LINK_KEY, this.openedByApplink);
        edit.apply();
    }

    /* loaded from: classes.dex */
    public static class Factory {
        public static SourceApplicationInfo create(Activity activity) {
            boolean z = false;
            ComponentName callingActivity = activity.getCallingActivity();
            if (callingActivity == null) {
                return null;
            }
            String packageName = callingActivity.getPackageName();
            if (packageName.equals(activity.getPackageName())) {
                return null;
            }
            Intent intent = activity.getIntent();
            if (intent != null && !intent.getBooleanExtra(SourceApplicationInfo.SOURCE_APPLICATION_HAS_BEEN_SET_BY_THIS_INTENT, false)) {
                intent.putExtra(SourceApplicationInfo.SOURCE_APPLICATION_HAS_BEEN_SET_BY_THIS_INTENT, true);
                Bundle a2 = c.a(intent);
                if (a2 != null) {
                    Bundle bundle = a2.getBundle("referer_app_link");
                    if (bundle != null) {
                        packageName = bundle.getString(Params.PACKAGE_ID);
                        z = true;
                    } else {
                        z = true;
                    }
                }
            }
            intent.putExtra(SourceApplicationInfo.SOURCE_APPLICATION_HAS_BEEN_SET_BY_THIS_INTENT, true);
            return new SourceApplicationInfo(packageName, z);
        }
    }
}
