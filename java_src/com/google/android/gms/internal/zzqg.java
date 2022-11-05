package com.google.android.gms.internal;

import com.google.android.gms.internal.zzqe;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
@zzme
/* loaded from: classes.dex */
public class zzqg implements zzqe.zza {
    private final String zzIA;

    public zzqg() {
        this(null);
    }

    public zzqg(String str) {
        this.zzIA = str;
    }

    @Override // com.google.android.gms.internal.zzqe.zza
    public void zzu(String str) {
        try {
            String valueOf = String.valueOf(str);
            zzqf.zzbf(valueOf.length() != 0 ? "Pinging URL: ".concat(valueOf) : new String("Pinging URL: "));
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            zzel.zzeT().zza(true, httpURLConnection, this.zzIA);
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode < 200 || responseCode >= 300) {
                zzqf.zzbh(new StringBuilder(String.valueOf(str).length() + 65).append("Received non-success response code ").append(responseCode).append(" from pinging URL: ").append(str).toString());
            }
            httpURLConnection.disconnect();
        } catch (IOException e) {
            String valueOf2 = String.valueOf(e.getMessage());
            zzqf.zzbh(new StringBuilder(String.valueOf(str).length() + 27 + String.valueOf(valueOf2).length()).append("Error while pinging URL: ").append(str).append(". ").append(valueOf2).toString());
        } catch (IndexOutOfBoundsException e2) {
            String valueOf3 = String.valueOf(e2.getMessage());
            zzqf.zzbh(new StringBuilder(String.valueOf(str).length() + 32 + String.valueOf(valueOf3).length()).append("Error while parsing ping URL: ").append(str).append(". ").append(valueOf3).toString());
        } catch (RuntimeException e3) {
            String valueOf4 = String.valueOf(e3.getMessage());
            zzqf.zzbh(new StringBuilder(String.valueOf(str).length() + 27 + String.valueOf(valueOf4).length()).append("Error while pinging URL: ").append(str).append(". ").append(valueOf4).toString());
        }
    }
}
