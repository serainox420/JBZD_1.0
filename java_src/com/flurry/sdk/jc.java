package com.flurry.sdk;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class jc {

    /* renamed from: a  reason: collision with root package name */
    public String f2891a;
    public boolean b;
    public boolean c;
    public long d;
    private final Map<String, String> e = new HashMap();
    private int f;
    private long g;

    public jc(int i, String str, Map<String, String> map, long j, boolean z) {
        this.f = i;
        this.f2891a = str;
        if (map != null) {
            this.e.putAll(map);
        }
        this.g = j;
        this.b = z;
        this.c = !this.b;
    }

    public final void a(long j) {
        this.c = true;
        this.d = j - this.g;
        km.a(3, "FlurryAgent", "Ended event '" + this.f2891a + "' (" + this.g + ") after " + this.d + "ms");
    }

    public final synchronized void a(Map<String, String> map) {
        if (map != null) {
            this.e.putAll(map);
        }
    }

    public final synchronized Map<String, String> a() {
        return new HashMap(this.e);
    }

    public final synchronized void b(Map<String, String> map) {
        this.e.clear();
        this.e.putAll(map);
    }

    public final synchronized byte[] b() {
        DataOutputStream dataOutputStream;
        Throwable th;
        DataOutputStream dataOutputStream2;
        byte[] bArr;
        ByteArrayOutputStream byteArrayOutputStream;
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
            dataOutputStream = new DataOutputStream(byteArrayOutputStream);
        } catch (IOException e) {
            dataOutputStream2 = null;
        } catch (Throwable th2) {
            dataOutputStream = null;
            th = th2;
        }
        try {
            dataOutputStream.writeShort(this.f);
            dataOutputStream.writeUTF(this.f2891a);
            dataOutputStream.writeShort(this.e.size());
            for (Map.Entry<String, String> entry : this.e.entrySet()) {
                dataOutputStream.writeUTF(ly.b(entry.getKey()));
                dataOutputStream.writeUTF(ly.b(entry.getValue()));
            }
            dataOutputStream.writeLong(this.g);
            dataOutputStream.writeLong(this.d);
            dataOutputStream.flush();
            bArr = byteArrayOutputStream.toByteArray();
            ly.a(dataOutputStream);
        } catch (IOException e2) {
            dataOutputStream2 = dataOutputStream;
            try {
                bArr = new byte[0];
                ly.a(dataOutputStream2);
                return bArr;
            } catch (Throwable th3) {
                th = th3;
                dataOutputStream = dataOutputStream2;
                ly.a(dataOutputStream);
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            ly.a(dataOutputStream);
            throw th;
        }
        return bArr;
    }
}
