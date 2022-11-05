package com.google.android.gms.internal;

import java.util.Map;
/* loaded from: classes2.dex */
public class zzj {
    public final byte[] data;
    public final int statusCode;
    public final boolean zzA;
    public final long zzB;
    public final Map<String, String> zzz;

    public zzj(int i, byte[] bArr, Map<String, String> map, boolean z, long j) {
        this.statusCode = i;
        this.data = bArr;
        this.zzz = map;
        this.zzA = z;
        this.zzB = j;
    }

    public zzj(byte[] bArr, Map<String, String> map) {
        this(200, bArr, map, false, 0L);
    }
}
