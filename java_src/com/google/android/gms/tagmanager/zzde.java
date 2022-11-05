package com.google.android.gms.tagmanager;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;
import java.util.Locale;
/* loaded from: classes2.dex */
class zzde implements zzad {
    private final Context mContext;
    private final String zzIA;
    private final zzb zzbIp;
    private final zza zzbIq;

    /* loaded from: classes2.dex */
    public interface zza {
        void zza(zzas zzasVar);

        void zzb(zzas zzasVar);

        void zzc(zzas zzasVar);
    }

    /* loaded from: classes2.dex */
    interface zzb {
        HttpURLConnection zzd(URL url) throws IOException;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzde(Context context, zza zzaVar) {
        this(new zzb() { // from class: com.google.android.gms.tagmanager.zzde.1
            @Override // com.google.android.gms.tagmanager.zzde.zzb
            public HttpURLConnection zzd(URL url) throws IOException {
                return (HttpURLConnection) url.openConnection();
            }
        }, context, zzaVar);
    }

    zzde(zzb zzbVar, Context context, zza zzaVar) {
        this.zzbIp = zzbVar;
        this.mContext = context.getApplicationContext();
        this.zzbIq = zzaVar;
        this.zzIA = zza("GoogleTagManager", "4.00", Build.VERSION.RELEASE, zzc(Locale.getDefault()), Build.MODEL, Build.ID);
    }

    static String zzc(Locale locale) {
        if (locale == null || locale.getLanguage() == null || locale.getLanguage().length() == 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(locale.getLanguage().toLowerCase());
        if (locale.getCountry() != null && locale.getCountry().length() != 0) {
            sb.append("-").append(locale.getCountry().toLowerCase());
        }
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x0081 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.google.android.gms.tagmanager.zzad
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void zzP(List<zzas> list) {
        IOException iOException;
        boolean z;
        boolean z2;
        InputStream inputStream;
        boolean z3;
        Throwable th;
        int min = Math.min(list.size(), 40);
        boolean z4 = true;
        int i = 0;
        while (i < min) {
            zzas zzasVar = list.get(i);
            URL zzd = zzd(zzasVar);
            if (zzd == null) {
                zzbo.zzbh("No destination: discarding hit.");
                this.zzbIq.zzb(zzasVar);
                z2 = z4;
            } else {
                try {
                    HttpURLConnection zzd2 = this.zzbIp.zzd(zzd);
                    if (z4) {
                        try {
                            zzbt.zzcc(this.mContext);
                            z4 = false;
                        } catch (Throwable th2) {
                            inputStream = null;
                            z3 = z4;
                            th = th2;
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (IOException e) {
                                    z = z3;
                                    iOException = e;
                                    String valueOf = String.valueOf(iOException.getClass().getSimpleName());
                                    zzbo.zzbh(valueOf.length() != 0 ? "Exception sending hit: ".concat(valueOf) : new String("Exception sending hit: "));
                                    zzbo.zzbh(iOException.getMessage());
                                    this.zzbIq.zzc(zzasVar);
                                    z2 = z;
                                    i++;
                                    z4 = z2;
                                }
                            }
                            zzd2.disconnect();
                            throw th;
                            break;
                        }
                    }
                    zzd2.setRequestProperty("User-Agent", this.zzIA);
                    int responseCode = zzd2.getResponseCode();
                    InputStream inputStream2 = zzd2.getInputStream();
                    if (responseCode != 200) {
                        try {
                            zzbo.zzbh(new StringBuilder(25).append("Bad response: ").append(responseCode).toString());
                            this.zzbIq.zzc(zzasVar);
                        } catch (Throwable th3) {
                            inputStream = inputStream2;
                            z3 = z4;
                            th = th3;
                            if (inputStream != null) {
                            }
                            zzd2.disconnect();
                            throw th;
                            break;
                            break;
                        }
                    } else {
                        this.zzbIq.zza(zzasVar);
                    }
                    if (inputStream2 != null) {
                        inputStream2.close();
                    }
                    zzd2.disconnect();
                    z2 = z4;
                } catch (IOException e2) {
                    iOException = e2;
                    z = z4;
                }
            }
            i++;
            z4 = z2;
        }
    }

    @Override // com.google.android.gms.tagmanager.zzad
    public boolean zzQF() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.mContext.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            zzbo.v("...no network connectivity");
            return false;
        }
        return true;
    }

    String zza(String str, String str2, String str3, String str4, String str5, String str6) {
        return String.format("%s/%s (Linux; U; Android %s; %s; %s Build/%s)", str, str2, str3, str4, str5, str6);
    }

    URL zzd(zzas zzasVar) {
        try {
            return new URL(zzasVar.zzQP());
        } catch (MalformedURLException e) {
            zzbo.e("Error trying to parse the GTM url.");
            return null;
        }
    }
}
