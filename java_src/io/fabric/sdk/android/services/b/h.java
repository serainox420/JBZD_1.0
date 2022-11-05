package io.fabric.sdk.android.services.b;

import android.content.Context;
import io.fabric.sdk.android.services.common.o;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* compiled from: QueueFileEventStorage.java */
/* loaded from: classes3.dex */
public class h implements c {

    /* renamed from: a  reason: collision with root package name */
    private final Context f5655a;
    private final File b;
    private final String c;
    private final File d;
    private o e;
    private File f;

    public h(Context context, File file, String str, String str2) throws IOException {
        this.f5655a = context;
        this.b = file;
        this.c = str2;
        this.d = new File(this.b, str);
        this.e = new o(this.d);
        e();
    }

    private void e() {
        this.f = new File(this.b, this.c);
        if (!this.f.exists()) {
            this.f.mkdirs();
        }
    }

    @Override // io.fabric.sdk.android.services.b.c
    public void a(byte[] bArr) throws IOException {
        this.e.a(bArr);
    }

    @Override // io.fabric.sdk.android.services.b.c
    public int a() {
        return this.e.a();
    }

    @Override // io.fabric.sdk.android.services.b.c
    public void a(String str) throws IOException {
        this.e.close();
        a(this.d, new File(this.f, str));
        this.e = new o(this.d);
    }

    private void a(File file, File file2) throws IOException {
        FileInputStream fileInputStream;
        OutputStream outputStream = null;
        try {
            fileInputStream = new FileInputStream(file);
            try {
                outputStream = a(file2);
                io.fabric.sdk.android.services.common.i.a(fileInputStream, outputStream, new byte[1024]);
                io.fabric.sdk.android.services.common.i.a((Closeable) fileInputStream, "Failed to close file input stream");
                io.fabric.sdk.android.services.common.i.a((Closeable) outputStream, "Failed to close output stream");
                file.delete();
            } catch (Throwable th) {
                th = th;
                io.fabric.sdk.android.services.common.i.a((Closeable) fileInputStream, "Failed to close file input stream");
                io.fabric.sdk.android.services.common.i.a((Closeable) outputStream, "Failed to close output stream");
                file.delete();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            fileInputStream = null;
        }
    }

    public OutputStream a(File file) throws IOException {
        return new FileOutputStream(file);
    }

    @Override // io.fabric.sdk.android.services.b.c
    public List<File> a(int i) {
        ArrayList arrayList = new ArrayList();
        for (File file : this.f.listFiles()) {
            arrayList.add(file);
            if (arrayList.size() >= i) {
                break;
            }
        }
        return arrayList;
    }

    @Override // io.fabric.sdk.android.services.b.c
    public void a(List<File> list) {
        for (File file : list) {
            io.fabric.sdk.android.services.common.i.a(this.f5655a, String.format("deleting sent analytics file %s", file.getName()));
            file.delete();
        }
    }

    @Override // io.fabric.sdk.android.services.b.c
    public List<File> c() {
        return Arrays.asList(this.f.listFiles());
    }

    @Override // io.fabric.sdk.android.services.b.c
    public void d() {
        try {
            this.e.close();
        } catch (IOException e) {
        }
        this.d.delete();
    }

    @Override // io.fabric.sdk.android.services.b.c
    public boolean b() {
        return this.e.b();
    }

    @Override // io.fabric.sdk.android.services.b.c
    public boolean a(int i, int i2) {
        return this.e.a(i, i2);
    }
}
