package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
/* renamed from: com.flurry.sdk.do  reason: invalid class name */
/* loaded from: classes2.dex */
public class Cdo extends kw {
    private static final String d = Cdo.class.getName();

    /* renamed from: a  reason: collision with root package name */
    String f2540a;
    String b;
    HashMap<String, Object> c;
    private boolean e;
    private int f;

    /* synthetic */ Cdo(byte b2) {
        this();
    }

    /* renamed from: com.flurry.sdk.do$c */
    /* loaded from: classes2.dex */
    public static class c implements lg<Cdo> {
        @Override // com.flurry.sdk.lg
        public final /* synthetic */ void a(OutputStream outputStream, Cdo cdo) throws IOException {
            Cdo cdo2 = cdo;
            km.a(5, Cdo.d, "AdsAsyncReportInfoSerializerV3 serialize");
            if (outputStream == null || cdo2 == null) {
                return;
            }
            DataOutputStream dataOutputStream = new DataOutputStream(outputStream) { // from class: com.flurry.sdk.do.c.1
                @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            dataOutputStream.writeLong(cdo2.n);
            dataOutputStream.writeBoolean(cdo2.o);
            dataOutputStream.writeInt(cdo2.p);
            dataOutputStream.writeUTF(cdo2.q);
            dataOutputStream.writeUTF(cdo2.r);
            dataOutputStream.writeUTF(cdo2.f2540a);
            dataOutputStream.writeUTF(cdo2.b);
            dataOutputStream.writeBoolean(cdo2.e);
            dataOutputStream.writeInt(cdo2.f);
            dataOutputStream.flush();
        }

        @Override // com.flurry.sdk.lg
        public final /* synthetic */ Cdo a(InputStream inputStream) throws IOException {
            km.a(5, Cdo.d, "AdsAsyncReportInfoSerializerV3 deserialize");
            if (inputStream == null) {
                return null;
            }
            DataInputStream dataInputStream = new DataInputStream(inputStream) { // from class: com.flurry.sdk.do.c.2
                @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            Cdo cdo = new Cdo((byte) 0);
            cdo.n = dataInputStream.readLong();
            cdo.o = dataInputStream.readBoolean();
            cdo.p = dataInputStream.readInt();
            cdo.q = dataInputStream.readUTF();
            cdo.r = dataInputStream.readUTF();
            cdo.f2540a = dataInputStream.readUTF();
            cdo.b = dataInputStream.readUTF();
            cdo.e = dataInputStream.readBoolean();
            cdo.f = dataInputStream.readInt();
            return cdo;
        }
    }

    private Cdo() {
        this.c = null;
    }

    public Cdo(String str, String str2, String str3, long j, int i) {
        this.c = null;
        a(str3);
        this.n = j;
        this.f2540a = str;
        this.b = str2;
        this.f = i;
    }

    public Cdo(String str, String str2, String str3, long j, int i, HashMap<String, Object> hashMap) {
        this.c = null;
        a(str3);
        this.n = j;
        this.f2540a = str;
        this.b = str2;
        this.f = i;
        this.c = hashMap;
    }

    @Override // com.flurry.sdk.kw
    public final int a() {
        return this.f;
    }

    /* renamed from: com.flurry.sdk.do$a */
    /* loaded from: classes2.dex */
    public static class a implements lg<Cdo> {
        @Override // com.flurry.sdk.lg
        public final /* synthetic */ Cdo a(InputStream inputStream) throws IOException {
            km.a(5, Cdo.d, "AdsAsyncReportInfoSerializerV1 deserialize");
            if (inputStream == null) {
                return null;
            }
            DataInputStream dataInputStream = new DataInputStream(inputStream) { // from class: com.flurry.sdk.do.a.1
                @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            Cdo cdo = new Cdo((byte) 0);
            cdo.f2540a = dataInputStream.readUTF();
            cdo.b = dataInputStream.readUTF();
            cdo.a(dataInputStream.readUTF());
            cdo.n = dataInputStream.readLong();
            cdo.e = dataInputStream.readBoolean();
            cdo.o = dataInputStream.readBoolean();
            cdo.p = dataInputStream.readInt();
            return cdo;
        }

        @Override // com.flurry.sdk.lg
        public final /* synthetic */ void a(OutputStream outputStream, Cdo cdo) throws IOException {
            km.a(5, Cdo.d, "AdsAsyncReportInfoSerializerV1 serialize");
            throw new UnsupportedOperationException("Serialization not supported");
        }
    }

    /* renamed from: com.flurry.sdk.do$b */
    /* loaded from: classes2.dex */
    public static class b implements lg<Cdo> {
        @Override // com.flurry.sdk.lg
        public final /* synthetic */ Cdo a(InputStream inputStream) throws IOException {
            km.a(5, Cdo.d, "AdsAsyncReportInfoSerializerV2 deserialize");
            if (inputStream == null) {
                return null;
            }
            DataInputStream dataInputStream = new DataInputStream(inputStream) { // from class: com.flurry.sdk.do.b.1
                @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            Cdo cdo = new Cdo((byte) 0);
            cdo.n = dataInputStream.readLong();
            cdo.o = dataInputStream.readBoolean();
            cdo.p = dataInputStream.readInt();
            cdo.q = dataInputStream.readUTF();
            cdo.r = dataInputStream.readUTF();
            cdo.f2540a = dataInputStream.readUTF();
            cdo.b = dataInputStream.readUTF();
            cdo.e = dataInputStream.readBoolean();
            return cdo;
        }

        @Override // com.flurry.sdk.lg
        public final /* synthetic */ void a(OutputStream outputStream, Cdo cdo) throws IOException {
            km.a(5, Cdo.d, "AdsAsyncReportInfoSerializerV2 deserialize");
            throw new UnsupportedOperationException("Serialization not supported");
        }
    }
}
