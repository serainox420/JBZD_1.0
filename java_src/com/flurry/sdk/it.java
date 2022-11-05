package com.flurry.sdk;

import com.flurry.sdk.ip;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2.dex */
public final class it {
    private static final String e = iu.class.getName();

    /* renamed from: a  reason: collision with root package name */
    public long f2873a;
    int b;
    public String c;
    Map<Long, ip> d;
    private long f = System.currentTimeMillis();
    private long g;
    private ix h;
    private boolean i;
    private int j;
    private AtomicInteger k;

    public it(String str, boolean z, long j, long j2, ix ixVar, Map<Long, ip> map) {
        this.c = str;
        this.i = z;
        this.f2873a = j;
        this.g = j2;
        this.h = ixVar;
        this.d = map;
        if (map != null) {
            for (Long l : map.keySet()) {
                map.get(l).m = this;
            }
            this.j = map.size();
        } else {
            this.j = 0;
        }
        this.k = new AtomicInteger(0);
    }

    public final List<ip> a() {
        return this.d != null ? new ArrayList(this.d.values()) : Collections.emptyList();
    }

    public final synchronized boolean b() {
        return this.k.intValue() >= this.j;
    }

    public final synchronized void c() {
        this.k.incrementAndGet();
    }

    /* loaded from: classes2.dex */
    public static class a implements lg<it> {

        /* renamed from: a  reason: collision with root package name */
        lf<ip> f2874a = new lf<>(new ip.a());

        @Override // com.flurry.sdk.lg
        public final /* synthetic */ void a(OutputStream outputStream, it itVar) throws IOException {
            it itVar2 = itVar;
            if (outputStream == null || itVar2 == null) {
                return;
            }
            DataOutputStream dataOutputStream = new DataOutputStream(outputStream) { // from class: com.flurry.sdk.it.a.1
                @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            dataOutputStream.writeLong(itVar2.f2873a);
            dataOutputStream.writeLong(itVar2.f);
            dataOutputStream.writeLong(itVar2.g);
            dataOutputStream.writeInt(itVar2.h.e);
            dataOutputStream.writeBoolean(itVar2.i);
            dataOutputStream.writeInt(itVar2.b);
            if (itVar2.c != null) {
                dataOutputStream.writeUTF(itVar2.c);
            } else {
                dataOutputStream.writeUTF("");
            }
            dataOutputStream.writeInt(itVar2.j);
            dataOutputStream.writeInt(itVar2.k.intValue());
            dataOutputStream.flush();
            this.f2874a.a(outputStream, itVar2.a());
        }

        @Override // com.flurry.sdk.lg
        public final /* synthetic */ it a(InputStream inputStream) throws IOException {
            if (inputStream == null) {
                return null;
            }
            DataInputStream dataInputStream = new DataInputStream(inputStream) { // from class: com.flurry.sdk.it.a.2
                @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            long readLong = dataInputStream.readLong();
            long readLong2 = dataInputStream.readLong();
            long readLong3 = dataInputStream.readLong();
            ix a2 = ix.a(dataInputStream.readInt());
            boolean readBoolean = dataInputStream.readBoolean();
            int readInt = dataInputStream.readInt();
            String readUTF = dataInputStream.readUTF();
            int readInt2 = dataInputStream.readInt();
            int readInt3 = dataInputStream.readInt();
            it itVar = new it(readUTF, readBoolean, readLong, readLong3, a2, null);
            itVar.f = readLong2;
            itVar.b = readInt;
            itVar.j = readInt2;
            itVar.k = new AtomicInteger(readInt3);
            List<ip> a3 = this.f2874a.a(inputStream);
            if (a3 != null) {
                itVar.d = new HashMap();
                for (ip ipVar : a3) {
                    ipVar.m = itVar;
                    itVar.d.put(Long.valueOf(ipVar.b), ipVar);
                }
            }
            return itVar;
        }
    }

    public final byte[] d() throws IOException {
        DataOutputStream dataOutputStream;
        ByteArrayOutputStream byteArrayOutputStream;
        DataOutputStream dataOutputStream2 = null;
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
            dataOutputStream = new DataOutputStream(byteArrayOutputStream);
        } catch (IOException e2) {
            e = e2;
        } catch (Throwable th) {
            th = th;
            dataOutputStream = null;
        }
        try {
            dataOutputStream.writeShort(this.h.e);
            dataOutputStream.writeLong(this.f2873a);
            dataOutputStream.writeLong(this.g);
            dataOutputStream.writeBoolean(this.i);
            if (this.i) {
                dataOutputStream.writeShort(this.b);
                dataOutputStream.writeUTF(this.c);
            }
            dataOutputStream.writeShort(this.d.size());
            if (this.d != null) {
                for (Map.Entry<Long, ip> entry : this.d.entrySet()) {
                    ip value = entry.getValue();
                    dataOutputStream.writeLong(entry.getKey().longValue());
                    dataOutputStream.writeUTF(value.r);
                    dataOutputStream.writeShort(value.f2858a.size());
                    Iterator<iq> it = value.f2858a.iterator();
                    while (it.hasNext()) {
                        iq next = it.next();
                        dataOutputStream.writeShort(next.f2862a);
                        dataOutputStream.writeLong(next.b);
                        dataOutputStream.writeLong(next.c);
                        dataOutputStream.writeBoolean(next.d);
                        dataOutputStream.writeShort(next.e);
                        dataOutputStream.writeShort(next.f.e);
                        if ((next.e < 200 || next.e >= 400) && next.g != null) {
                            byte[] bytes = next.g.getBytes();
                            dataOutputStream.writeShort(bytes.length);
                            dataOutputStream.write(bytes);
                        }
                        dataOutputStream.writeShort(next.h);
                        dataOutputStream.writeInt((int) next.k);
                    }
                }
            }
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            ly.a(dataOutputStream);
            return byteArray;
        } catch (IOException e3) {
            e = e3;
            dataOutputStream2 = dataOutputStream;
            try {
                km.a(6, e, "Error when generating report", e);
                throw e;
            } catch (Throwable th2) {
                th = th2;
                dataOutputStream = dataOutputStream2;
                ly.a(dataOutputStream);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            ly.a(dataOutputStream);
            throw th;
        }
    }
}
