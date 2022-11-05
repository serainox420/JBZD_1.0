package io.fabric.sdk.android.services.b;

import java.io.IOException;
/* compiled from: FileRollOverManager.java */
/* loaded from: classes3.dex */
public interface e {
    void cancelTimeBasedFileRollOver();

    boolean rollFileOver() throws IOException;
}
