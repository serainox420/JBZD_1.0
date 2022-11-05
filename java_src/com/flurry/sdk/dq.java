package com.flurry.sdk;

import android.util.Pair;
import android.widget.Toast;
import com.facebook.GraphResponse;
import com.flurry.sdk.ks;
import com.flurry.sdk.ku;
import java.nio.ByteBuffer;
/* loaded from: classes2.dex */
public class dq extends ky {
    private static final String f = dq.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    public final kq<dj> f2550a;
    private final kq<dk> g;

    public dq() {
        this((byte) 0);
    }

    private dq(byte b) {
        super("Ads", dq.class.getSimpleName());
        this.f2550a = new kq<>("sdk log request", new ds());
        this.g = new kq<>("sdk log response", new dt());
        this.e = "AdData_";
        b();
    }

    public static byte[] a(byte[] bArr, String str) {
        byte[] bytes = str.getBytes();
        byte[] array = ByteBuffer.allocate(4).putInt(bytes.length).array();
        byte[] bArr2 = new byte[array.length + bytes.length + bArr.length];
        for (int i = 0; i < bArr2.length; i++) {
            if (i < array.length) {
                bArr2[i] = array[i];
            } else if (i >= array.length && i < bytes.length + array.length) {
                bArr2[i] = bytes[i - 4];
            } else {
                bArr2[i] = bArr[(i - 4) - bytes.length];
            }
        }
        return bArr2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference failed for: r1v17, types: [byte[], RequestObjectType] */
    @Override // com.flurry.sdk.ky
    public final void a(byte[] bArr, final String str, final String str2) {
        try {
            byte[] bArr2 = new byte[4];
            byte[] bArr3 = new byte[bArr.length - 4];
            for (int i = 0; i < bArr.length; i++) {
                if (i < 4) {
                    bArr2[i] = bArr[i];
                } else {
                    bArr3[i - 4] = bArr[i];
                }
            }
            int i2 = ByteBuffer.wrap(bArr2).getInt();
            byte[] bArr4 = new byte[i2];
            byte[] bArr5 = new byte[bArr3.length - i2];
            for (int i3 = 0; i3 < bArr3.length; i3++) {
                if (i3 < i2) {
                    bArr4[i3] = bArr3[i3];
                } else {
                    bArr5[i3 - i2] = bArr3[i3];
                }
            }
            Pair pair = new Pair(new String(bArr4), bArr5);
            String str3 = (String) pair.first;
            ?? r1 = (byte[]) pair.second;
            km.a(4, this.b, "FlurryAdLogsManager: start upload data with id = " + str + " to " + str3);
            ks ksVar = new ks();
            ksVar.f = str3;
            ksVar.w = 100000;
            ksVar.g = ku.a.kPost;
            ksVar.a("Content-Type", "application/x-flurry");
            ksVar.a("Accept", "application/x-flurry");
            ksVar.a("FM-Checksum", Integer.toString(kq.a((byte[]) r1)));
            ksVar.c = new lc();
            ksVar.d = new lc();
            ksVar.b = r1;
            ksVar.f2978a = new ks.a<byte[], byte[]>() { // from class: com.flurry.sdk.dq.1
                /* JADX WARN: Removed duplicated region for block: B:20:0x008d  */
                @Override // com.flurry.sdk.ks.a
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final /* synthetic */ void a(ks<byte[], byte[]> ksVar2, byte[] bArr6) {
                    dk dkVar;
                    byte[] bArr7 = bArr6;
                    int i4 = ksVar2.p;
                    if (ksVar2.c() && bArr7 != null) {
                        try {
                            dkVar = (dk) dq.this.g.b(bArr7);
                        } catch (Exception e) {
                            km.a(5, dq.f, "Failed to decode sdk log response: " + e);
                        }
                        if (dkVar == null && dkVar.f2536a.equals(GraphResponse.SUCCESS_KEY)) {
                            km.a(5, dq.this.b, "FlurryAdLogsManager: ad report " + str + " sent. HTTP response: " + i4);
                            if (km.c() <= 3 && km.d()) {
                                jy.a().a(new Runnable() { // from class: com.flurry.sdk.dq.1.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        Toast.makeText(jy.a().f2947a, "Ad log report sent", 0).show();
                                    }
                                });
                            }
                            dq.this.a(str, str2, i4);
                            dq.this.b();
                            return;
                        }
                        if (dkVar != null) {
                            for (String str4 : dkVar.b) {
                                km.a(6, dq.this.b, str4);
                            }
                        }
                        dq.this.a(str);
                    }
                    dkVar = null;
                    if (dkVar == null) {
                    }
                    if (dkVar != null) {
                    }
                    dq.this.a(str);
                }
            };
            jw.a().a((Object) this, (dq) ksVar);
        } catch (Exception e) {
            km.a(6, this.b, "Internal ERROR! Report is corrupt!");
            if (!this.d.a(str, str2)) {
                km.a(6, this.b, "Internal error. Block wasn't deleted with id = " + str);
            }
            if (this.c.remove(str)) {
                return;
            }
            km.a(6, this.b, "Internal error. Block with id = " + str + " was not in progress state");
        }
    }
}
