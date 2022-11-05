package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.wearable.WearableStatusCodes;
/* loaded from: classes2.dex */
public final class zzcr {
    public static Status zzik(int i) {
        return new Status(i, WearableStatusCodes.getStatusCodeString(i));
    }
}
