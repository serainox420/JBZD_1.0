package com.flurry.sdk;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
/* loaded from: classes2.dex */
public class kq<ObjectType> {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2976a = kq.class.getSimpleName();
    private static final byte[] b = {113, -92, -8, 125, 121, 107, -65, -61, -74, -114, -32, 0, -57, -87, -35, -56, -6, -52, 51, 126, -104, 49, 79, -52, 118, -84, 99, -52, -14, -126, -27, -64};
    private String c;
    private lg<ObjectType> d;

    private static void c(byte[] bArr) {
        if (bArr != null) {
            int length = bArr.length;
            int length2 = b.length;
            for (int i = 0; i < length; i++) {
                bArr[i] = (byte) ((bArr[i] ^ b[i % length2]) ^ ((i * 31) % 251));
            }
        }
    }

    private static void d(byte[] bArr) {
        c(bArr);
    }

    public static int a(byte[] bArr) {
        if (bArr == null) {
            return 0;
        }
        ke keVar = new ke();
        keVar.update(bArr);
        return keVar.b();
    }

    public kq(String str, lg<ObjectType> lgVar) {
        this.c = str;
        this.d = lgVar;
    }

    public final byte[] a(ObjectType objecttype) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        this.d.a(byteArrayOutputStream, objecttype);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        km.a(3, f2976a, "Encoding " + this.c + ": " + new String(byteArray));
        le leVar = new le(new lc());
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
        leVar.a(byteArrayOutputStream2, byteArray);
        byte[] byteArray2 = byteArrayOutputStream2.toByteArray();
        c(byteArray2);
        return byteArray2;
    }

    public final ObjectType b(byte[] bArr) throws IOException {
        if (bArr == null) {
            throw new IOException("Decoding: " + this.c + ": Nothing to decode");
        }
        d(bArr);
        byte[] bArr2 = (byte[]) new le(new lc()).a(new ByteArrayInputStream(bArr));
        km.a(3, f2976a, "Decoding: " + this.c + ": " + new String(bArr2));
        return this.d.a(new ByteArrayInputStream(bArr2));
    }
}
