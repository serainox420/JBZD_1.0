package com.google.android.exoplayer2.source.b;

import android.net.Uri;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* compiled from: Aes128DataSource.java */
/* loaded from: classes2.dex */
final class a implements com.google.android.exoplayer2.upstream.e {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.e f3351a;
    private final byte[] b;
    private final byte[] c;
    private CipherInputStream d;

    public a(com.google.android.exoplayer2.upstream.e eVar, byte[] bArr, byte[] bArr2) {
        this.f3351a = eVar;
        this.b = bArr;
        this.c = bArr2;
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public long a(com.google.android.exoplayer2.upstream.g gVar) throws IOException {
        try {
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS7Padding");
            try {
                cipher.init(2, new SecretKeySpec(this.b, "AES"), new IvParameterSpec(this.c));
                this.d = new CipherInputStream(new com.google.android.exoplayer2.upstream.f(this.f3351a, gVar), cipher);
                return -1L;
            } catch (InvalidAlgorithmParameterException | InvalidKeyException e) {
                throw new RuntimeException(e);
            }
        } catch (NoSuchAlgorithmException | NoSuchPaddingException e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public void a() throws IOException {
        this.d = null;
        this.f3351a.a();
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public int a(byte[] bArr, int i, int i2) throws IOException {
        com.google.android.exoplayer2.util.a.b(this.d != null);
        int read = this.d.read(bArr, i, i2);
        if (read < 0) {
            return -1;
        }
        return read;
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public Uri b() {
        return this.f3351a.b();
    }
}
