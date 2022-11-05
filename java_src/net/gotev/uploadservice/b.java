package net.gotev.uploadservice;

import android.util.Log;
import net.gotev.uploadservice.Logger;
/* compiled from: DefaultLoggerDelegate.java */
/* loaded from: classes3.dex */
public class b implements Logger.a {
    @Override // net.gotev.uploadservice.Logger.a
    public void a(String str, String str2) {
        Log.e("UploadService", str + " - " + str2);
    }

    @Override // net.gotev.uploadservice.Logger.a
    public void a(String str, String str2, Throwable th) {
        Log.e("UploadService", str + " - " + str2, th);
    }

    @Override // net.gotev.uploadservice.Logger.a
    public void b(String str, String str2) {
        Log.d("UploadService", str + " - " + str2);
    }

    @Override // net.gotev.uploadservice.Logger.a
    public void c(String str, String str2) {
        Log.i("UploadService", str + " - " + str2);
    }
}
