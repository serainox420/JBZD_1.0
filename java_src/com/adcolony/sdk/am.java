package com.adcolony.sdk;

import android.os.StatFs;
import java.io.File;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class am {

    /* renamed from: a  reason: collision with root package name */
    String f1048a;
    String b;
    String c;
    String d;
    File e;
    File f;
    File g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a() {
        u.d.b("Configuring storage");
        this.f1048a = c() + "/adc3/";
        this.b = this.f1048a + "media/";
        this.e = new File(this.b);
        if (!this.e.isDirectory()) {
            this.e.delete();
            this.e.mkdirs();
        }
        if (!this.e.isDirectory()) {
            a.m.b(true);
            return false;
        } else if (a(this.b) < 2.097152E7d) {
            u.e.b("Not enough memory available at media path, disabling AdColony.");
            a.m.b(true);
            return false;
        } else {
            this.c = c() + "/adc3/data/";
            this.f = new File(this.c);
            if (!this.f.isDirectory()) {
                this.f.delete();
            }
            this.f.mkdirs();
            this.d = this.f1048a + "tmp/";
            this.g = new File(this.d);
            if (!this.g.isDirectory()) {
                this.g.delete();
                this.g.mkdirs();
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b() {
        if (this.e == null || this.f == null || this.g == null) {
            return false;
        }
        if (!this.e.isDirectory()) {
            this.e.delete();
        }
        if (!this.f.isDirectory()) {
            this.f.delete();
        }
        if (!this.g.isDirectory()) {
            this.g.delete();
        }
        this.e.mkdirs();
        this.f.mkdirs();
        this.g.mkdirs();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String c() {
        return a.l == null ? "" : a.l.getFilesDir().getAbsolutePath();
    }

    double a(String str) {
        try {
            StatFs statFs = new StatFs(str);
            return statFs.getAvailableBlocks() * statFs.getBlockSize();
        } catch (RuntimeException e) {
            return 0.0d;
        }
    }
}
