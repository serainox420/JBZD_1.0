package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes2.dex */
public final class li<T> implements lg<T> {

    /* renamed from: a  reason: collision with root package name */
    private final String f3023a;
    private final int b;
    private final lj<T> c;

    public li(String str, int i, lj<T> ljVar) {
        this.f3023a = str;
        this.b = i;
        this.c = ljVar;
    }

    @Override // com.flurry.sdk.lg
    public final void a(OutputStream outputStream, T t) throws IOException {
        if (outputStream != null && this.c != null) {
            DataOutputStream dataOutputStream = new DataOutputStream(outputStream) { // from class: com.flurry.sdk.li.1
                @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            dataOutputStream.writeUTF(this.f3023a);
            dataOutputStream.writeInt(this.b);
            this.c.a(this.b).a(dataOutputStream, t);
            dataOutputStream.flush();
        }
    }

    @Override // com.flurry.sdk.lg
    public final T a(InputStream inputStream) throws IOException {
        if (inputStream == null || this.c == null) {
            return null;
        }
        DataInputStream dataInputStream = new DataInputStream(inputStream) { // from class: com.flurry.sdk.li.2
            @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public final void close() {
            }
        };
        String readUTF = dataInputStream.readUTF();
        if (!this.f3023a.equals(readUTF)) {
            throw new IOException("Signature: " + readUTF + " is invalid");
        }
        return this.c.a(dataInputStream.readInt()).a(dataInputStream);
    }
}
