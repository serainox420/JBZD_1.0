package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes2.dex */
public final class af {

    /* renamed from: a  reason: collision with root package name */
    String f2424a;
    as b;
    long c;
    long d;
    al e;
    long f;
    long g;

    /* loaded from: classes2.dex */
    public static class a implements lg<af> {
        @Override // com.flurry.sdk.lg
        public final /* synthetic */ void a(OutputStream outputStream, af afVar) throws IOException {
            af afVar2 = afVar;
            if (outputStream == null || afVar2 == null) {
                return;
            }
            DataOutputStream dataOutputStream = new DataOutputStream(outputStream) { // from class: com.flurry.sdk.af.a.1
                @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            dataOutputStream.writeUTF(afVar2.f2424a);
            dataOutputStream.writeInt(afVar2.b.e);
            dataOutputStream.writeLong(afVar2.c);
            dataOutputStream.writeLong(afVar2.d);
            dataOutputStream.writeInt(afVar2.e.h);
            dataOutputStream.writeLong(afVar2.f);
            dataOutputStream.writeLong(afVar2.g);
            dataOutputStream.flush();
        }

        @Override // com.flurry.sdk.lg
        public final /* synthetic */ af a(InputStream inputStream) throws IOException {
            if (inputStream == null) {
                return null;
            }
            DataInputStream dataInputStream = new DataInputStream(inputStream) { // from class: com.flurry.sdk.af.a.2
                @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            af afVar = new af((byte) 0);
            afVar.f2424a = dataInputStream.readUTF();
            afVar.b = as.a(dataInputStream.readInt());
            afVar.c = dataInputStream.readLong();
            afVar.d = dataInputStream.readLong();
            afVar.e = al.a(dataInputStream.readInt());
            afVar.f = dataInputStream.readLong();
            afVar.g = dataInputStream.readLong();
            return afVar;
        }
    }

    /* synthetic */ af(byte b) {
        this();
    }

    private af() {
    }

    public af(String str, as asVar, long j) {
        this.f2424a = str;
        this.b = asVar;
        this.c = System.currentTimeMillis();
        this.d = System.currentTimeMillis();
        this.e = al.NONE;
        this.f = j;
        this.g = -1L;
    }

    public final synchronized al a() {
        return this.e;
    }

    public final synchronized void a(al alVar) {
        this.e = alVar;
    }

    public final boolean b() {
        return this.f > 0 && System.currentTimeMillis() > this.f;
    }

    public final synchronized void c() {
        this.d = System.currentTimeMillis();
    }

    public final synchronized void a(long j) {
        this.g = j;
    }

    public final String toString() {
        return "url: " + this.f2424a + ", type:" + this.b + ", creation:" + this.c + ", accessed:" + this.d + ", status: " + this.e + ", expiration: " + this.f + ", size: " + this.g;
    }
}
