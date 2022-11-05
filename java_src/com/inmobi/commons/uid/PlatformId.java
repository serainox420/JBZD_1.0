package com.inmobi.commons.uid;

import android.content.Context;
import android.provider.Settings;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
/* loaded from: classes2.dex */
public class PlatformId {
    public static String getAndroidId(Context context) {
        String str = null;
        try {
            str = Settings.Secure.getString(context.getContentResolver(), "android_id");
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.PRODUCT_COMMONS, "Unable to retrieve android id.");
        }
        if (str == null) {
            try {
                return Settings.System.getString(context.getContentResolver(), "android_id");
            } catch (Exception e2) {
                Log.internal(InternalSDKUtil.PRODUCT_COMMONS, "Unable to retrieve android id.");
                return str;
            }
        }
        return str;
    }
}
