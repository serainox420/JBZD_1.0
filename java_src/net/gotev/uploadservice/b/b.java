package net.gotev.uploadservice.b;

import android.content.Context;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
/* compiled from: FileSchemeHandler.java */
/* loaded from: classes3.dex */
class b implements c {

    /* renamed from: a  reason: collision with root package name */
    private File f5842a;

    b() {
    }

    @Override // net.gotev.uploadservice.b.c
    public void a(String str) {
        this.f5842a = new File(str);
    }

    @Override // net.gotev.uploadservice.b.c
    public long a(Context context) {
        return this.f5842a.length();
    }

    @Override // net.gotev.uploadservice.b.c
    public InputStream b(Context context) throws FileNotFoundException {
        return new FileInputStream(this.f5842a);
    }

    @Override // net.gotev.uploadservice.b.c
    public String c(Context context) {
        return net.gotev.uploadservice.a.a(this.f5842a.getAbsolutePath());
    }

    @Override // net.gotev.uploadservice.b.c
    public String d(Context context) {
        return this.f5842a.getName();
    }
}
