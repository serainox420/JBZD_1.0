package com.flurry.sdk;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes2.dex */
public interface lg<ObjectType> {
    ObjectType a(InputStream inputStream) throws IOException;

    void a(OutputStream outputStream, ObjectType objecttype) throws IOException;
}
