package com.google.android.gms.internal;

import android.os.SystemClock;
import com.google.android.gms.internal.zzb;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.impl.cookie.DateUtils;
/* loaded from: classes2.dex */
public class zzu implements zzg {
    protected static final boolean DEBUG = zzt.DEBUG;
    private static int zzan = 3000;
    private static int zzao = 4096;
    protected final zzz zzap;
    protected final zzv zzaq;

    public zzu(zzz zzzVar) {
        this(zzzVar, new zzv(zzao));
    }

    public zzu(zzz zzzVar, zzv zzvVar) {
        this.zzap = zzzVar;
        this.zzaq = zzvVar;
    }

    protected static Map<String, String> zza(Header[] headerArr) {
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        for (int i = 0; i < headerArr.length; i++) {
            treeMap.put(headerArr[i].getName(), headerArr[i].getValue());
        }
        return treeMap;
    }

    private void zza(long j, zzl<?> zzlVar, byte[] bArr, StatusLine statusLine) {
        if (DEBUG || j > zzan) {
            Object[] objArr = new Object[5];
            objArr[0] = zzlVar;
            objArr[1] = Long.valueOf(j);
            objArr[2] = bArr != null ? Integer.valueOf(bArr.length) : "null";
            objArr[3] = Integer.valueOf(statusLine.getStatusCode());
            objArr[4] = Integer.valueOf(zzlVar.zzq().zzd());
            zzt.zzb("HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]", objArr);
        }
    }

    private static void zza(String str, zzl<?> zzlVar, zzs zzsVar) throws zzs {
        zzp zzq = zzlVar.zzq();
        int zzp = zzlVar.zzp();
        try {
            zzq.zza(zzsVar);
            zzlVar.zzc(String.format("%s-retry [timeout=%s]", str, Integer.valueOf(zzp)));
        } catch (zzs e) {
            zzlVar.zzc(String.format("%s-timeout-giveup [timeout=%s]", str, Integer.valueOf(zzp)));
            throw e;
        }
    }

    private void zza(Map<String, String> map, zzb.zza zzaVar) {
        if (zzaVar == null) {
            return;
        }
        if (zzaVar.zza != null) {
            map.put("If-None-Match", zzaVar.zza);
        }
        if (zzaVar.zzc <= 0) {
            return;
        }
        map.put("If-Modified-Since", DateUtils.formatDate(new Date(zzaVar.zzc)));
    }

    private byte[] zza(HttpEntity httpEntity) throws IOException, zzq {
        zzab zzabVar = new zzab(this.zzaq, (int) httpEntity.getContentLength());
        try {
            InputStream content = httpEntity.getContent();
            if (content == null) {
                throw new zzq();
            }
            byte[] zzb = this.zzaq.zzb(1024);
            while (true) {
                int read = content.read(zzb);
                if (read == -1) {
                    break;
                }
                zzabVar.write(zzb, 0, read);
            }
            byte[] byteArray = zzabVar.toByteArray();
            try {
                httpEntity.consumeContent();
            } catch (IOException e) {
                zzt.zza("Error occured when calling consumingContent", new Object[0]);
            }
            this.zzaq.zza(zzb);
            zzabVar.close();
            return byteArray;
        } catch (Throwable th) {
            try {
                httpEntity.consumeContent();
            } catch (IOException e2) {
                zzt.zza("Error occured when calling consumingContent", new Object[0]);
            }
            this.zzaq.zza(null);
            zzabVar.close();
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.zzg
    public zzj zza(zzl<?> zzlVar) throws zzs {
        byte[] bArr;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        while (true) {
            HttpResponse httpResponse = null;
            Map<String, String> emptyMap = Collections.emptyMap();
            try {
                try {
                    HashMap hashMap = new HashMap();
                    zza(hashMap, zzlVar.zzh());
                    HttpResponse zza = this.zzap.zza(zzlVar, hashMap);
                    try {
                        StatusLine statusLine = zza.getStatusLine();
                        int statusCode = statusLine.getStatusCode();
                        emptyMap = zza(zza.getAllHeaders());
                        if (statusCode == 304) {
                            zzb.zza zzh = zzlVar.zzh();
                            if (zzh == null) {
                                return new zzj(304, null, emptyMap, true, SystemClock.elapsedRealtime() - elapsedRealtime);
                            }
                            zzh.zzf.putAll(emptyMap);
                            return new zzj(304, zzh.data, zzh.zzf, true, SystemClock.elapsedRealtime() - elapsedRealtime);
                        }
                        byte[] zza2 = zza.getEntity() != null ? zza(zza.getEntity()) : new byte[0];
                        try {
                            zza(SystemClock.elapsedRealtime() - elapsedRealtime, zzlVar, zza2, statusLine);
                            if (statusCode >= 200 && statusCode <= 299) {
                                return new zzj(statusCode, zza2, emptyMap, false, SystemClock.elapsedRealtime() - elapsedRealtime);
                            }
                            throw new IOException();
                        } catch (IOException e) {
                            e = e;
                            bArr = zza2;
                            httpResponse = zza;
                            if (httpResponse == null) {
                                throw new zzk(e);
                            }
                            int statusCode2 = httpResponse.getStatusLine().getStatusCode();
                            zzt.zzc("Unexpected response code %d for %s", Integer.valueOf(statusCode2), zzlVar.getUrl());
                            if (bArr != null) {
                                zzj zzjVar = new zzj(statusCode2, bArr, emptyMap, false, SystemClock.elapsedRealtime() - elapsedRealtime);
                                if (statusCode2 != 401 && statusCode2 != 403) {
                                    if (statusCode2 >= 400 && statusCode2 <= 499) {
                                        throw new zzd(zzjVar);
                                    }
                                    if (statusCode2 >= 500 && statusCode2 <= 599) {
                                        throw new zzq(zzjVar);
                                    }
                                    throw new zzq(zzjVar);
                                }
                                zza("auth", zzlVar, new zza(zzjVar));
                            } else {
                                zza("network", zzlVar, new zzi());
                            }
                        }
                    } catch (IOException e2) {
                        e = e2;
                        bArr = null;
                        httpResponse = zza;
                    }
                } catch (IOException e3) {
                    e = e3;
                    bArr = null;
                }
            } catch (MalformedURLException e4) {
                throw new RuntimeException("Bad URL " + zzlVar.getUrl(), e4);
            } catch (SocketTimeoutException e5) {
                zza("socket", zzlVar, new zzr());
            } catch (ConnectTimeoutException e6) {
                zza("connection", zzlVar, new zzr());
            }
        }
    }
}
