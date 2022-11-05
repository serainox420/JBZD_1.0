package com.google.android.gms.games.internal;

import com.google.android.gms.common.internal.DowngradeableSafeParcel;
import com.google.android.gms.common.util.zzl;
/* loaded from: classes2.dex */
public abstract class GamesDowngradeableSafeParcel extends DowngradeableSafeParcel {
    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean zzf(Integer num) {
        if (num == null) {
            return false;
        }
        return zzl.zzdo(num.intValue());
    }
}
