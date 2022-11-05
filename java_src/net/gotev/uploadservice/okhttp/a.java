package net.gotev.uploadservice.okhttp;

import java.io.IOException;
import okio.d;
/* compiled from: OkHttpBodyWriter.java */
/* loaded from: classes3.dex */
public class a extends net.gotev.uploadservice.a.a {

    /* renamed from: a  reason: collision with root package name */
    private d f5853a;

    /* JADX INFO: Access modifiers changed from: protected */
    public a(d dVar) {
        this.f5853a = dVar;
    }

    @Override // net.gotev.uploadservice.a.a
    public void a(byte[] bArr) throws IOException {
        this.f5853a.c(bArr);
    }

    @Override // net.gotev.uploadservice.a.a
    public void a(byte[] bArr, int i) throws IOException {
        this.f5853a.c(bArr, 0, i);
    }

    @Override // net.gotev.uploadservice.a.a
    public void a() throws IOException {
        this.f5853a.flush();
    }
}
