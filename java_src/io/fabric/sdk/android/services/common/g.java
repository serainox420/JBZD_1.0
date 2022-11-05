package io.fabric.sdk.android.services.common;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
/* compiled from: ApiKey.java */
/* loaded from: classes3.dex */
public class g {
    public String a(Context context) {
        String b = b(context);
        if (TextUtils.isEmpty(b)) {
            b = c(context);
        }
        if (TextUtils.isEmpty(b)) {
            d(context);
        }
        return b;
    }

    protected String b(Context context) {
        try {
            Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
            if (bundle == null) {
                return null;
            }
            String string = bundle.getString("io.fabric.ApiKey");
            if (string == null) {
                io.fabric.sdk.android.c.h().a("Fabric", "Falling back to Crashlytics key lookup from Manifest");
                return bundle.getString("com.crashlytics.ApiKey");
            }
            return string;
        } catch (Exception e) {
            io.fabric.sdk.android.c.h().a("Fabric", "Caught non-fatal exception while retrieving apiKey: " + e);
            return null;
        }
    }

    protected String c(Context context) {
        int a2 = i.a(context, "io.fabric.ApiKey", "string");
        if (a2 == 0) {
            io.fabric.sdk.android.c.h().a("Fabric", "Falling back to Crashlytics key lookup from Strings");
            a2 = i.a(context, "com.crashlytics.ApiKey", "string");
        }
        if (a2 == 0) {
            return null;
        }
        return context.getResources().getString(a2);
    }

    protected void d(Context context) {
        if (io.fabric.sdk.android.c.i() || i.i(context)) {
            throw new IllegalArgumentException(a());
        }
        io.fabric.sdk.android.c.h().e("Fabric", a());
    }

    protected String a() {
        return "Fabric could not be initialized, API key missing from AndroidManifest.xml. Add the following tag to your Application element \n\t<meta-data android:name=\"io.fabric.ApiKey\" android:value=\"YOUR_API_KEY\"/>";
    }
}
