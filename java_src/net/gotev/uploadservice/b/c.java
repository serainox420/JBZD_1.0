package net.gotev.uploadservice.b;

import android.content.Context;
import java.io.FileNotFoundException;
import java.io.InputStream;
/* compiled from: SchemeHandler.java */
/* loaded from: classes3.dex */
public interface c {
    long a(Context context);

    void a(String str);

    InputStream b(Context context) throws FileNotFoundException;

    String c(Context context);

    String d(Context context);
}
