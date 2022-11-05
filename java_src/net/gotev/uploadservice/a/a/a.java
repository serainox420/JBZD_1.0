package net.gotev.uploadservice.a.a;

import java.io.IOException;
import java.io.OutputStream;
/* compiled from: HurlBodyWriter.java */
/* loaded from: classes3.dex */
public class a extends net.gotev.uploadservice.a.a {

    /* renamed from: a  reason: collision with root package name */
    private OutputStream f5838a;

    public a(OutputStream outputStream) {
        this.f5838a = outputStream;
    }

    @Override // net.gotev.uploadservice.a.a
    public void a(byte[] bArr) throws IOException {
        this.f5838a.write(bArr);
    }

    @Override // net.gotev.uploadservice.a.a
    public void a(byte[] bArr, int i) throws IOException {
        this.f5838a.write(bArr, 0, i);
    }

    @Override // net.gotev.uploadservice.a.a
    public void a() throws IOException {
        this.f5838a.flush();
    }
}
