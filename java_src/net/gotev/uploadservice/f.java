package net.gotev.uploadservice;

import android.content.Intent;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.util.Iterator;
/* compiled from: MultipartUploadTask.java */
/* loaded from: classes3.dex */
public class f extends d {
    private static final Charset h = Charset.forName("US-ASCII");
    private byte[] i;
    private byte[] j;
    private Charset k;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.gotev.uploadservice.d, net.gotev.uploadservice.j
    public void a(UploadService uploadService, Intent intent) throws IOException {
        super.a(uploadService, intent);
        String str = "-------AndroidUploadService" + System.currentTimeMillis();
        this.i = ("\r\n--" + str + "\r\n").getBytes(h);
        this.j = ("\r\n--" + str + "--\r\n").getBytes(h);
        this.k = intent.getBooleanExtra("multipartUtf8Charset", false) ? Charset.forName("UTF-8") : h;
        if (this.d.a().size() <= 1) {
            this.f5846a.a("Connection", "close");
        } else {
            this.f5846a.a("Connection", "Keep-Alive");
        }
        this.f5846a.a("Content-Type", "multipart/form-data; boundary=" + str);
    }

    @Override // net.gotev.uploadservice.d
    protected long b() throws UnsupportedEncodingException {
        return i() + h() + this.j.length;
    }

    @Override // net.gotev.uploadservice.a.b.a
    public void a(net.gotev.uploadservice.a.a aVar) throws IOException {
        b(aVar);
        c(aVar);
        aVar.a(this.j);
    }

    private long h() throws UnsupportedEncodingException {
        long j = 0;
        Iterator<UploadFile> it = this.d.a().iterator();
        while (true) {
            long j2 = j;
            if (it.hasNext()) {
                j = b(it.next()) + j2;
            } else {
                return j2;
            }
        }
    }

    private long i() throws UnsupportedEncodingException {
        long j = 0;
        if (this.f5846a.b().isEmpty()) {
            return 0L;
        }
        Iterator<NameValue> it = this.f5846a.b().iterator();
        while (true) {
            long j2 = j;
            if (it.hasNext()) {
                j = a(it.next()).length + this.i.length + j2;
            } else {
                return j2;
            }
        }
    }

    private byte[] a(NameValue nameValue) throws UnsupportedEncodingException {
        return ("Content-Disposition: form-data; name=\"" + nameValue.a() + "\"\r\n\r\n" + nameValue.b()).getBytes(this.k);
    }

    private byte[] a(UploadFile uploadFile) throws UnsupportedEncodingException {
        return ("Content-Disposition: form-data; name=\"" + uploadFile.a("httpParamName") + "\"; filename=\"" + uploadFile.a("httpRemoteFileName") + "\"\r\nContent-Type: " + uploadFile.a("httpContentType") + "\r\n\r\n").getBytes(this.k);
    }

    private long b(UploadFile uploadFile) throws UnsupportedEncodingException {
        return this.i.length + a(uploadFile).length + uploadFile.a(this.c);
    }

    private void b(net.gotev.uploadservice.a.a aVar) throws IOException {
        byte[] a2;
        if (!this.f5846a.b().isEmpty()) {
            for (NameValue nameValue : this.f5846a.b()) {
                aVar.a(this.i);
                aVar.a(a(nameValue));
                this.g += a2.length + this.i.length;
                a(this.g, this.f);
            }
        }
    }

    private void c(net.gotev.uploadservice.a.a aVar) throws IOException {
        for (UploadFile uploadFile : this.d.a()) {
            if (this.e) {
                aVar.a(this.i);
                byte[] a2 = a(uploadFile);
                aVar.a(a2);
                this.g = a2.length + this.i.length + this.g;
                a(this.g, this.f);
                InputStream b = uploadFile.b(this.c);
                aVar.a(b, this);
                b.close();
            } else {
                return;
            }
        }
    }

    @Override // net.gotev.uploadservice.j
    protected void d() {
        for (UploadFile uploadFile : this.d.a()) {
            a(uploadFile.a());
        }
        this.d.a().clear();
    }
}
