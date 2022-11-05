package com.flurry.sdk;

import com.flurry.sdk.iq;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class ip extends kw {
    private static final String t = ip.class.getName();

    /* renamed from: a  reason: collision with root package name */
    public ArrayList<iq> f2858a;
    final long b;
    final int c;
    final int d;
    final iw e;
    final Map<String, String> f;
    long g;
    int h;
    int i;
    String j;
    String k;
    boolean l;
    public it m;
    private final int u = 1000;
    private final int v = 30000;

    public ip(String str, long j, String str2, long j2, int i, int i2, iw iwVar, Map<String, String> map, int i3, int i4, String str3) {
        a(str2);
        this.n = j2;
        a_();
        this.k = str;
        this.b = j;
        this.s = i;
        this.c = i;
        this.d = i2;
        this.e = iwVar;
        this.f = map;
        this.h = i3;
        this.i = i4;
        this.j = str3;
        this.g = NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS;
        this.f2858a = new ArrayList<>();
    }

    @Override // com.flurry.sdk.kw
    public final void a_() {
        super.a_();
        if (this.p != 1) {
            this.g *= 3;
        }
    }

    public final synchronized void c() {
        this.m.c();
    }

    public final void d() {
        Iterator<iq> it = this.f2858a.iterator();
        while (it.hasNext()) {
            it.next().l = this;
        }
    }

    /* loaded from: classes2.dex */
    public static class a implements lg<ip> {

        /* renamed from: a  reason: collision with root package name */
        lf<iq> f2859a = new lf<>(new iq.a());

        @Override // com.flurry.sdk.lg
        public final /* synthetic */ void a(OutputStream outputStream, ip ipVar) throws IOException {
            ip ipVar2 = ipVar;
            if (outputStream == null || ipVar2 == null) {
                return;
            }
            DataOutputStream dataOutputStream = new DataOutputStream(outputStream) { // from class: com.flurry.sdk.ip.a.1
                @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            if (ipVar2.k != null) {
                dataOutputStream.writeUTF(ipVar2.k);
            } else {
                dataOutputStream.writeUTF("");
            }
            if (ipVar2.r != null) {
                dataOutputStream.writeUTF(ipVar2.r);
            } else {
                dataOutputStream.writeUTF("");
            }
            dataOutputStream.writeLong(ipVar2.n);
            dataOutputStream.writeInt(ipVar2.p);
            dataOutputStream.writeLong(ipVar2.b);
            dataOutputStream.writeInt(ipVar2.c);
            dataOutputStream.writeInt(ipVar2.d);
            dataOutputStream.writeInt(ipVar2.e.e);
            Map map = ipVar2.f;
            if (map != null) {
                dataOutputStream.writeInt(ipVar2.f.size());
                for (String str : ipVar2.f.keySet()) {
                    dataOutputStream.writeUTF(str);
                    dataOutputStream.writeUTF((String) map.get(str));
                }
            } else {
                dataOutputStream.writeInt(0);
            }
            dataOutputStream.writeLong(ipVar2.g);
            dataOutputStream.writeInt(ipVar2.h);
            dataOutputStream.writeInt(ipVar2.i);
            if (ipVar2.j != null) {
                dataOutputStream.writeUTF(ipVar2.j);
            } else {
                dataOutputStream.writeUTF("");
            }
            dataOutputStream.writeBoolean(ipVar2.l);
            dataOutputStream.flush();
            this.f2859a.a(outputStream, (List<iq>) ipVar2.f2858a);
        }

        @Override // com.flurry.sdk.lg
        public final /* synthetic */ ip a(InputStream inputStream) throws IOException {
            if (inputStream == null) {
                return null;
            }
            DataInputStream dataInputStream = new DataInputStream(inputStream) { // from class: com.flurry.sdk.ip.a.2
                @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            String readUTF = dataInputStream.readUTF();
            if (readUTF.equals("")) {
                readUTF = null;
            }
            String readUTF2 = dataInputStream.readUTF();
            long readLong = dataInputStream.readLong();
            int readInt = dataInputStream.readInt();
            long readLong2 = dataInputStream.readLong();
            int readInt2 = dataInputStream.readInt();
            int readInt3 = dataInputStream.readInt();
            iw a2 = iw.a(dataInputStream.readInt());
            HashMap hashMap = null;
            int readInt4 = dataInputStream.readInt();
            if (readInt4 != 0) {
                hashMap = new HashMap();
                for (int i = 0; i < readInt4; i++) {
                    hashMap.put(dataInputStream.readUTF(), dataInputStream.readUTF());
                }
            }
            long readLong3 = dataInputStream.readLong();
            int readInt5 = dataInputStream.readInt();
            int readInt6 = dataInputStream.readInt();
            String readUTF3 = dataInputStream.readUTF();
            if (readUTF3.equals("")) {
                readUTF3 = null;
            }
            boolean readBoolean = dataInputStream.readBoolean();
            ip ipVar = new ip(readUTF, readLong2, readUTF2, readLong, readInt2, readInt3, a2, hashMap, readInt5, readInt6, readUTF3);
            ipVar.g = readLong3;
            ipVar.l = readBoolean;
            ipVar.p = readInt;
            ipVar.f2858a = (ArrayList) this.f2859a.a(inputStream);
            ipVar.d();
            return ipVar;
        }
    }
}
