package com.flurry.sdk;

import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
/* loaded from: classes2.dex */
public class kf<T> {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2961a = kf.class.getSimpleName();
    private final File b;
    private final lg<T> c;

    public kf(File file, String str, int i, lj<T> ljVar) {
        this.b = file;
        this.c = new le(new li(str, i, ljVar));
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x003e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final T a() {
        FileInputStream fileInputStream;
        Throwable th;
        T t = null;
        if (this.b != null) {
            if (!this.b.exists()) {
                km.a(5, f2961a, "No data to read for file:" + this.b.getName());
            } else {
                boolean z = false;
                try {
                    fileInputStream = new FileInputStream(this.b);
                    try {
                        try {
                            t = this.c.a(fileInputStream);
                            ly.a((Closeable) fileInputStream);
                        } catch (Exception e) {
                            e = e;
                            km.a(3, f2961a, "Error reading data file:" + this.b.getName(), e);
                            z = true;
                            ly.a((Closeable) fileInputStream);
                            if (z) {
                            }
                            return t;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        ly.a((Closeable) fileInputStream);
                        throw th;
                    }
                } catch (Exception e2) {
                    e = e2;
                    fileInputStream = null;
                } catch (Throwable th3) {
                    fileInputStream = null;
                    th = th3;
                    ly.a((Closeable) fileInputStream);
                    throw th;
                }
                if (z) {
                    km.a(3, f2961a, "Deleting data file:" + this.b.getName());
                    this.b.delete();
                }
            }
        }
        return t;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(T t) {
        boolean z = false;
        FileOutputStream fileOutputStream = null;
        try {
            if (t == null) {
                km.a(3, f2961a, "No data to write for file:" + this.b.getName());
                z = true;
            } else {
                try {
                    if (!lx.a(this.b)) {
                        throw new IOException("Cannot create parent directory!");
                    }
                    FileOutputStream fileOutputStream2 = new FileOutputStream(this.b);
                    try {
                        this.c.a(fileOutputStream2, t);
                        ly.a(fileOutputStream2);
                    } catch (Exception e) {
                        e = e;
                        fileOutputStream = fileOutputStream2;
                        km.a(3, f2961a, "Error writing data file:" + this.b.getName(), e);
                        ly.a(fileOutputStream);
                        z = true;
                        if (!z) {
                        }
                    } catch (Throwable th) {
                        th = th;
                        fileOutputStream = fileOutputStream2;
                        ly.a(fileOutputStream);
                        throw th;
                    }
                } catch (Exception e2) {
                    e = e2;
                }
            }
            if (!z) {
                km.a(3, f2961a, "Deleting data file:" + this.b.getName());
                this.b.delete();
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final boolean b() {
        if (this.b == null) {
            return false;
        }
        return this.b.delete();
    }
}
