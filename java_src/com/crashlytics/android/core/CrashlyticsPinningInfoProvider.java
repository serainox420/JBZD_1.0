package com.crashlytics.android.core;

import io.fabric.sdk.android.services.network.e;
import java.io.InputStream;
/* loaded from: classes.dex */
class CrashlyticsPinningInfoProvider implements e {
    private final PinningInfoProvider pinningInfo;

    public CrashlyticsPinningInfoProvider(PinningInfoProvider pinningInfoProvider) {
        this.pinningInfo = pinningInfoProvider;
    }

    @Override // io.fabric.sdk.android.services.network.e
    public InputStream getKeyStoreStream() {
        return this.pinningInfo.getKeyStoreStream();
    }

    @Override // io.fabric.sdk.android.services.network.e
    public String getKeyStorePassword() {
        return this.pinningInfo.getKeyStorePassword();
    }

    @Override // io.fabric.sdk.android.services.network.e
    public String[] getPins() {
        return this.pinningInfo.getPins();
    }

    @Override // io.fabric.sdk.android.services.network.e
    public long getPinCreationTimeInMillis() {
        return -1L;
    }
}
