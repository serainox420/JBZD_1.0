package com.google.android.gms.internal;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.zip.GZIPOutputStream;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class zztf extends zzsa {
    private static final byte[] zzagz = "\n".getBytes();
    private final String zzIA;
    private final zztj zzagy;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class zza {
        private int zzagA;
        private ByteArrayOutputStream zzagB = new ByteArrayOutputStream();

        public zza() {
        }

        public byte[] getPayload() {
            return this.zzagB.toByteArray();
        }

        public boolean zzj(zzsz zzszVar) {
            com.google.android.gms.common.internal.zzac.zzw(zzszVar);
            if (this.zzagA + 1 > zztf.this.zznT().zzph()) {
                return false;
            }
            String zza = zztf.this.zza(zzszVar, false);
            if (zza == null) {
                zztf.this.zznS().zza(zzszVar, "Error formatting hit");
                return true;
            }
            byte[] bytes = zza.getBytes();
            int length = bytes.length;
            if (length > zztf.this.zznT().zzoZ()) {
                zztf.this.zznS().zza(zzszVar, "Hit size exceeds the maximum size limit");
                return true;
            }
            if (this.zzagB.size() > 0) {
                length++;
            }
            if (length + this.zzagB.size() > zztf.this.zznT().zzpb()) {
                return false;
            }
            try {
                if (this.zzagB.size() > 0) {
                    this.zzagB.write(zztf.zzagz);
                }
                this.zzagB.write(bytes);
                this.zzagA++;
                return true;
            } catch (IOException e) {
                zztf.this.zze("Failed to write payload when batching hits", e);
                return true;
            }
        }

        public int zzqd() {
            return this.zzagA;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zztf(zzsc zzscVar) {
        super(zzscVar);
        this.zzIA = zza("GoogleAnalytics", zzsb.VERSION, Build.VERSION.RELEASE, zztm.zza(Locale.getDefault()), Build.MODEL, Build.ID);
        this.zzagy = new zztj(zzscVar.zznR());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:33:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0089 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v5, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r2v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int zza(URL url, byte[] bArr) {
        HttpURLConnection httpURLConnection;
        OutputStream outputStream = null;
        com.google.android.gms.common.internal.zzac.zzw(url);
        com.google.android.gms.common.internal.zzac.zzw(bArr);
        Integer valueOf = Integer.valueOf(bArr.length);
        zzb("POST bytes, url", valueOf, url);
        ?? r2 = valueOf;
        if (zzkI()) {
            String str = new String(bArr);
            zza("Post payload\n", str);
            r2 = str;
        }
        try {
            try {
                getContext().getPackageName();
                httpURLConnection = zzc(url);
                try {
                    httpURLConnection.setDoOutput(true);
                    httpURLConnection.setFixedLengthStreamingMode(bArr.length);
                    httpURLConnection.connect();
                    outputStream = httpURLConnection.getOutputStream();
                    outputStream.write(bArr);
                    zzb(httpURLConnection);
                    int responseCode = httpURLConnection.getResponseCode();
                    if (responseCode == 200) {
                        zzmA().zznP();
                    }
                    zzb("POST status", Integer.valueOf(responseCode));
                    if (outputStream != null) {
                        try {
                            outputStream.close();
                        } catch (IOException e) {
                            zze("Error closing http post connection output stream", e);
                        }
                    }
                    if (httpURLConnection == null) {
                        return responseCode;
                    }
                    httpURLConnection.disconnect();
                    return responseCode;
                } catch (IOException e2) {
                    e = e2;
                    zzd("Network POST connection error", e);
                    if (outputStream != null) {
                        try {
                            outputStream.close();
                        } catch (IOException e3) {
                            zze("Error closing http post connection output stream", e3);
                        }
                    }
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    return 0;
                }
            } catch (Throwable th) {
                th = th;
                if (0 != 0) {
                    try {
                        outputStream.close();
                    } catch (IOException e4) {
                        zze("Error closing http post connection output stream", e4);
                    }
                }
                if (r2 != 0) {
                    r2.disconnect();
                }
                throw th;
            }
        } catch (IOException e5) {
            e = e5;
            httpURLConnection = null;
        } catch (Throwable th2) {
            th = th2;
            r2 = 0;
            if (0 != 0) {
            }
            if (r2 != 0) {
            }
            throw th;
        }
    }

    private static String zza(String str, String str2, String str3, String str4, String str5, String str6) {
        return String.format("%s/%s (Linux; U; Android %s; %s; %s Build/%s)", str, str2, str3, str4, str5, str6);
    }

    private void zza(StringBuilder sb, String str, String str2) throws UnsupportedEncodingException {
        if (sb.length() != 0) {
            sb.append('&');
        }
        sb.append(URLEncoder.encode(str, "UTF-8"));
        sb.append('=');
        sb.append(URLEncoder.encode(str2, "UTF-8"));
    }

    private int zzb(URL url) {
        com.google.android.gms.common.internal.zzac.zzw(url);
        zzb("GET request", url);
        HttpURLConnection httpURLConnection = null;
        try {
            try {
                httpURLConnection = zzc(url);
                httpURLConnection.connect();
                zzb(httpURLConnection);
                int responseCode = httpURLConnection.getResponseCode();
                if (responseCode == 200) {
                    zzmA().zznP();
                }
                zzb("GET status", Integer.valueOf(responseCode));
                if (httpURLConnection == null) {
                    return responseCode;
                }
                httpURLConnection.disconnect();
                return responseCode;
            } catch (IOException e) {
                zzd("Network GET connection error", e);
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                return 0;
            }
        } catch (Throwable th) {
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00c0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int zzb(URL url, byte[] bArr) {
        HttpURLConnection httpURLConnection;
        HttpURLConnection httpURLConnection2;
        OutputStream outputStream;
        OutputStream outputStream2 = null;
        com.google.android.gms.common.internal.zzac.zzw(url);
        com.google.android.gms.common.internal.zzac.zzw(bArr);
        try {
            getContext().getPackageName();
            byte[] zzk = zzk(bArr);
            zza("POST compressed size, ratio %, url", Integer.valueOf(zzk.length), Long.valueOf((100 * zzk.length) / bArr.length), url);
            if (zzk.length > bArr.length) {
                zzc("Compressed payload is larger then uncompressed. compressed, uncompressed", Integer.valueOf(zzk.length), Integer.valueOf(bArr.length));
            }
            if (zzkI()) {
                String valueOf = String.valueOf(new String(bArr));
                zza("Post payload", valueOf.length() != 0 ? "\n".concat(valueOf) : new String("\n"));
            }
            httpURLConnection = zzc(url);
            try {
                httpURLConnection.setDoOutput(true);
                httpURLConnection.addRequestProperty("Content-Encoding", "gzip");
                httpURLConnection.setFixedLengthStreamingMode(zzk.length);
                httpURLConnection.connect();
                outputStream = httpURLConnection.getOutputStream();
            } catch (IOException e) {
                e = e;
                httpURLConnection2 = httpURLConnection;
            } catch (Throwable th) {
                th = th;
            }
            try {
                outputStream.write(zzk);
                outputStream.close();
                zzb(httpURLConnection);
                int responseCode = httpURLConnection.getResponseCode();
                if (responseCode == 200) {
                    zzmA().zznP();
                }
                zzb("POST status", Integer.valueOf(responseCode));
                if (httpURLConnection == null) {
                    return responseCode;
                }
                httpURLConnection.disconnect();
                return responseCode;
            } catch (IOException e2) {
                e = e2;
                outputStream2 = outputStream;
                httpURLConnection2 = httpURLConnection;
                try {
                    zzd("Network compressed POST connection error", e);
                    if (outputStream2 != null) {
                        try {
                            outputStream2.close();
                        } catch (IOException e3) {
                            zze("Error closing http compressed post connection output stream", e3);
                        }
                    }
                    if (httpURLConnection2 != null) {
                        httpURLConnection2.disconnect();
                    }
                    return 0;
                } catch (Throwable th2) {
                    th = th2;
                    httpURLConnection = httpURLConnection2;
                    if (outputStream2 != null) {
                        try {
                            outputStream2.close();
                        } catch (IOException e4) {
                            zze("Error closing http compressed post connection output stream", e4);
                        }
                    }
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                outputStream2 = outputStream;
                if (outputStream2 != null) {
                }
                if (httpURLConnection != null) {
                }
                throw th;
            }
        } catch (IOException e5) {
            e = e5;
            httpURLConnection2 = null;
        } catch (Throwable th4) {
            th = th4;
            httpURLConnection = null;
        }
    }

    private URL zzb(zzsz zzszVar, String str) {
        String sb;
        if (zzszVar.zzpS()) {
            String valueOf = String.valueOf(zznT().zzpj());
            String valueOf2 = String.valueOf(zznT().zzpl());
            sb = new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(valueOf2).length() + String.valueOf(str).length()).append(valueOf).append(valueOf2).append("?").append(str).toString();
        } else {
            String valueOf3 = String.valueOf(zznT().zzpk());
            String valueOf4 = String.valueOf(zznT().zzpl());
            sb = new StringBuilder(String.valueOf(valueOf3).length() + 1 + String.valueOf(valueOf4).length() + String.valueOf(str).length()).append(valueOf3).append(valueOf4).append("?").append(str).toString();
        }
        try {
            return new URL(sb);
        } catch (MalformedURLException e) {
            zze("Error trying to parse the hardcoded host url", e);
            return null;
        }
    }

    private void zzb(HttpURLConnection httpURLConnection) throws IOException {
        InputStream inputStream = null;
        try {
            inputStream = httpURLConnection.getInputStream();
            do {
            } while (inputStream.read(new byte[1024]) > 0);
            if (inputStream == null) {
                return;
            }
            try {
                inputStream.close();
            } catch (IOException e) {
                zze("Error closing http connection input stream", e);
            }
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e2) {
                    zze("Error closing http connection input stream", e2);
                }
            }
            throw th;
        }
    }

    private boolean zzg(zzsz zzszVar) {
        com.google.android.gms.common.internal.zzac.zzw(zzszVar);
        String zza2 = zza(zzszVar, !zzszVar.zzpS());
        if (zza2 == null) {
            zznS().zza(zzszVar, "Error formatting hit for upload");
            return true;
        } else if (zza2.length() <= zznT().zzoY()) {
            URL zzb = zzb(zzszVar, zza2);
            if (zzb != null) {
                return zzb(zzb) == 200;
            }
            zzbT("Failed to build collect GET endpoint url");
            return false;
        } else {
            String zza3 = zza(zzszVar, false);
            if (zza3 == null) {
                zznS().zza(zzszVar, "Error formatting hit for POST upload");
                return true;
            }
            byte[] bytes = zza3.getBytes();
            if (bytes.length > zznT().zzpa()) {
                zznS().zza(zzszVar, "Hit payload exceeds size limit");
                return true;
            }
            URL zzh = zzh(zzszVar);
            if (zzh != null) {
                return zza(zzh, bytes) == 200;
            }
            zzbT("Failed to build collect POST endpoint url");
            return false;
        }
    }

    private URL zzh(zzsz zzszVar) {
        String concat;
        if (zzszVar.zzpS()) {
            String valueOf = String.valueOf(zznT().zzpj());
            String valueOf2 = String.valueOf(zznT().zzpl());
            concat = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
        } else {
            String valueOf3 = String.valueOf(zznT().zzpk());
            String valueOf4 = String.valueOf(zznT().zzpl());
            concat = valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3);
        }
        try {
            return new URL(concat);
        } catch (MalformedURLException e) {
            zze("Error trying to parse the hardcoded host url", e);
            return null;
        }
    }

    private String zzi(zzsz zzszVar) {
        return String.valueOf(zzszVar.zzpP());
    }

    private static byte[] zzk(byte[] bArr) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
        gZIPOutputStream.write(bArr);
        gZIPOutputStream.close();
        byteArrayOutputStream.close();
        return byteArrayOutputStream.toByteArray();
    }

    private URL zzqb() {
        String valueOf = String.valueOf(zznT().zzpj());
        String valueOf2 = String.valueOf(zznT().zzpm());
        try {
            return new URL(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
        } catch (MalformedURLException e) {
            zze("Error trying to parse the hardcoded host url", e);
            return null;
        }
    }

    String zza(zzsz zzszVar, boolean z) {
        com.google.android.gms.common.internal.zzac.zzw(zzszVar);
        StringBuilder sb = new StringBuilder();
        try {
            for (Map.Entry<String, String> entry : zzszVar.zzfE().entrySet()) {
                String key = entry.getKey();
                if (!"ht".equals(key) && !"qt".equals(key) && !"AppUID".equals(key) && !"z".equals(key) && !"_gmsv".equals(key)) {
                    zza(sb, key, entry.getValue());
                }
            }
            zza(sb, "ht", String.valueOf(zzszVar.zzpQ()));
            zza(sb, "qt", String.valueOf(zznR().currentTimeMillis() - zzszVar.zzpQ()));
            if (z) {
                long zzpT = zzszVar.zzpT();
                zza(sb, "z", zzpT != 0 ? String.valueOf(zzpT) : zzi(zzszVar));
            }
            return sb.toString();
        } catch (UnsupportedEncodingException e) {
            zze("Failed to encode name or value", e);
            return null;
        }
    }

    List<Long> zza(List<zzsz> list, boolean z) {
        com.google.android.gms.common.internal.zzac.zzax(!list.isEmpty());
        zza("Uploading batched hits. compression, count", Boolean.valueOf(z), Integer.valueOf(list.size()));
        zza zzaVar = new zza();
        ArrayList arrayList = new ArrayList();
        for (zzsz zzszVar : list) {
            if (!zzaVar.zzj(zzszVar)) {
                break;
            }
            arrayList.add(Long.valueOf(zzszVar.zzpP()));
        }
        if (zzaVar.zzqd() == 0) {
            return arrayList;
        }
        URL zzqb = zzqb();
        if (zzqb == null) {
            zzbT("Failed to build batching endpoint url");
            return Collections.emptyList();
        }
        int zzb = z ? zzb(zzqb, zzaVar.getPayload()) : zza(zzqb, zzaVar.getPayload());
        if (200 == zzb) {
            zza("Batched upload completed. Hits batched", Integer.valueOf(zzaVar.zzqd()));
            return arrayList;
        }
        zza("Network error uploading hits. status code", Integer.valueOf(zzb));
        if (zznT().zzpp().contains(Integer.valueOf(zzb))) {
            zzbS("Server instructed the client to stop batching");
            this.zzagy.start();
        }
        return Collections.emptyList();
    }

    HttpURLConnection zzc(URL url) throws IOException {
        URLConnection openConnection = url.openConnection();
        if (!(openConnection instanceof HttpURLConnection)) {
            throw new IOException("Failed to obtain http connection");
        }
        HttpURLConnection httpURLConnection = (HttpURLConnection) openConnection;
        httpURLConnection.setDefaultUseCaches(false);
        httpURLConnection.setConnectTimeout(zznT().zzpw());
        httpURLConnection.setReadTimeout(zznT().zzpx());
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setRequestProperty("User-Agent", this.zzIA);
        httpURLConnection.setDoInput(true);
        return httpURLConnection;
    }

    @Override // com.google.android.gms.internal.zzsa
    protected void zzmS() {
        zza("Network initialized. User agent", this.zzIA);
    }

    public boolean zzqa() {
        NetworkInfo networkInfo;
        zzmR();
        zzob();
        try {
            networkInfo = ((ConnectivityManager) getContext().getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (SecurityException e) {
            networkInfo = null;
        }
        if (networkInfo == null || !networkInfo.isConnected()) {
            zzbP("No network connectivity");
            return false;
        }
        return true;
    }

    public List<Long> zzt(List<zzsz> list) {
        boolean z;
        boolean z2 = true;
        zzmR();
        zzob();
        com.google.android.gms.common.internal.zzac.zzw(list);
        if (zznT().zzpp().isEmpty() || !this.zzagy.zzA(zznT().zzpi() * 1000)) {
            z2 = false;
            z = false;
        } else {
            z = zznT().zzpn() != zzsj.NONE;
            if (zznT().zzpo() != zzsm.GZIP) {
                z2 = false;
            }
        }
        return z ? zza(list, z2) : zzu(list);
    }

    List<Long> zzu(List<zzsz> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (zzsz zzszVar : list) {
            if (!zzg(zzszVar)) {
                break;
            }
            arrayList.add(Long.valueOf(zzszVar.zzpP()));
            if (arrayList.size() >= zznT().zzpg()) {
                break;
            }
        }
        return arrayList;
    }
}
