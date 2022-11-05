package com.mopub.common;

import com.mopub.common.util.ResponseHeader;
import com.mopub.common.util.Streams;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
/* loaded from: classes3.dex */
public class DownloadResponse {

    /* renamed from: a  reason: collision with root package name */
    private byte[] f4337a;
    private final int b;
    private final long c;
    private final Header[] d;

    public DownloadResponse(HttpResponse httpResponse) throws Exception {
        BufferedInputStream bufferedInputStream;
        this.f4337a = new byte[0];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        BufferedInputStream bufferedInputStream2 = null;
        try {
            HttpEntity entity = httpResponse.getEntity();
            if (entity == null) {
                bufferedInputStream = null;
            } else {
                bufferedInputStream = new BufferedInputStream(entity.getContent());
                try {
                    Streams.copyContent(bufferedInputStream, byteArrayOutputStream);
                    this.f4337a = byteArrayOutputStream.toByteArray();
                } catch (Throwable th) {
                    bufferedInputStream2 = bufferedInputStream;
                    th = th;
                    Streams.closeStream(bufferedInputStream2);
                    Streams.closeStream(byteArrayOutputStream);
                    throw th;
                }
            }
            Streams.closeStream(bufferedInputStream);
            Streams.closeStream(byteArrayOutputStream);
            this.b = httpResponse.getStatusLine().getStatusCode();
            this.c = this.f4337a.length;
            this.d = httpResponse.getAllHeaders();
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public byte[] getByteArray() {
        return this.f4337a;
    }

    public int getStatusCode() {
        return this.b;
    }

    public long getContentLength() {
        return this.c;
    }

    public String getFirstHeader(ResponseHeader responseHeader) {
        Header[] headerArr;
        for (Header header : this.d) {
            if (header.getName().equalsIgnoreCase(responseHeader.getKey())) {
                return header.getValue();
            }
        }
        return null;
    }
}
