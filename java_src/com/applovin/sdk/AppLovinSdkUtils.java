package com.applovin.sdk;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.util.TypedValue;
import android.widget.ImageView;
import com.applovin.impl.sdk.NativeAdImpl;
import com.applovin.impl.sdk.di;
import java.io.File;
/* loaded from: classes.dex */
public class AppLovinSdkUtils {
    public static final String TAG = "AppLovinSdkUtils";

    private static boolean a(Context context) {
        Bundle e = e(context);
        return e != null && e.getBoolean("applovin.sdk.verbose_logging", false);
    }

    private static long b(Context context) {
        Bundle e = e(context);
        if (e != null) {
            return e.getInt("applovin.sdk.ad_refresh_seconds", -100);
        }
        return -100L;
    }

    private static String c(Context context) {
        String string;
        Bundle e = e(context);
        return (e == null || (string = e.getString("applovin.sdk.auto_preload_ad_sizes")) == null) ? AppLovinAdSize.BANNER.getLabel() + "," + AppLovinAdSize.INTERSTITIAL.getLabel() : string;
    }

    private static String d(Context context) {
        String string;
        Bundle e = e(context);
        return (e == null || (string = e.getString("applovin.sdk.auto_preload_ad_types")) == null) ? AppLovinAdType.REGULAR.getLabel() + "," + AppLovinAdType.INCENTIVIZED.getLabel() + "," + NativeAdImpl.TYPE_NATIVE.getLabel() : string;
    }

    public static int dpToPx(Context context, int i) {
        return (int) TypedValue.applyDimension(1, i, context.getResources().getDisplayMetrics());
    }

    private static Bundle e(Context context) {
        try {
            return context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e(AppLovinLogger.SDK_TAG, "Unable to retrieve application metadata", e);
            return null;
        }
    }

    public static boolean isValidString(String str) {
        return str != null && str.length() > 1;
    }

    public static void openUri(Context context, Uri uri, AppLovinSdk appLovinSdk) {
        try {
            context.startActivity(new Intent("android.intent.action.VIEW", uri));
        } catch (Throwable th) {
            appLovinSdk.getLogger().e(TAG, "Unable to open \"" + uri + "\".", th);
        }
    }

    public static void openUrl(Context context, String str, AppLovinSdk appLovinSdk) {
        openUri(context, Uri.parse(str), appLovinSdk);
    }

    public static void recycleImageView(ImageView imageView) {
        Drawable drawable;
        if (imageView == null || (drawable = imageView.getDrawable()) == null || !(drawable instanceof BitmapDrawable)) {
            return;
        }
        ((BitmapDrawable) drawable).getBitmap().recycle();
    }

    public static String retrieveSdkKey(Context context) {
        Bundle e = e(context);
        if (e != null) {
            String string = e.getString("applovin.sdk.key");
            return string != null ? string : "";
        }
        return null;
    }

    public static AppLovinSdkSettings retrieveUserSettings(Context context) {
        AppLovinSdkSettings appLovinSdkSettings = new AppLovinSdkSettings();
        appLovinSdkSettings.setVerboseLogging(a(context));
        appLovinSdkSettings.setBannerAdRefreshSeconds(b(context));
        appLovinSdkSettings.setAutoPreloadSizes(c(context));
        appLovinSdkSettings.setAutoPreloadTypes(d(context));
        return appLovinSdkSettings;
    }

    public static void safePopulateImageView(Context context, ImageView imageView, int i, int i2) {
        recycleImageView(imageView);
        Bitmap a2 = di.a(context, i, i2);
        if (a2 != null) {
            imageView.setImageBitmap(a2);
        }
    }

    public static void safePopulateImageView(ImageView imageView, Uri uri, int i) {
        recycleImageView(imageView);
        Bitmap a2 = di.a(new File(uri.getPath()), i);
        if (a2 != null) {
            imageView.setImageBitmap(a2);
        }
    }
}
