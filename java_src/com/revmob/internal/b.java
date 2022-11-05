package com.revmob.internal;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.os.AsyncTask;
import android.os.Build;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.NoSuchAlgorithmException;
import org.apache.http.util.ByteArrayBuffer;
@SuppressLint({"NewApi"})
/* loaded from: classes3.dex */
public final class b extends AsyncTask {

    /* renamed from: a  reason: collision with root package name */
    private String f4797a;
    private File b;
    private boolean c;
    private URL d;
    private Activity e;
    private String f;
    private a g;

    public b(Activity activity, String str, String str2, a aVar) {
        this.e = activity;
        this.g = aVar;
        new com.revmob.a.a();
        try {
            this.f = com.revmob.a.a.a(str);
        } catch (UnsupportedEncodingException e) {
            u.a(e, null, w.c, null, "doInBackground2");
            this.f = str2;
            e.printStackTrace();
        } catch (NoSuchAlgorithmException e2) {
            u.a(e2, null, w.c, null, "doInBackground1");
            this.f = str2;
            e2.printStackTrace();
        }
        try {
            this.d = new URL(str);
        } catch (MalformedURLException e3) {
            u.a(e3, null, w.c, null, "doInBackground3");
            e3.printStackTrace();
        }
    }

    private String c() {
        try {
            this.f4797a = this.e.getApplicationContext().getFilesDir().getPath();
            this.b = new File(this.f4797a, this.f);
            this.f4797a = this.b.getAbsolutePath();
            if (!this.b.exists()) {
                System.currentTimeMillis();
                BufferedInputStream bufferedInputStream = new BufferedInputStream(this.d.openConnection().getInputStream());
                ByteArrayBuffer byteArrayBuffer = new ByteArrayBuffer(50);
                while (true) {
                    int read = bufferedInputStream.read();
                    if (read == -1) {
                        break;
                    }
                    byteArrayBuffer.append((byte) read);
                }
                FileOutputStream fileOutputStream = new FileOutputStream(this.b);
                fileOutputStream.write(byteArrayBuffer.toByteArray());
                fileOutputStream.close();
                if (Build.VERSION.SDK_INT >= 9 && Build.VERSION.SDK_INT < 15) {
                    this.b.setReadable(true, false);
                }
            }
            this.c = true;
        } catch (IOException e) {
            u.a(e, null, w.c, null, "doInBackground");
            this.c = false;
            e.printStackTrace();
        }
        return null;
    }

    public final File a() {
        return this.b;
    }

    public final boolean b() {
        return this.c;
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ Object doInBackground(Object[] objArr) {
        return c();
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ void onPostExecute(Object obj) {
        super.onPostExecute((String) obj);
        if (this.g != null) {
            this.g.a();
        }
    }
}
