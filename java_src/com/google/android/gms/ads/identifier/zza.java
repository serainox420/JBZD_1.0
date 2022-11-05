package com.google.android.gms.ads.identifier;

import android.util.Log;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
/* loaded from: classes2.dex */
public class zza {
    public void zzu(String str) {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            try {
                int responseCode = httpURLConnection.getResponseCode();
                if (responseCode < 200 || responseCode >= 300) {
                    Log.w("HttpUrlPinger", new StringBuilder(String.valueOf(str).length() + 65).append("Received non-success response code ").append(responseCode).append(" from pinging URL: ").append(str).toString());
                }
            } finally {
                httpURLConnection.disconnect();
            }
        } catch (IOException e) {
            e = e;
            String valueOf = String.valueOf(e.getMessage());
            Log.w("HttpUrlPinger", new StringBuilder(String.valueOf(str).length() + 27 + String.valueOf(valueOf).length()).append("Error while pinging URL: ").append(str).append(". ").append(valueOf).toString(), e);
        } catch (IndexOutOfBoundsException e2) {
            String valueOf2 = String.valueOf(e2.getMessage());
            Log.w("HttpUrlPinger", new StringBuilder(String.valueOf(str).length() + 32 + String.valueOf(valueOf2).length()).append("Error while parsing ping URL: ").append(str).append(". ").append(valueOf2).toString(), e2);
        } catch (RuntimeException e3) {
            e = e3;
            String valueOf3 = String.valueOf(e.getMessage());
            Log.w("HttpUrlPinger", new StringBuilder(String.valueOf(str).length() + 27 + String.valueOf(valueOf3).length()).append("Error while pinging URL: ").append(str).append(". ").append(valueOf3).toString(), e);
        }
    }
}
