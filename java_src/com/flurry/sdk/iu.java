package com.flurry.sdk;

import android.os.Build;
import com.flurry.sdk.iv;
import com.flurry.sdk.ks;
import com.flurry.sdk.ku;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.zip.CRC32;
/* loaded from: classes2.dex */
public class iu {
    public static final String b = iu.class.getName();
    private static iu c = null;

    /* renamed from: a  reason: collision with root package name */
    public String f2877a;
    private kf<List<iv>> d;
    private List<iv> e;
    private boolean f;

    private iu() {
    }

    public static synchronized iu a() {
        iu iuVar;
        synchronized (iu.class) {
            if (c == null) {
                iu iuVar2 = new iu();
                c = iuVar2;
                iuVar2.d = new kf<>(jy.a().f2947a.getFileStreamPath(".yflurrypulselogging." + Long.toString(ly.i(jy.a().d), 16)), ".yflurrypulselogging.", 1, new lj<List<iv>>() { // from class: com.flurry.sdk.iu.1
                    @Override // com.flurry.sdk.lj
                    public final lg<List<iv>> a(int i) {
                        return new lf(new iv.a());
                    }
                });
                iuVar2.f = ((Boolean) lp.a().a("UseHttps")).booleanValue();
                km.a(4, b, "initSettings, UseHttps = " + iuVar2.f);
                iuVar2.e = iuVar2.d.a();
                if (iuVar2.e == null) {
                    iuVar2.e = new ArrayList();
                }
            }
            iuVar = c;
        }
        return iuVar;
    }

    public final synchronized void a(it itVar) {
        try {
            this.e.add(new iv(itVar.d()));
            km.a(4, b, "Saving persistent Pulse logging data.");
            this.d.a(this.e);
        } catch (IOException e) {
            km.a(6, b, "Error when generating pulse log report in addReport part");
        }
    }

    private byte[] d() throws IOException {
        DataOutputStream dataOutputStream;
        ByteArrayOutputStream byteArrayOutputStream;
        byte[] byteArray;
        DataOutputStream dataOutputStream2 = null;
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
            dataOutputStream = new DataOutputStream(byteArrayOutputStream);
        } catch (IOException e) {
            e = e;
        } catch (Throwable th) {
            th = th;
            dataOutputStream = null;
        }
        try {
            if (this.e == null || this.e.isEmpty()) {
                byteArray = byteArrayOutputStream.toByteArray();
                ly.a(dataOutputStream);
            } else {
                dataOutputStream.writeShort(1);
                dataOutputStream.writeShort(1);
                dataOutputStream.writeLong(System.currentTimeMillis());
                dataOutputStream.writeUTF(jy.a().d);
                dataOutputStream.writeUTF(ju.a().g());
                dataOutputStream.writeShort(jz.a());
                dataOutputStream.writeShort(3);
                ju.a();
                dataOutputStream.writeUTF(ju.c());
                dataOutputStream.writeBoolean(jl.a().c());
                ArrayList<ia> arrayList = new ArrayList();
                for (Map.Entry entry : Collections.unmodifiableMap(jl.a().f2923a).entrySet()) {
                    ia iaVar = new ia();
                    iaVar.f2828a = ((jt) entry.getKey()).c;
                    if (((jt) entry.getKey()).d) {
                        iaVar.b = new String((byte[]) entry.getValue());
                    } else {
                        iaVar.b = ly.b((byte[]) entry.getValue());
                    }
                    arrayList.add(iaVar);
                }
                dataOutputStream.writeShort(arrayList.size());
                for (ia iaVar2 : arrayList) {
                    dataOutputStream.writeShort(iaVar2.f2828a);
                    byte[] bytes = iaVar2.b.getBytes();
                    dataOutputStream.writeShort(bytes.length);
                    dataOutputStream.write(bytes);
                }
                dataOutputStream.writeShort(6);
                dataOutputStream.writeShort(in.MODEL.h);
                dataOutputStream.writeUTF(Build.MODEL);
                dataOutputStream.writeShort(in.BRAND.h);
                dataOutputStream.writeUTF(Build.BOARD);
                dataOutputStream.writeShort(in.ID.h);
                dataOutputStream.writeUTF(Build.ID);
                dataOutputStream.writeShort(in.DEVICE.h);
                dataOutputStream.writeUTF(Build.DEVICE);
                dataOutputStream.writeShort(in.PRODUCT.h);
                dataOutputStream.writeUTF(Build.PRODUCT);
                dataOutputStream.writeShort(in.VERSION_RELEASE.h);
                dataOutputStream.writeUTF(Build.VERSION.RELEASE);
                dataOutputStream.writeShort(this.e.size());
                for (iv ivVar : this.e) {
                    dataOutputStream.write(ivVar.f2880a);
                }
                byte[] byteArray2 = byteArrayOutputStream.toByteArray();
                CRC32 crc32 = new CRC32();
                crc32.update(byteArray2);
                dataOutputStream.writeInt((int) crc32.getValue());
                byteArray = byteArrayOutputStream.toByteArray();
                ly.a(dataOutputStream);
            }
            return byteArray;
        } catch (IOException e2) {
            e = e2;
            dataOutputStream2 = dataOutputStream;
            try {
                km.a(6, b, "Error when generating report", e);
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

    /* JADX WARN: Multi-variable type inference failed */
    private synchronized void a(byte[] bArr) {
        String str;
        if (!jr.a().b) {
            km.a(5, b, "Reports were not sent! No Internet connection!");
        } else if (bArr == 0 || bArr.length == 0) {
            km.a(3, b, "No report need be sent");
        } else {
            if (this.f2877a != null) {
                str = this.f2877a;
            } else {
                str = "https://data.flurry.com/pcr.do";
            }
            km.a(4, b, "PulseLoggingManager: start upload data " + Arrays.toString(bArr) + " to " + str);
            ks ksVar = new ks();
            ksVar.f = str;
            ksVar.w = 100000;
            ksVar.g = ku.a.kPost;
            ksVar.j = true;
            ksVar.a("Content-Type", "application/octet-stream");
            ksVar.c = new lc();
            ksVar.b = bArr;
            ksVar.f2978a = new ks.a<byte[], Void>() { // from class: com.flurry.sdk.iu.2
                @Override // com.flurry.sdk.ks.a
                public final /* synthetic */ void a(ks<byte[], Void> ksVar2, Void r7) {
                    int i = ksVar2.p;
                    if (i <= 0) {
                        km.e(iu.b, "Server Error: " + i);
                    } else if (i < 200 || i >= 300) {
                        km.a(3, iu.b, "Pulse logging report sent unsuccessfully, HTTP response:" + i);
                    } else {
                        km.a(3, iu.b, "Pulse logging report sent successfully HTTP response:" + i);
                        iu.this.e.clear();
                        iu.this.d.a(iu.this.e);
                    }
                }
            };
            jw.a().a((Object) this, (iu) ksVar);
        }
    }

    public final synchronized void b() {
        try {
            a(d());
        } catch (IOException e) {
            km.a(6, b, "Report not send due to exception in generate data");
        }
    }
}
