package com.pubmatic.sdk.common.phoenix;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.ConnectivityManager;
import android.provider.Settings;
import java.security.MessageDigest;
/* loaded from: classes3.dex */
public class PhoenixUtils {
    public static String getNetworkType(Context context) {
        switch (((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo().getType()) {
            case 0:
                return "cellular";
            case 1:
                return "wifi";
            default:
                return null;
        }
    }

    public static String getUdidFromContext(Context context) {
        String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
        return string == null ? "" : sha1(string);
    }

    @SuppressLint({"DefaultLocale"})
    public static String sha1(String str) {
        StringBuilder sb = new StringBuilder();
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            byte[] bytes = str.getBytes("UTF-8");
            messageDigest.update(bytes, 0, bytes.length);
            byte[] digest = messageDigest.digest();
            int length = digest.length;
            for (int i = 0; i < length; i++) {
                sb.append(String.format("%02X", Byte.valueOf(digest[i])));
            }
            return sb.toString().toLowerCase();
        } catch (Exception e) {
            return "";
        }
    }
}
