package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.UUID;
/* loaded from: classes2.dex */
public final class kz {

    /* renamed from: a  reason: collision with root package name */
    String f3004a;
    byte[] b;

    /* synthetic */ kz(byte b) {
        this();
    }

    private kz() {
        this.f3004a = null;
        this.b = null;
    }

    /* loaded from: classes2.dex */
    public static class a implements lg<kz> {
        @Override // com.flurry.sdk.lg
        public final /* synthetic */ void a(OutputStream outputStream, kz kzVar) throws IOException {
            kz kzVar2 = kzVar;
            if (outputStream == null || kzVar2 == null) {
                return;
            }
            DataOutputStream dataOutputStream = new DataOutputStream(outputStream) { // from class: com.flurry.sdk.kz.a.1
                @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            dataOutputStream.writeShort(kzVar2.b.length);
            dataOutputStream.write(kzVar2.b);
            dataOutputStream.writeShort(0);
            dataOutputStream.flush();
        }

        @Override // com.flurry.sdk.lg
        public final /* synthetic */ kz a(InputStream inputStream) throws IOException {
            if (inputStream == null) {
                return null;
            }
            DataInputStream dataInputStream = new DataInputStream(inputStream) { // from class: com.flurry.sdk.kz.a.2
                @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            kz kzVar = new kz((byte) 0);
            int readShort = dataInputStream.readShort();
            if (readShort == 0) {
                return null;
            }
            kzVar.b = new byte[readShort];
            dataInputStream.readFully(kzVar.b);
            dataInputStream.readUnsignedShort();
            return kzVar;
        }
    }

    public kz(byte[] bArr) {
        this.f3004a = null;
        this.b = null;
        this.f3004a = UUID.randomUUID().toString();
        this.b = bArr;
    }

    public static String a(String str) {
        return ".yflurrydatasenderblock." + str;
    }
}
