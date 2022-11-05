package com.google.android.gms.common.internal;

import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.loopme.debugging.Params;
/* loaded from: classes2.dex */
public class zzp {
    private static final Uri zzaGn = Uri.parse("https://plus.google.com/");
    private static final Uri zzaGo = zzaGn.buildUpon().appendPath("circles").appendPath("find").build();

    private static Uri zzC(String str, String str2) {
        Uri.Builder appendQueryParameter = Uri.parse("market://details").buildUpon().appendQueryParameter("id", str);
        if (!TextUtils.isEmpty(str2)) {
            appendQueryParameter.appendQueryParameter("pcampaignid", str2);
        }
        return appendQueryParameter.build();
    }

    public static Intent zzD(String str, String str2) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(zzC(str, str2));
        intent.setPackage("com.android.vending");
        intent.addFlags(524288);
        return intent;
    }

    public static Intent zzdp(String str) {
        Uri fromParts = Uri.fromParts(Params.PACKAGE_ID, str, null);
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(fromParts);
        return intent;
    }

    public static Intent zzyb() {
        Intent intent = new Intent("com.google.android.clockwork.home.UPDATE_ANDROID_WEAR_ACTION");
        intent.setPackage("com.google.android.wearable.app");
        return intent;
    }
}
