package com.google.android.gms.internal;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.List;
import java.util.Locale;
import java.util.Map;
/* loaded from: classes2.dex */
class zzbci implements zzbbh {
    private final Context mContext;
    private final String zzIA;
    private final zzb zzbKA;
    private final zza zzbKB;

    /* loaded from: classes2.dex */
    public interface zza {
        void zza(zzbbl zzbblVar);

        void zzb(zzbbl zzbblVar);

        void zzc(zzbbl zzbblVar);
    }

    /* loaded from: classes2.dex */
    interface zzb {
        HttpURLConnection zzd(URL url) throws IOException;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbci(Context context, zza zzaVar) {
        this(new zzb() { // from class: com.google.android.gms.internal.zzbci.1
            @Override // com.google.android.gms.internal.zzbci.zzb
            public HttpURLConnection zzd(URL url) throws IOException {
                return (HttpURLConnection) url.openConnection();
            }
        }, context, zzaVar);
    }

    zzbci(zzb zzbVar, Context context, zza zzaVar) {
        this.zzbKA = zzbVar;
        this.mContext = context.getApplicationContext();
        this.zzbKB = zzaVar;
        this.zzIA = zza("GoogleTagManager", "5.04", Build.VERSION.RELEASE, zzc(Locale.getDefault()), Build.MODEL, Build.ID);
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

    /* JADX WARN: Removed duplicated region for block: B:23:0x0077 A[Catch: IOException -> 0x007e, TRY_ENTER, TryCatch #6 {IOException -> 0x007e, blocks: (B:31:0x00f1, B:42:0x012b, B:86:0x0225, B:87:0x0228, B:23:0x0077, B:24:0x007a, B:25:0x007d), top: B:116:0x00f1 }] */
    @Override // com.google.android.gms.internal.zzbbh
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void zzP(List<zzbbl> list) {
        boolean z;
        boolean z2;
        Throwable th;
        InputStream inputStream;
        BufferedReader bufferedReader;
        int min = Math.min(list.size(), 40);
        boolean z3 = true;
        int i = 0;
        while (i < min) {
            zzbbl zzbblVar = list.get(i);
            URL zzd = zzd(zzbblVar);
            String zzRY = zzbblVar.zzRY();
            Map<String, String> zzRZ = zzbblVar.zzRZ();
            String zzSa = zzbblVar.zzSa();
            if (zzd == null) {
                zzbbu.zzbh("No destination: discarding hit.");
                this.zzbKB.zzb(zzbblVar);
                z = z3;
            } else {
                InputStream inputStream2 = null;
                try {
                    HttpURLConnection zzd2 = this.zzbKA.zzd(zzd);
                    if (z3) {
                        try {
                            zzbbw.zzcc(this.mContext);
                            z2 = false;
                        } catch (Throwable th2) {
                            z2 = z3;
                            th = th2;
                            inputStream = null;
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            zzd2.disconnect();
                            throw th;
                        }
                    } else {
                        z2 = z3;
                    }
                    try {
                        zzd2.setRequestProperty("User-Agent", this.zzIA);
                        if (zzRZ != null) {
                            for (Map.Entry<String, String> entry : zzRZ.entrySet()) {
                                zzd2.setRequestProperty(entry.getKey(), entry.getValue());
                            }
                        }
                        if (zzRY == null) {
                            zzbbu.zzbh(String.format("Hit %d retrieved from the store has null HTTP method.", Long.valueOf(zzbblVar.zzQN())));
                            this.zzbKB.zzb(zzbblVar);
                            try {
                                zzd2.disconnect();
                                z = z2;
                            } catch (IOException e) {
                                e = e;
                                z3 = z2;
                                String valueOf = String.valueOf(zzd);
                                String valueOf2 = String.valueOf(e.getClass().getSimpleName());
                                zzbbu.zzbh(new StringBuilder(String.valueOf(valueOf).length() + 27 + String.valueOf(valueOf2).length()).append("Exception sending hit to ").append(valueOf).append(": ").append(valueOf2).toString());
                                zzbbu.zzbh(e.getMessage());
                                this.zzbKB.zzc(zzbblVar);
                                z = z3;
                                i++;
                                z3 = z;
                            }
                        } else if (zzRY.equals("GET") || zzRY.equals("HEAD") || zzRY.equals("POST") || zzRY.equals("PUT")) {
                            char c = 65535;
                            switch (zzRY.hashCode()) {
                                case 70454:
                                    if (zzRY.equals("GET")) {
                                        c = 0;
                                        break;
                                    }
                                    break;
                                case 79599:
                                    if (zzRY.equals("PUT")) {
                                        c = 3;
                                        break;
                                    }
                                    break;
                                case 2213344:
                                    if (zzRY.equals("HEAD")) {
                                        c = 1;
                                        break;
                                    }
                                    break;
                                case 2461856:
                                    if (zzRY.equals("POST")) {
                                        c = 2;
                                        break;
                                    }
                                    break;
                            }
                            switch (c) {
                                case 0:
                                case 1:
                                    if (zzSa != null) {
                                        zzbbu.zzbh(String.format("Body of %s hit is ignored: %s.", zzRY, zzSa));
                                    }
                                    zzd2.setRequestMethod(zzRY);
                                    break;
                                case 2:
                                case 3:
                                    zzd2.setRequestMethod(zzRY);
                                    if (zzSa != null) {
                                        zzd2.setDoOutput(true);
                                        byte[] bytes = zzSa.getBytes(Charset.forName("UTF-8"));
                                        zzd2.setFixedLengthStreamingMode(bytes.length);
                                        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(zzd2.getOutputStream());
                                        bufferedOutputStream.write(bytes);
                                        bufferedOutputStream.flush();
                                        bufferedOutputStream.close();
                                        break;
                                    }
                                    break;
                            }
                            int responseCode = zzd2.getResponseCode();
                            if (responseCode != 200) {
                                String valueOf3 = String.valueOf(zzd);
                                zzbbu.zzbh(new StringBuilder(String.valueOf(valueOf3).length() + 39).append("Bad response received for ").append(valueOf3).append(": ").append(responseCode).toString());
                                StringBuilder sb = new StringBuilder();
                                try {
                                    bufferedReader = new BufferedReader(new InputStreamReader(zzd2.getErrorStream()));
                                    while (true) {
                                        try {
                                            String readLine = bufferedReader.readLine();
                                            if (readLine != null) {
                                                sb.append(readLine);
                                            } else {
                                                String valueOf4 = String.valueOf(sb.toString());
                                                zzbbu.zzbh(valueOf4.length() != 0 ? "Error Message: ".concat(valueOf4) : new String("Error Message: "));
                                                bufferedReader.close();
                                                this.zzbKB.zzc(zzbblVar);
                                            }
                                        } catch (Throwable th3) {
                                            th = th3;
                                            if (bufferedReader != null) {
                                                bufferedReader.close();
                                            }
                                            throw th;
                                        }
                                    }
                                } catch (Throwable th4) {
                                    th = th4;
                                    bufferedReader = null;
                                }
                            } else {
                                inputStream = zzd2.getInputStream();
                                try {
                                    String valueOf5 = String.valueOf(zzd);
                                    zzbbu.v(new StringBuilder(String.valueOf(valueOf5).length() + 23 + String.valueOf(zzRY).length()).append("Hit sent to ").append(valueOf5).append("(method = ").append(zzRY).append(")").toString());
                                    this.zzbKB.zza(zzbblVar);
                                    inputStream2 = inputStream;
                                } catch (Throwable th5) {
                                    th = th5;
                                    if (inputStream != null) {
                                    }
                                    zzd2.disconnect();
                                    throw th;
                                }
                            }
                            if (inputStream2 != null) {
                                inputStream2.close();
                            }
                            zzd2.disconnect();
                            z = z2;
                        } else {
                            zzbbu.zzbh(String.format("Unrecongnized HTTP method %s. Supported methods are GET, HEAD, PUT and/or POST", zzRY));
                            this.zzbKB.zzb(zzbblVar);
                            zzd2.disconnect();
                            z = z2;
                        }
                    } catch (Throwable th6) {
                        th = th6;
                        inputStream = null;
                    }
                } catch (IOException e2) {
                    e = e2;
                }
            }
            i++;
            z3 = z;
        }
    }

    @Override // com.google.android.gms.internal.zzbbh
    public boolean zzQF() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.mContext.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            zzbbu.v("...no network connectivity");
            return false;
        }
        return true;
    }

    String zza(String str, String str2, String str3, String str4, String str5, String str6) {
        return String.format("%s/%s (Linux; U; Android %s; %s; %s Build/%s)", str, str2, str3, str4, str5, str6);
    }

    URL zzd(zzbbl zzbblVar) {
        try {
            return new URL(zzbblVar.zzQP());
        } catch (MalformedURLException e) {
            zzbbu.e("Error trying to parse the GTM url.");
            return null;
        }
    }
}
