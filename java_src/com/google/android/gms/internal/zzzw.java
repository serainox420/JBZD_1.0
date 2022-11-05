package com.google.android.gms.internal;

import com.facebook.common.time.Clock;
/* loaded from: classes2.dex */
public class zzzw {
    public static long zzd(long j, long j2) {
        return j >= 0 ? j % j2 : (((Clock.MAX_TIME % j2) + 1) + ((j & Clock.MAX_TIME) % j2)) % j2;
    }
}
