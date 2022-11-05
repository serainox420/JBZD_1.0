package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes2.dex */
public class iq {
    private static final String m = iq.class.getName();

    /* renamed from: a  reason: collision with root package name */
    public int f2862a;
    public long b;
    public long c;
    public boolean d;
    public String g;
    public int h;
    public long i;
    public boolean j;
    public ip l;
    public long k = 0;
    public int e = 0;
    public ir f = ir.PENDING_COMPLETION;

    public iq(ip ipVar, long j, long j2, int i) {
        this.l = ipVar;
        this.b = j;
        this.c = j2;
        this.f2862a = i;
    }

    public final void a() {
        this.l.f2858a.add(this);
        if (!this.d) {
            return;
        }
        this.l.l = true;
    }

    /* loaded from: classes2.dex */
    public static class a implements lg<iq> {
        @Override // com.flurry.sdk.lg
        public final /* synthetic */ void a(OutputStream outputStream, iq iqVar) throws IOException {
            iq iqVar2 = iqVar;
            if (outputStream == null || iqVar2 == null) {
                return;
            }
            DataOutputStream dataOutputStream = new DataOutputStream(outputStream) { // from class: com.flurry.sdk.iq.a.1
                @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            dataOutputStream.writeInt(iqVar2.f2862a);
            dataOutputStream.writeLong(iqVar2.b);
            dataOutputStream.writeLong(iqVar2.c);
            dataOutputStream.writeBoolean(iqVar2.d);
            dataOutputStream.writeInt(iqVar2.e);
            dataOutputStream.writeInt(iqVar2.f.e);
            if (iqVar2.g != null) {
                dataOutputStream.writeUTF(iqVar2.g);
            } else {
                dataOutputStream.writeUTF("");
            }
            dataOutputStream.writeInt(iqVar2.h);
            dataOutputStream.writeLong(iqVar2.i);
            dataOutputStream.writeBoolean(iqVar2.j);
            dataOutputStream.writeLong(iqVar2.k);
            dataOutputStream.flush();
        }

        @Override // com.flurry.sdk.lg
        public final /* synthetic */ iq a(InputStream inputStream) throws IOException {
            if (inputStream == null) {
                return null;
            }
            DataInputStream dataInputStream = new DataInputStream(inputStream) { // from class: com.flurry.sdk.iq.a.2
                @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            int readInt = dataInputStream.readInt();
            long readLong = dataInputStream.readLong();
            long readLong2 = dataInputStream.readLong();
            boolean readBoolean = dataInputStream.readBoolean();
            int readInt2 = dataInputStream.readInt();
            ir a2 = ir.a(dataInputStream.readInt());
            String readUTF = dataInputStream.readUTF();
            int readInt3 = dataInputStream.readInt();
            long readLong3 = dataInputStream.readLong();
            boolean readBoolean2 = dataInputStream.readBoolean();
            long readLong4 = dataInputStream.readLong();
            iq iqVar = new iq(null, readLong, readLong2, readInt);
            iqVar.d = readBoolean;
            iqVar.e = readInt2;
            iqVar.f = a2;
            iqVar.g = readUTF;
            iqVar.h = readInt3;
            iqVar.i = readLong3;
            iqVar.j = readBoolean2;
            iqVar.k = readLong4;
            return iqVar;
        }
    }
}
