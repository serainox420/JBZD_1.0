package com.flurry.sdk;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes2.dex */
public final class lc implements lg<byte[]> {
    @Override // com.flurry.sdk.lg
    public final /* synthetic */ void a(OutputStream outputStream, byte[] bArr) throws IOException {
        byte[] bArr2 = bArr;
        if (outputStream == null || bArr2 == null) {
            return;
        }
        outputStream.write(bArr2, 0, bArr2.length);
    }

    @Override // com.flurry.sdk.lg
    public final /* synthetic */ byte[] a(InputStream inputStream) throws IOException {
        if (inputStream == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ly.a(inputStream, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }
}
