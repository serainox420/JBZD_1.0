package com.smaato.soma.internal.c;

import android.content.Context;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Environment;
import android.util.Log;
import com.smaato.soma.debug.DebugCategory;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
/* compiled from: ImageDownloader.java */
/* loaded from: classes3.dex */
public class g extends AsyncTask<f, Void, Void> {

    /* renamed from: a  reason: collision with root package name */
    final String f4979a = getClass().getCanonicalName();

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a */
    public Void doInBackground(f... fVarArr) {
        Context b = fVarArr[0].b();
        String a2 = fVarArr[0].a();
        try {
            File file = new File(Environment.getExternalStorageDirectory() + "/DCIM/Smaato/");
            file.mkdirs();
            File file2 = new File(file, "IMG_" + System.currentTimeMillis() + ".jpg");
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(a2).openConnection();
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.connect();
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            httpURLConnection.getInputStream();
            InputStream inputStream = httpURLConnection.getInputStream();
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr);
                if (read > 0) {
                    fileOutputStream.write(bArr, 0, read);
                } else {
                    fileOutputStream.close();
                    new a(b, file2);
                    return null;
                }
            }
        } catch (MalformedURLException e) {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(this.f4979a, "MalformedURL: " + e.getMessage(), 1, DebugCategory.WARNING));
            return null;
        } catch (IOException e2) {
            e2.printStackTrace();
            Log.e(this.f4979a, e2.getMessage(), e2);
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(this.f4979a, "Please enable permission WRITE_EXTERNAL_STORAGE!", 1, DebugCategory.WARNING));
            return null;
        }
    }

    /* compiled from: ImageDownloader.java */
    /* loaded from: classes3.dex */
    public class a implements MediaScannerConnection.MediaScannerConnectionClient {
        private MediaScannerConnection b;
        private File c;

        public a(Context context, File file) {
            this.c = file;
            this.b = new MediaScannerConnection(context, this);
            this.b.connect();
        }

        @Override // android.media.MediaScannerConnection.MediaScannerConnectionClient
        public void onMediaScannerConnected() {
            this.b.scanFile(this.c.getAbsolutePath(), null);
        }

        @Override // android.media.MediaScannerConnection.OnScanCompletedListener
        public void onScanCompleted(String str, Uri uri) {
            this.b.disconnect();
        }
    }
}
