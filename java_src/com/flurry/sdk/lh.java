package com.flurry.sdk;

import com.facebook.ads.AudienceNetworkActivity;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes2.dex */
public final class lh implements lg<String> {
    @Override // com.flurry.sdk.lg
    public final /* synthetic */ void a(OutputStream outputStream, String str) throws IOException {
        String str2 = str;
        if (outputStream == null || str2 == null) {
            return;
        }
        byte[] bytes = str2.getBytes(AudienceNetworkActivity.WEBVIEW_ENCODING);
        outputStream.write(bytes, 0, bytes.length);
    }

    @Override // com.flurry.sdk.lg
    public final /* synthetic */ String a(InputStream inputStream) throws IOException {
        if (inputStream == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ly.a(inputStream, byteArrayOutputStream);
        return byteArrayOutputStream.toString();
    }
}
