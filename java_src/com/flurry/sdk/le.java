package com.flurry.sdk;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
/* loaded from: classes2.dex */
public final class le<ObjectType> extends ld<ObjectType> {
    public le(lg<ObjectType> lgVar) {
        super(lgVar);
    }

    @Override // com.flurry.sdk.ld, com.flurry.sdk.lg
    public final void a(OutputStream outputStream, ObjectType objecttype) throws IOException {
        GZIPOutputStream gZIPOutputStream;
        if (outputStream != null) {
            try {
                gZIPOutputStream = new GZIPOutputStream(outputStream);
                try {
                    super.a(gZIPOutputStream, objecttype);
                    ly.a(gZIPOutputStream);
                } catch (Throwable th) {
                    th = th;
                    ly.a(gZIPOutputStream);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                gZIPOutputStream = null;
            }
        }
    }

    @Override // com.flurry.sdk.ld, com.flurry.sdk.lg
    public final ObjectType a(InputStream inputStream) throws IOException {
        GZIPInputStream gZIPInputStream;
        Throwable th;
        ObjectType objecttype = null;
        if (inputStream != null) {
            try {
                gZIPInputStream = new GZIPInputStream(inputStream);
            } catch (Throwable th2) {
                gZIPInputStream = null;
                th = th2;
            }
            try {
                objecttype = (ObjectType) super.a(gZIPInputStream);
                ly.a((Closeable) gZIPInputStream);
            } catch (Throwable th3) {
                th = th3;
                ly.a((Closeable) gZIPInputStream);
                throw th;
            }
        }
        return objecttype;
    }
}
