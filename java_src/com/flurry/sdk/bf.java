package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes2.dex */
public final class bf {

    /* renamed from: a  reason: collision with root package name */
    public da f2477a;
    public String b;
    public long c;
    public long d;
    public long e;
    public int f;
    public int g;
    public int h;
    public int i;
    public long j;

    /* synthetic */ bf(byte b2) {
        this();
    }

    /* loaded from: classes2.dex */
    public static class a implements lg<bf> {
        @Override // com.flurry.sdk.lg
        public final /* synthetic */ void a(OutputStream outputStream, bf bfVar) throws IOException {
            bf bfVar2 = bfVar;
            if (outputStream == null || bfVar2 == null) {
                return;
            }
            DataOutputStream dataOutputStream = new DataOutputStream(outputStream) { // from class: com.flurry.sdk.bf.a.1
                @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            dataOutputStream.writeUTF(bfVar2.f2477a.name());
            dataOutputStream.writeUTF(bfVar2.b);
            dataOutputStream.writeLong(bfVar2.c);
            dataOutputStream.writeLong(bfVar2.d);
            dataOutputStream.writeLong(bfVar2.e);
            dataOutputStream.writeInt(bfVar2.f);
            dataOutputStream.writeInt(bfVar2.g);
            dataOutputStream.writeInt(bfVar2.h);
            dataOutputStream.writeInt(bfVar2.i);
            dataOutputStream.writeLong(bfVar2.j);
            dataOutputStream.flush();
        }

        @Override // com.flurry.sdk.lg
        public final /* synthetic */ bf a(InputStream inputStream) throws IOException {
            if (inputStream == null) {
                return null;
            }
            DataInputStream dataInputStream = new DataInputStream(inputStream) { // from class: com.flurry.sdk.bf.a.2
                @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            bf bfVar = new bf((byte) 0);
            bfVar.f2477a = (da) Enum.valueOf(da.class, dataInputStream.readUTF());
            bfVar.b = dataInputStream.readUTF();
            bfVar.c = dataInputStream.readLong();
            bfVar.d = dataInputStream.readLong();
            bfVar.e = dataInputStream.readLong();
            bfVar.f = dataInputStream.readInt();
            bfVar.g = dataInputStream.readInt();
            bfVar.h = dataInputStream.readInt();
            bfVar.i = dataInputStream.readInt();
            bfVar.j = dataInputStream.readLong();
            return bfVar;
        }
    }

    private bf() {
    }

    public bf(cz czVar) {
        this.f2477a = czVar.f2523a;
        this.b = czVar.b;
        this.c = czVar.c;
        this.d = czVar.d;
        this.e = czVar.e;
        this.f = czVar.f;
        this.g = czVar.g;
        this.h = czVar.h;
        this.i = 0;
        this.j = 0L;
    }

    /* loaded from: classes2.dex */
    public static class b implements lg<bf> {
        @Override // com.flurry.sdk.lg
        public final /* synthetic */ bf a(InputStream inputStream) throws IOException {
            if (inputStream == null) {
                return null;
            }
            DataInputStream dataInputStream = new DataInputStream(inputStream) { // from class: com.flurry.sdk.bf.b.1
                @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            bf bfVar = new bf((byte) 0);
            bfVar.f2477a = da.ADSPACE;
            bfVar.e = 0L;
            bfVar.j = 0L;
            bfVar.b = dataInputStream.readUTF();
            bfVar.c = dataInputStream.readLong();
            bfVar.d = dataInputStream.readLong();
            bfVar.i = dataInputStream.readInt();
            bfVar.f = dataInputStream.readInt();
            bfVar.g = dataInputStream.readInt();
            bfVar.h = dataInputStream.readInt();
            return bfVar;
        }

        @Override // com.flurry.sdk.lg
        public final /* synthetic */ void a(OutputStream outputStream, bf bfVar) throws IOException {
            throw new UnsupportedOperationException("Serialization not supported");
        }
    }
}
