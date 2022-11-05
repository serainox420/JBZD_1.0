package com.intentsoftware.addapptr.c;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.util.DisplayMetrics;
import android.widget.ImageView;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
/* compiled from: Utils.java */
/* loaded from: classes2.dex */
public class m {
    private static final int MINIMUM_TABLET_SIZE_INCHES = 6;

    public static String stringFromStream(InputStream inputStream) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        StringBuilder sb = new StringBuilder();
        char[] cArr = new char[256];
        while (true) {
            int read = bufferedReader.read(cArr, 0, 256);
            if (read != -1) {
                sb.append(cArr, 0, read);
            } else {
                bufferedReader.close();
                return sb.toString();
            }
        }
    }

    public static Bitmap loadBitmap(String str) {
        try {
            return BitmapFactory.decodeStream(new URL(str).openStream());
        } catch (Exception e) {
            if (!c.isLoggable(6)) {
                return null;
            }
            c.e(m.class, "Decoding bitmap failed!");
            return null;
        }
    }

    public static void loadBitmapForView(String str, final ImageView imageView) {
        new AsyncTask<String, Void, Bitmap>() { // from class: com.intentsoftware.addapptr.c.m.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public Bitmap doInBackground(String... strArr) {
                return m.loadBitmap(strArr[0]);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public void onPostExecute(Bitmap bitmap) {
                imageView.setImageBitmap(bitmap);
            }
        }.execute(str);
    }

    public static boolean isTablet(Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        return Math.sqrt(Math.pow((double) (((float) displayMetrics.heightPixels) / displayMetrics.ydpi), 2.0d) + Math.pow((double) (((float) displayMetrics.widthPixels) / displayMetrics.xdpi), 2.0d)) > 6.0d;
    }
}
