package io.fabric.sdk.android.services.network;

import java.io.InputStream;
/* compiled from: PinningInfoProvider.java */
/* loaded from: classes3.dex */
public interface e {
    String getKeyStorePassword();

    InputStream getKeyStoreStream();

    long getPinCreationTimeInMillis();

    String[] getPins();
}
