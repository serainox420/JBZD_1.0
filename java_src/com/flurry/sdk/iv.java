package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes2.dex */
public final class iv {

    /* renamed from: a  reason: collision with root package name */
    byte[] f2880a;

    public iv() {
    }

    public iv(byte[] bArr) {
        this.f2880a = bArr;
    }

    /* loaded from: classes2.dex */
    public static class a implements lg<iv> {
        @Override // com.flurry.sdk.lg
        public final /* synthetic */ void a(OutputStream outputStream, iv ivVar) throws IOException {
            iv ivVar2 = ivVar;
            if (outputStream == null || ivVar2 == null) {
                return;
            }
            DataOutputStream dataOutputStream = new DataOutputStream(outputStream) { // from class: com.flurry.sdk.iv.a.1
                @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            dataOutputStream.writeShort(ivVar2.f2880a.length);
            dataOutputStream.write(ivVar2.f2880a);
            dataOutputStream.writeShort(0);
            dataOutputStream.flush();
        }

        @Override // com.flurry.sdk.lg
        public final /* synthetic */ iv a(InputStream inputStream) throws IOException {
            DataInputStream dataInputStream;
            int readShort;
            if (inputStream == null || (readShort = (dataInputStream = new DataInputStream(inputStream) { // from class: com.flurry.sdk.iv.a.2
                @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            }).readShort()) == 0) {
                return null;
            }
            iv ivVar = new iv();
            ivVar.f2880a = new byte[readShort];
            dataInputStream.readFully(ivVar.f2880a);
            dataInputStream.readUnsignedShort();
            return ivVar;
        }
    }
}
