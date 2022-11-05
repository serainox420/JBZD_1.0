package com.google.android.gms.internal;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class zzaty extends zzauh {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public interface zza {
        void zza(String str, int i, Throwable th, byte[] bArr, Map<String, List<String>> map);
    }

    /* loaded from: classes2.dex */
    private static class zzb implements Runnable {
        private final int zzJO;
        private final String zzRg;
        private final Throwable zzZa;
        private final zza zzbsP;
        private final byte[] zzbsQ;
        private final Map<String, List<String>> zzbsR;

        private zzb(String str, zza zzaVar, int i, Throwable th, byte[] bArr, Map<String, List<String>> map) {
            com.google.android.gms.common.internal.zzac.zzw(zzaVar);
            this.zzbsP = zzaVar;
            this.zzJO = i;
            this.zzZa = th;
            this.zzbsQ = bArr;
            this.zzRg = str;
            this.zzbsR = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.zzbsP.zza(this.zzRg, this.zzJO, this.zzZa, this.zzbsQ, this.zzbsR);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class zzc implements Runnable {
        private final URL zzIe;
        private final String zzRg;
        private final byte[] zzaIQ;
        private final zza zzbsS;
        private final Map<String, String> zzbsT;

        public zzc(String str, URL url, byte[] bArr, Map<String, String> map, zza zzaVar) {
            com.google.android.gms.common.internal.zzac.zzdr(str);
            com.google.android.gms.common.internal.zzac.zzw(url);
            com.google.android.gms.common.internal.zzac.zzw(zzaVar);
            this.zzIe = url;
            this.zzaIQ = bArr;
            this.zzbsS = zzaVar;
            this.zzRg = str;
            this.zzbsT = map;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0045  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x00e8  */
        /* JADX WARN: Removed duplicated region for block: B:52:0x0040 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:54:0x00e3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            Throwable th;
            Map<String, List<String>> map;
            HttpURLConnection httpURLConnection;
            OutputStream outputStream;
            Map<String, List<String>> map2;
            int i;
            HttpURLConnection httpURLConnection2;
            zzaty.this.zzJX();
            int i2 = 0;
            try {
                httpURLConnection = zzaty.this.zzc(this.zzIe);
                try {
                    if (this.zzbsT != null) {
                        for (Map.Entry<String, String> entry : this.zzbsT.entrySet()) {
                            httpURLConnection.addRequestProperty(entry.getKey(), entry.getValue());
                        }
                    }
                    if (this.zzaIQ != null) {
                        byte[] zzk = zzaty.this.zzKh().zzk(this.zzaIQ);
                        zzaty.this.zzKl().zzMe().zzj("Uploading data. size", Integer.valueOf(zzk.length));
                        httpURLConnection.setDoOutput(true);
                        httpURLConnection.addRequestProperty("Content-Encoding", "gzip");
                        httpURLConnection.setFixedLengthStreamingMode(zzk.length);
                        httpURLConnection.connect();
                        outputStream = httpURLConnection.getOutputStream();
                        try {
                            outputStream.write(zzk);
                            outputStream.close();
                        } catch (IOException e) {
                            e = e;
                            map2 = null;
                            i = 0;
                            httpURLConnection2 = httpURLConnection;
                            if (outputStream != null) {
                            }
                            if (httpURLConnection2 != null) {
                            }
                            zzaty.this.zzKk().zzm(new zzb(this.zzRg, this.zzbsS, i, e, null, map2));
                        } catch (Throwable th2) {
                            th = th2;
                            map = null;
                            if (outputStream != null) {
                            }
                            if (httpURLConnection != null) {
                            }
                            zzaty.this.zzKk().zzm(new zzb(this.zzRg, this.zzbsS, i2, null, null, map));
                            throw th;
                        }
                    }
                    i2 = httpURLConnection.getResponseCode();
                    map = httpURLConnection.getHeaderFields();
                    try {
                        byte[] zzc = zzaty.this.zzc(httpURLConnection);
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        zzaty.this.zzKk().zzm(new zzb(this.zzRg, this.zzbsS, i2, null, zzc, map));
                    } catch (IOException e2) {
                        e = e2;
                        map2 = map;
                        i = i2;
                        outputStream = null;
                        httpURLConnection2 = httpURLConnection;
                        if (outputStream != null) {
                            try {
                                outputStream.close();
                            } catch (IOException e3) {
                                zzaty.this.zzKl().zzLY().zze("Error closing HTTP compressed POST connection output stream. appId", zzatx.zzfE(this.zzRg), e3);
                            }
                        }
                        if (httpURLConnection2 != null) {
                            httpURLConnection2.disconnect();
                        }
                        zzaty.this.zzKk().zzm(new zzb(this.zzRg, this.zzbsS, i, e, null, map2));
                    } catch (Throwable th3) {
                        th = th3;
                        outputStream = null;
                        if (outputStream != null) {
                            try {
                                outputStream.close();
                            } catch (IOException e4) {
                                zzaty.this.zzKl().zzLY().zze("Error closing HTTP compressed POST connection output stream. appId", zzatx.zzfE(this.zzRg), e4);
                            }
                        }
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        zzaty.this.zzKk().zzm(new zzb(this.zzRg, this.zzbsS, i2, null, null, map));
                        throw th;
                    }
                } catch (IOException e5) {
                    e = e5;
                    map2 = null;
                    i = i2;
                    outputStream = null;
                    httpURLConnection2 = httpURLConnection;
                } catch (Throwable th4) {
                    th = th4;
                    map = null;
                    outputStream = null;
                }
            } catch (IOException e6) {
                e = e6;
                map2 = null;
                i = 0;
                outputStream = null;
                httpURLConnection2 = null;
            } catch (Throwable th5) {
                th = th5;
                map = null;
                httpURLConnection = null;
                outputStream = null;
            }
        }
    }

    public zzaty(zzaue zzaueVar) {
        super(zzaueVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public byte[] zzc(HttpURLConnection httpURLConnection) throws IOException {
        InputStream inputStream = null;
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            inputStream = httpURLConnection.getInputStream();
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr);
                if (read <= 0) {
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, read);
            }
            return byteArrayOutputStream.toByteArray();
        } finally {
            if (inputStream != null) {
                inputStream.close();
            }
        }
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ void zzJV() {
        super.zzJV();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ void zzJW() {
        super.zzJW();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ void zzJX() {
        super.zzJX();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzatb zzJY() {
        return super.zzJY();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzatf zzJZ() {
        return super.zzJZ();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzauj zzKa() {
        return super.zzKa();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzatu zzKb() {
        return super.zzKb();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzatl zzKc() {
        return super.zzKc();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzaul zzKd() {
        return super.zzKd();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzauk zzKe() {
        return super.zzKe();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzatv zzKf() {
        return super.zzKf();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzatj zzKg() {
        return super.zzKg();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzaut zzKh() {
        return super.zzKh();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzauc zzKi() {
        return super.zzKi();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzaun zzKj() {
        return super.zzKj();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzaud zzKk() {
        return super.zzKk();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzatx zzKl() {
        return super.zzKl();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzaua zzKm() {
        return super.zzKm();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzati zzKn() {
        return super.zzKn();
    }

    public void zza(String str, URL url, Map<String, String> map, zza zzaVar) {
        zzmR();
        zzob();
        com.google.android.gms.common.internal.zzac.zzw(url);
        com.google.android.gms.common.internal.zzac.zzw(zzaVar);
        zzKk().zzn(new zzc(str, url, null, map, zzaVar));
    }

    public void zza(String str, URL url, byte[] bArr, Map<String, String> map, zza zzaVar) {
        zzmR();
        zzob();
        com.google.android.gms.common.internal.zzac.zzw(url);
        com.google.android.gms.common.internal.zzac.zzw(bArr);
        com.google.android.gms.common.internal.zzac.zzw(zzaVar);
        zzKk().zzn(new zzc(str, url, bArr, map, zzaVar));
    }

    protected HttpURLConnection zzc(URL url) throws IOException {
        URLConnection openConnection = url.openConnection();
        if (!(openConnection instanceof HttpURLConnection)) {
            throw new IOException("Failed to obtain HTTP connection");
        }
        HttpURLConnection httpURLConnection = (HttpURLConnection) openConnection;
        httpURLConnection.setDefaultUseCaches(false);
        zzKn().zzLd();
        httpURLConnection.setConnectTimeout(60000);
        zzKn().zzLe();
        httpURLConnection.setReadTimeout(61000);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setDoInput(true);
        return httpURLConnection;
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ void zzmR() {
        super.zzmR();
    }

    @Override // com.google.android.gms.internal.zzauh
    protected void zzmS() {
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ com.google.android.gms.common.util.zze zznR() {
        return super.zznR();
    }

    public boolean zzqa() {
        NetworkInfo networkInfo;
        zzob();
        try {
            networkInfo = ((ConnectivityManager) getContext().getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (SecurityException e) {
            networkInfo = null;
        }
        return networkInfo != null && networkInfo.isConnected();
    }
}
