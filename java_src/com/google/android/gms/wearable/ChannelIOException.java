package com.google.android.gms.wearable;

import java.io.IOException;
/* loaded from: classes2.dex */
public class ChannelIOException extends IOException {
    private final int zzbSN;
    private final int zzbSO;

    public ChannelIOException(String str, int i, int i2) {
        super(str);
        this.zzbSN = i;
        this.zzbSO = i2;
    }

    public int getAppSpecificErrorCode() {
        return this.zzbSO;
    }

    public int getCloseReason() {
        return this.zzbSN;
    }
}
