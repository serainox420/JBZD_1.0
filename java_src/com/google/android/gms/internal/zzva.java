package com.google.android.gms.internal;

import android.content.Context;
import android.content.Intent;
import com.google.android.gms.auth.api.credentials.HintRequest;
import com.google.android.gms.auth.api.credentials.PasswordSpecification;
/* loaded from: classes2.dex */
public final class zzva {
    public static Intent zza(Context context, HintRequest hintRequest, PasswordSpecification passwordSpecification) {
        Intent putExtra = new Intent("com.google.android.gms.auth.api.credentials.PICKER").putExtra("com.google.android.gms.credentials.hintRequestVersion", 2).putExtra("com.google.android.gms.credentials.RequestType", "Hints");
        com.google.android.gms.common.internal.safeparcel.zzd.zza(passwordSpecification, putExtra, "com.google.android.gms.credentials.PasswordSpecification");
        com.google.android.gms.common.internal.safeparcel.zzd.zza(hintRequest, putExtra, "com.google.android.gms.credentials.HintRequest");
        return putExtra;
    }
}
