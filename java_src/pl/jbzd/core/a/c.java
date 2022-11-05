package pl.jbzd.core.a;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.loopme.adbrowser.AdBrowserWebViewClient;
/* compiled from: Intents.java */
/* loaded from: classes3.dex */
public class c {
    public static Intent a(Context context, String str, String str2) {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.SUBJECT", str);
        intent.putExtra("android.intent.extra.TEXT", str2);
        return intent;
    }

    public static Intent a(Context context) {
        String packageName = context.getPackageName();
        try {
            return new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + packageName));
        } catch (ActivityNotFoundException e) {
            return new Intent("android.intent.action.VIEW", Uri.parse(AdBrowserWebViewClient.PLAY_STORE_URL + packageName));
        }
    }

    public static Intent b(Context context, String str, String str2) {
        try {
            context.getPackageManager().getPackageInfo("com.facebook.katana", 0);
            return new Intent("android.intent.action.VIEW", Uri.parse("fb://page/" + str));
        } catch (Exception e) {
            return new Intent("android.intent.action.VIEW", Uri.parse("http://www.facebook.com/" + str2));
        }
    }

    public static Intent a(Context context, String str) {
        try {
            context.getPackageManager().getPackageInfo("com.instagram.android", 0);
            return new Intent("android.intent.action.VIEW", Uri.parse("http://instagram.com/_u/" + str));
        } catch (Exception e) {
            return new Intent("android.intent.action.VIEW", Uri.parse("http://instagram.com/" + str));
        }
    }
}
