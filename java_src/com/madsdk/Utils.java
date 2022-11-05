package com.madsdk;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
/* loaded from: classes2.dex */
public class Utils {
    public static void openBrowser(boolean z, String str, Context context) {
        if (z) {
            openNativeBrowser(str, context);
        } else {
            openInAppBrowser(str, context);
        }
    }

    private static void openInAppBrowser(String str, Context context) {
        Intent intent = new Intent(context, BrowserActivity.class);
        intent.putExtra("url", str);
        context.startActivity(intent);
    }

    private static void openNativeBrowser(String str, Context context) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        context.startActivity(intent);
    }
}
