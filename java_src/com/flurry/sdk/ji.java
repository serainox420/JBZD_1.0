package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class ji {
    private static final String d = ji.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    boolean f2920a;
    long b;
    final List<jf> c = new ArrayList();

    /* loaded from: classes2.dex */
    public static class a implements lg<ji> {
        @Override // com.flurry.sdk.lg
        public final /* synthetic */ ji a(InputStream inputStream) throws IOException {
            if (inputStream == null) {
                return null;
            }
            DataInputStream dataInputStream = new DataInputStream(inputStream) { // from class: com.flurry.sdk.ji.a.1
                @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            ji jiVar = new ji();
            dataInputStream.readUTF();
            dataInputStream.readUTF();
            jiVar.f2920a = dataInputStream.readBoolean();
            jiVar.b = dataInputStream.readLong();
            while (true) {
                int readUnsignedShort = dataInputStream.readUnsignedShort();
                if (readUnsignedShort == 0) {
                    return jiVar;
                }
                byte[] bArr = new byte[readUnsignedShort];
                dataInputStream.readFully(bArr);
                jiVar.c.add(0, new jf(bArr));
            }
        }

        @Override // com.flurry.sdk.lg
        public final /* synthetic */ void a(OutputStream outputStream, ji jiVar) throws IOException {
            throw new UnsupportedOperationException("Serialization not supported");
        }
    }
}
