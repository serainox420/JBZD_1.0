package com.mdotm.android.http;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.mdotm.android.utils.MdotMLogger;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
/* loaded from: classes2.dex */
public class MdotMFileDownloader {
    private static final int HTTP_RESPONSE_OK = 200;
    private static final int HTTP_RESPONSE_OK1 = 201;

    public InputStream downloadFile(Context context, String str) {
        URL url;
        HttpURLConnection httpURLConnection;
        MdotMLogger.i(this, "resource url to download is = " + str);
        if (isNetworkAvailable(context)) {
            try {
                url = new URL(str);
            } catch (MalformedURLException e) {
                e.printStackTrace();
                url = null;
            }
            try {
                httpURLConnection = (HttpURLConnection) url.openConnection();
            } catch (IOException e2) {
                e2.printStackTrace();
                httpURLConnection = null;
            }
            httpURLConnection.setConnectTimeout(10000);
            httpURLConnection.setReadTimeout(30000);
            int i = 0;
            try {
                i = httpURLConnection.getResponseCode();
            } catch (IOException e3) {
                e3.printStackTrace();
            }
            if (i != 200 && i != 201) {
                return null;
            }
            try {
                return new BufferedInputStream(httpURLConnection.getInputStream());
            } catch (IOException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    private boolean isNetworkAvailable(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getApplicationContext().getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    public boolean writeStreamToFile(InputStream inputStream, File file) {
        boolean z = false;
        MdotMLogger.i(this, "writing stream to file");
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            byte[] bArr = new byte[3072];
            while (true) {
                int read = inputStream.read(bArr);
                if (read != -1) {
                    fileOutputStream.write(bArr, 0, read);
                } else {
                    inputStream.close();
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    MdotMLogger.i(this, "successfully finished writing");
                    z = true;
                    return true;
                }
            }
        } catch (FileNotFoundException e) {
            MdotMLogger.e(this, "FileNotfound exception while writting file " + e.getMessage());
            file.delete();
            return z;
        } catch (IOException e2) {
            file.delete();
            MdotMLogger.e(this, "IOException exception while writting file " + e2.getMessage());
            return z;
        }
    }
}
