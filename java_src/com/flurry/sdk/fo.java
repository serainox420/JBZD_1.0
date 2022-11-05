package com.flurry.sdk;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.flurry.android.FlurryFullscreenTakeoverActivity;
import com.flurry.android.FlurryInternalTakeoverActivity;
import com.flurry.android.FlurryShareActivity;
import com.google.android.gms.drive.DriveFile;
import com.loopme.adbrowser.AdBrowserWebViewClient;
/* loaded from: classes2.dex */
public class fo {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2689a = fo.class.getSimpleName();

    public static boolean a(Context context, String str, r rVar) {
        boolean z = false;
        if (mc.d(str)) {
            z = a(context, str);
        }
        if (!z && mc.f(str)) {
            z = b(context, str);
        }
        if (!z) {
            return a(context, rVar, str, true);
        }
        return z;
    }

    public static boolean a(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str) || !mc.d(str)) {
            return false;
        }
        return a(context, new Intent("android.intent.action.VIEW").setData(Uri.parse(str)));
    }

    public static boolean b(Context context, String str) {
        Intent a2 = fj.a(context, str);
        return a2 != null && a(context, a2);
    }

    public static boolean b(Context context, String str, r rVar) {
        Intent launchIntentForPackage = jy.a().f2947a.getPackageManager().getLaunchIntentForPackage(str);
        return (launchIntentForPackage == null || !ly.a(launchIntentForPackage)) ? a(context, AdBrowserWebViewClient.PLAY_STORE_URL + str, rVar) : a(context, launchIntentForPackage);
    }

    public static boolean c(Context context, String str) {
        Intent a2 = fj.a(context, str);
        return a2 != null && ly.a(a2) && a(context, a2);
    }

    public static boolean a(Context context, r rVar, String str, boolean z) {
        if (context == null) {
            return false;
        }
        if (rVar instanceof t) {
            Intent intent = new Intent(context, FlurryInternalTakeoverActivity.class);
            intent.putExtra("ad_object_legacy", rVar instanceof v);
            intent.putExtra("ad_object_id", rVar.e());
            intent.putExtra("url", str);
            intent.putExtra("close_ad", z);
            return a(context, intent);
        }
        Intent intent2 = new Intent(context, FlurryFullscreenTakeoverActivity.class);
        intent2.putExtra("ad_object_legacy", rVar instanceof v);
        intent2.putExtra("ad_object_id", rVar.e());
        intent2.putExtra("url", str);
        intent2.putExtra("close_ad", z);
        return a(context, intent2);
    }

    public static boolean a(Context context, r rVar) {
        if (context == null) {
            return false;
        }
        return a(context, rVar, null, true);
    }

    public static boolean d(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return false;
        }
        return a(context, new Intent("android.intent.action.VIEW").setData(Uri.parse(str)));
    }

    public static boolean a(Context context, Bundle bundle) {
        boolean z;
        if (context == null) {
            return false;
        }
        int i = bundle.getInt("com.flurry.android.post_id", -1);
        if (!jr.a().b) {
            km.a(5, f2689a, "There is no network connectivity. Not doing post");
            eh.a(ei.kNoNetworkConnectivity, i, "Network not available.");
            return false;
        }
        if (context.getPackageManager().resolveActivity(new Intent(context, FlurryShareActivity.class), 0) == null) {
            km.b(f2689a, "com.flurry.android.FlurryShareActivity must be declared in manifest.");
            z = false;
        } else {
            z = true;
        }
        if (!z) {
            eh.a(ei.kFlurryShareActivityMissing, i, "FlurryShareActivity is missing. Please declare it in AndroidManifest.xml");
            return false;
        }
        Intent intent = new Intent(context, FlurryShareActivity.class);
        intent.putExtras(bundle);
        return a(context, intent);
    }

    public static boolean a(Context context, Uri uri) {
        try {
            Intent intent = new Intent("android.intent.action.DIAL");
            intent.setData(uri);
            if (!(context instanceof Activity)) {
                intent.setFlags(intent.getFlags() | DriveFile.MODE_READ_ONLY);
            }
            context.startActivity(intent);
            return true;
        } catch (Exception e) {
            km.b(f2689a, "launchDialer, error occured while launching dialer: " + e.getMessage());
            return false;
        }
    }

    private static boolean a(Context context, Intent intent) {
        if (context == null || intent == null) {
            return false;
        }
        try {
            if (!(context instanceof Activity)) {
                intent.addFlags(276824064);
            }
            context.startActivity(intent);
            return true;
        } catch (ActivityNotFoundException e) {
            km.b(f2689a, "com.flurry.android.FlurryFullScreenTakeoverActivity must be declared in manifest.");
            return false;
        }
    }
}
