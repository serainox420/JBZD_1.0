package com.amazon.device.ads;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
/* loaded from: classes.dex */
class AmazonDeviceLauncher {
    private static final String WINDOWSHOP_PKG = "com.amazon.windowshop";

    public boolean isWindowshopPresent(Context context) {
        return context.getPackageManager().getLaunchIntentForPackage(WINDOWSHOP_PKG) != null;
    }

    public boolean isInWindowshopApp(Context context) {
        return context.getPackageName().equals(WINDOWSHOP_PKG);
    }

    public void launchWindowshopDetailPage(Context context, String str) {
        Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(WINDOWSHOP_PKG);
        if (launchIntentForPackage != null) {
            launchIntentForPackage.putExtra("com.amazon.windowshop.refinement.asin", str);
            context.startActivity(launchIntentForPackage);
        }
    }

    public void launchWindowshopSearchPage(Context context, String str) {
        Intent intent = new Intent("android.intent.action.SEARCH");
        intent.setComponent(new ComponentName(WINDOWSHOP_PKG, "com.amazon.windowshop.search.SearchResultsGridActivity"));
        intent.putExtra("query", str);
        try {
            context.startActivity(intent);
        } catch (RuntimeException e) {
        }
    }
}
