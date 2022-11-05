package com.google.android.gms.tagmanager;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
/* loaded from: classes2.dex */
class zzdd {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(SharedPreferences.Editor editor) {
        int i = Build.VERSION.SDK_INT;
        editor.apply();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SuppressLint({"CommitPrefEdits"})
    public static void zzd(Context context, String str, String str2, String str3) {
        SharedPreferences.Editor edit = context.getSharedPreferences(str, 0).edit();
        edit.putString(str2, str3);
        zza(edit);
    }
}
