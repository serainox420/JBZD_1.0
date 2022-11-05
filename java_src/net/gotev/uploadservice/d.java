package net.gotev.uploadservice;

import android.annotation.SuppressLint;
import android.content.Intent;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import net.gotev.uploadservice.a.a;
import net.gotev.uploadservice.a.b;
/* compiled from: HttpUploadTask.java */
/* loaded from: classes3.dex */
public abstract class d extends j implements a.InterfaceC0598a, b.a {
    private static final String h = d.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    protected HttpUploadTaskParameters f5846a = null;
    private net.gotev.uploadservice.a.b i;

    protected abstract long b() throws UnsupportedEncodingException;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.gotev.uploadservice.j
    public void a(UploadService uploadService, Intent intent) throws IOException {
        super.a(uploadService, intent);
        this.f5846a = (HttpUploadTaskParameters) intent.getParcelableExtra("httpTaskParameters");
    }

    @Override // net.gotev.uploadservice.j
    @SuppressLint({"NewApi"})
    protected void a() throws Exception {
        Logger.c(h, "Starting upload task with ID " + this.d.c());
        try {
            f().clear();
            this.g = 0L;
            this.f = b();
            if (this.f5846a.f()) {
                this.f5846a.a("User-Agent", this.f5846a.e());
            }
            this.i = UploadService.e.a(this.f5846a.c(), this.d.d()).a(this.f5846a.a()).a(this.f, this.f5846a.d());
            ServerResponse a2 = this.i.a(this);
            Logger.c(h, "Server responded with HTTP " + a2.a() + " to upload with ID: " + this.d.c());
            if (this.e) {
                a(a2);
            }
        } finally {
            if (this.i != null) {
                this.i.a();
            }
        }
    }

    @Override // net.gotev.uploadservice.a.a.InterfaceC0598a
    public boolean c() {
        return this.e;
    }

    @Override // net.gotev.uploadservice.a.a.InterfaceC0598a
    public void a(int i) {
        this.g += i;
        a(this.g, this.f);
    }
}
