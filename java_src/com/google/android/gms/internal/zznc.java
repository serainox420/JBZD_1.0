package com.google.android.gms.internal;

import android.content.Context;
import android.location.Location;
import android.net.ConnectivityManager;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.internal.zzji;
import com.google.android.gms.internal.zzmt;
import com.google.android.gms.internal.zznm;
import com.google.android.gms.internal.zzqp;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;
import org.json.JSONObject;
@zzme
/* loaded from: classes.dex */
public final class zznc extends zzmt.zza {
    private static zznc zzTv;
    private static final Object zztX = new Object();
    private final Context mContext;
    private final zznb zzTw;
    private final zzfw zzTx;
    private final zzji zzTy;

    zznc(Context context, zzfw zzfwVar, zznb zznbVar) {
        this.mContext = context;
        this.zzTw = zznbVar;
        this.zzTx = zzfwVar;
        this.zzTy = new zzji(context.getApplicationContext() != null ? context.getApplicationContext() : context, zzqh.zzlk(), zzfwVar.zzfq(), new zzpt<zzjf>(this) { // from class: com.google.android.gms.internal.zznc.4
            @Override // com.google.android.gms.internal.zzpt
            /* renamed from: zza */
            public void zzd(zzjf zzjfVar) {
                zzjfVar.zza("/log", zzic.zzHL);
            }
        }, new zzji.zzb());
    }

    private static zzmn zza(final Context context, final zzji zzjiVar, zzfw zzfwVar, final zznb zznbVar, final zzmk zzmkVar) {
        Bundle bundle;
        zzqm zzqmVar;
        String str;
        String string;
        zzpk.zzbf("Starting ad request from service using: AFMA_getAd");
        zzgd.initialize(context);
        final zzgl zzglVar = new zzgl(zzgd.zzBZ.get().booleanValue(), "load_ad", zzmkVar.zzvr.zzzy);
        if (zzmkVar.versionCode > 10 && zzmkVar.zzRO != -1) {
            zzglVar.zza(zzglVar.zzc(zzmkVar.zzRO), "cts");
        }
        zzgj zzfB = zzglVar.zzfB();
        zzqm<Bundle> zzt = zznbVar.zzTt.zzt(context);
        Future<zznm.zza> zzB = zznbVar.zzTs.zzB(context);
        Future<String> zzaS = zznbVar.zzTn.zzaS(zzmkVar.zzRz.packageName);
        zzqm<String> zzg = zznbVar.zzTu.zzg(zzmkVar);
        Future<zzni> zzA = com.google.android.gms.ads.internal.zzw.zzcV().zzA(context);
        zzqk zzqkVar = new zzqk(null);
        Bundle bundle2 = zzmkVar.zzRy.extras;
        zzqk zza = (!zzmkVar.zzRV || (bundle2 != null && bundle2.getString("_ad") != null)) ? zzqkVar : zznbVar.zzTq.zza(zzmkVar.applicationInfo);
        zzqk zzG = zzgd.zzCS.get().booleanValue() ? zznbVar.zzTu.zzG(context) : new zzqk(null);
        final Bundle bundle3 = (zzmkVar.versionCode < 4 || zzmkVar.zzRF == null) ? null : zzmkVar.zzRF;
        if (!zzgd.zzCp.get().booleanValue() || zznbVar.zzTl == null) {
            bundle = bundle3;
            zzqmVar = null;
        } else {
            if (bundle3 == null && zzgd.zzCq.get().booleanValue()) {
                zzpk.v("contentInfo is not present, but we'll still launch the app index task");
                bundle3 = new Bundle();
            }
            if (bundle3 != null) {
                bundle = bundle3;
                zzqmVar = zzpn.zza(new Callable<Void>() { // from class: com.google.android.gms.internal.zznc.1
                    @Override // java.util.concurrent.Callable
                    /* renamed from: zzbk */
                    public Void call() throws Exception {
                        String str2 = zzmkVar.zzRz.packageName;
                        return null;
                    }
                });
            } else {
                bundle = bundle3;
                zzqmVar = null;
            }
        }
        if (com.google.android.gms.ads.internal.zzw.zzcM().zze(context, context.getPackageName(), "android.permission.ACCESS_NETWORK_STATE") && ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo() == null) {
            zzpk.zzbf("Device is offline.");
        }
        String uuid = zzmkVar.versionCode >= 7 ? zzmkVar.zzRL : UUID.randomUUID().toString();
        final zzne zzneVar = new zzne(uuid, zzmkVar.applicationInfo.packageName);
        if (zzmkVar.zzRy.extras == null || (string = zzmkVar.zzRy.extras.getString("_ad")) == null) {
            List<String> zza2 = zznbVar.zzTo.zza(zzmkVar);
            if (zzqmVar != null) {
                try {
                    zzpk.v("Waiting for app index fetching task.");
                    zzqmVar.get(zzgd.zzCr.get().longValue(), TimeUnit.MILLISECONDS);
                    zzpk.v("App index fetching task completed.");
                } catch (InterruptedException e) {
                    e = e;
                    zzpk.zzc("Failed to fetch app index signal", e);
                } catch (ExecutionException e2) {
                    e = e2;
                    zzpk.zzc("Failed to fetch app index signal", e);
                } catch (TimeoutException e3) {
                    zzpk.zzbf("Timed out waiting for app index fetching task");
                }
            }
            Bundle bundle4 = (Bundle) zza(zzt, zzgd.zzEX.get());
            zznm.zza zzaVar = (zznm.zza) zza(zzB, zzgd.zzDH.get());
            Location location = (Location) zza(zza, zzgd.zzEF.get());
            AdvertisingIdClient.Info info = (AdvertisingIdClient.Info) zza(zzG, zzgd.zzCT.get());
            try {
                str = zzg.get();
            } catch (Exception e4) {
                com.google.android.gms.ads.internal.zzw.zzcQ().zza(e4, "AdRequestServiceImpl.loadAdAsync.qs");
                zzpk.zzc("Error fetching qs signals. Continuing.", e4);
                str = null;
            }
            String str2 = null;
            try {
                str2 = zzaS.get();
            } catch (Exception e5) {
                com.google.android.gms.ads.internal.zzw.zzcQ().zza(e5, "AdRequestServiceImpl.loadAdAsync.ds");
                zzpk.zzc("Error fetching drt signals. Continuing.", e5);
            }
            try {
                JSONObject zza3 = zznd.zza(context, new zzna().zzf(zzmkVar).zza(zzA.get()).zza(zzaVar).zzc(location).zze(bundle4).zzaK(str).zzb(info).zzk(zza2).zzf(bundle).zzaL(str2).zzg(zznbVar.zzTm.zzj(context)));
                if (zza3 == null) {
                    return new zzmn(0);
                }
                if (zzmkVar.versionCode < 7) {
                    try {
                        zza3.put("request_id", uuid);
                    } catch (JSONException e6) {
                    }
                }
                final String jSONObject = zza3.toString();
                zzglVar.zza(zzfB, "arc");
                final zzgj zzfB2 = zzglVar.zzfB();
                zzpo.zzXC.post(new Runnable() { // from class: com.google.android.gms.internal.zznc.2
                    @Override // java.lang.Runnable
                    public void run() {
                        zzji.zzc zzgO = zzji.this.zzgO();
                        zzneVar.zzb(zzgO);
                        zzglVar.zza(zzfB2, "rwc");
                        final zzgj zzfB3 = zzglVar.zzfB();
                        zzgO.zza(new zzqp.zzc<zzjj>() { // from class: com.google.android.gms.internal.zznc.2.1
                            @Override // com.google.android.gms.internal.zzqp.zzc
                            /* renamed from: zzb */
                            public void zzd(zzjj zzjjVar) {
                                zzglVar.zza(zzfB3, "jsf");
                                zzglVar.zzfC();
                                zzjjVar.zza("/invalidRequest", zzneVar.zzTN);
                                zzjjVar.zza("/loadAdURL", zzneVar.zzTO);
                                zzjjVar.zza("/loadAd", zzneVar.zzTP);
                                try {
                                    zzjjVar.zzj("AFMA_getAd", jSONObject);
                                } catch (Exception e7) {
                                    zzpk.zzb("Error requesting an ad url", e7);
                                }
                            }
                        }, new zzqp.zza(this) { // from class: com.google.android.gms.internal.zznc.2.2
                            @Override // com.google.android.gms.internal.zzqp.zza
                            public void run() {
                            }
                        });
                    }
                });
                try {
                    zznh zznhVar = zzneVar.zzjw().get(10L, TimeUnit.SECONDS);
                    if (zznhVar == null) {
                        return new zzmn(0);
                    }
                    if (zznhVar.getErrorCode() != -2) {
                        return new zzmn(zznhVar.getErrorCode());
                    }
                    if (zzglVar.zzfF() != null) {
                        zzglVar.zza(zzglVar.zzfF(), "rur");
                    }
                    zzmn zzmnVar = null;
                    if (!TextUtils.isEmpty(zznhVar.zzjB())) {
                        zzmnVar = zznd.zza(context, zzmkVar, zznhVar.zzjB());
                    }
                    if (zzmnVar == null && !TextUtils.isEmpty(zznhVar.getUrl())) {
                        zzmnVar = zza(zzmkVar, context, zzmkVar.zzvn.zzba, zznhVar.getUrl(), str2, zznhVar, zzglVar, zznbVar);
                    }
                    if (zzmnVar == null) {
                        zzmnVar = new zzmn(0);
                    }
                    zzglVar.zza(zzfB, "tts");
                    zzmnVar.zzSA = zzglVar.zzfD();
                    return zzmnVar;
                } catch (Exception e7) {
                    return new zzmn(0);
                } finally {
                    zzpo.zzXC.post(new Runnable() { // from class: com.google.android.gms.internal.zznc.3
                        @Override // java.lang.Runnable
                        public void run() {
                            zznb.this.zzTp.zza(context, zzneVar, zzmkVar.zzvn);
                        }
                    });
                }
            } catch (Throwable th) {
                com.google.android.gms.ads.internal.zzw.zzcQ().zza(th, "AdRequestServiceImpl.loadAdAsync.di");
                zzpk.zzc("Error fetching device info. This is not recoverable.", th);
                return new zzmn(0);
            }
        }
        return zznd.zza(context, zzmkVar, string);
    }

    /* JADX WARN: Code restructure failed: missing block: B:102:?, code lost:
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x015f, code lost:
        com.google.android.gms.internal.zzpk.zzbh(new java.lang.StringBuilder(46).append("Received error HTTP response code: ").append(r9).toString());
        r3 = new com.google.android.gms.internal.zzmn(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x017b, code lost:
        r2.disconnect();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static zzmn zza(zzmk zzmkVar, Context context, String str, String str2, String str3, zznh zznhVar, zzgl zzglVar, zznb zznbVar) {
        InputStreamReader inputStreamReader;
        BufferedOutputStream bufferedOutputStream;
        zzgj zzfB = zzglVar != null ? zzglVar.zzfB() : null;
        try {
            zznf zznfVar = new zznf(zzmkVar, zznhVar.zzjy());
            String valueOf = String.valueOf(str2);
            zzpk.zzbf(valueOf.length() != 0 ? "AdRequestServiceImpl: Sending request: ".concat(valueOf) : new String("AdRequestServiceImpl: Sending request: "));
            URL url = new URL(str2);
            long elapsedRealtime = com.google.android.gms.ads.internal.zzw.zzcS().elapsedRealtime();
            int i = 0;
            URL url2 = url;
            while (true) {
                HttpURLConnection httpURLConnection = (HttpURLConnection) url2.openConnection();
                com.google.android.gms.ads.internal.zzw.zzcM().zza(context, str, false, httpURLConnection);
                if (!TextUtils.isEmpty(str3) && zznhVar.zzjA()) {
                    httpURLConnection.addRequestProperty("x-afma-drt-cookie", str3);
                }
                String str4 = zzmkVar.zzRW;
                if (!TextUtils.isEmpty(str4)) {
                    zzpk.zzbf("Sending webview cookie in ad request header.");
                    httpURLConnection.addRequestProperty("Cookie", str4);
                }
                if (zznhVar != null && !TextUtils.isEmpty(zznhVar.zzjz())) {
                    httpURLConnection.setDoOutput(true);
                    byte[] bytes = zznhVar.zzjz().getBytes();
                    httpURLConnection.setFixedLengthStreamingMode(bytes.length);
                    try {
                        bufferedOutputStream = new BufferedOutputStream(httpURLConnection.getOutputStream());
                    } catch (Throwable th) {
                        th = th;
                        bufferedOutputStream = null;
                    }
                    try {
                        bufferedOutputStream.write(bytes);
                        com.google.android.gms.common.util.zzp.zzb(bufferedOutputStream);
                    } catch (Throwable th2) {
                        th = th2;
                        com.google.android.gms.common.util.zzp.zzb(bufferedOutputStream);
                        throw th;
                    }
                }
                int responseCode = httpURLConnection.getResponseCode();
                Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
                if (responseCode < 200 || responseCode >= 300) {
                    zza(url2.toString(), headerFields, null, responseCode);
                    if (responseCode < 300 || responseCode >= 400) {
                        break;
                    }
                    String headerField = httpURLConnection.getHeaderField("Location");
                    if (TextUtils.isEmpty(headerField)) {
                        zzpk.zzbh("No location header to follow redirect.");
                        zzmn zzmnVar = new zzmn(0);
                        httpURLConnection.disconnect();
                        return zzmnVar;
                    }
                    URL url3 = new URL(headerField);
                    int i2 = i + 1;
                    if (i2 > 5) {
                        zzpk.zzbh("Too many redirects.");
                        zzmn zzmnVar2 = new zzmn(0);
                        httpURLConnection.disconnect();
                        return zzmnVar2;
                    }
                    zznfVar.zzk(headerFields);
                    httpURLConnection.disconnect();
                    if (zznbVar != null) {
                    }
                    i = i2;
                    url2 = url3;
                } else {
                    String url4 = url2.toString();
                    try {
                        inputStreamReader = new InputStreamReader(httpURLConnection.getInputStream());
                        try {
                            String zza = com.google.android.gms.ads.internal.zzw.zzcM().zza(inputStreamReader);
                            com.google.android.gms.common.util.zzp.zzb(inputStreamReader);
                            zza(url4, headerFields, zza, responseCode);
                            zznfVar.zzb(url4, headerFields, zza);
                            if (zzglVar != null) {
                                zzglVar.zza(zzfB, "ufe");
                            }
                            zzmn zzj = zznfVar.zzj(elapsedRealtime);
                            httpURLConnection.disconnect();
                            return zzj;
                        } catch (Throwable th3) {
                            th = th3;
                            com.google.android.gms.common.util.zzp.zzb(inputStreamReader);
                            throw th;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        inputStreamReader = null;
                    }
                }
            }
        } catch (IOException e) {
            String valueOf2 = String.valueOf(e.getMessage());
            zzpk.zzbh(valueOf2.length() != 0 ? "Error while connecting to ad server: ".concat(valueOf2) : new String("Error while connecting to ad server: "));
            return new zzmn(2);
        }
    }

    public static zznc zza(Context context, zzfw zzfwVar, zznb zznbVar) {
        zznc zzncVar;
        synchronized (zztX) {
            if (zzTv == null) {
                if (context.getApplicationContext() != null) {
                    context = context.getApplicationContext();
                }
                zzTv = new zznc(context, zzfwVar, zznbVar);
            }
            zzncVar = zzTv;
        }
        return zzncVar;
    }

    private static <T> T zza(Future<T> future, Long l) {
        try {
            return future.get(l.longValue(), TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            zzpk.zzc("InterruptedException caught while resolving future.", e);
            Thread.currentThread().interrupt();
            return null;
        } catch (RuntimeException e2) {
            e = e2;
            zzpk.zzc("Exception caught while resolving future", e);
            return null;
        } catch (ExecutionException e3) {
            e = e3;
            zzpk.zzc("Exception caught while resolving future", e);
            return null;
        } catch (TimeoutException e4) {
            e = e4;
            zzpk.zzc("Exception caught while resolving future", e);
            return null;
        }
    }

    private static void zza(String str, Map<String, List<String>> map, String str2, int i) {
        if (zzpk.zzak(2)) {
            zzpk.v(new StringBuilder(String.valueOf(str).length() + 39).append("Http Response: {\n  URL:\n    ").append(str).append("\n  Headers:").toString());
            if (map != null) {
                for (String str3 : map.keySet()) {
                    zzpk.v(new StringBuilder(String.valueOf(str3).length() + 5).append("    ").append(str3).append(":").toString());
                    for (String str4 : map.get(str3)) {
                        String valueOf = String.valueOf(str4);
                        zzpk.v(valueOf.length() != 0 ? "      ".concat(valueOf) : new String("      "));
                    }
                }
            }
            zzpk.v("  Body:");
            if (str2 != null) {
                for (int i2 = 0; i2 < Math.min(str2.length(), 100000); i2 += 1000) {
                    zzpk.v(str2.substring(i2, Math.min(str2.length(), i2 + 1000)));
                }
            } else {
                zzpk.v("    null");
            }
            zzpk.v(new StringBuilder(34).append("  Response Code:\n    ").append(i).append("\n}").toString());
        }
    }

    @Override // com.google.android.gms.internal.zzmt
    public void zza(final zzmk zzmkVar, final zzmu zzmuVar) {
        com.google.android.gms.ads.internal.zzw.zzcQ().zzc(this.mContext, zzmkVar.zzvn);
        zzpn.zza(new Runnable() { // from class: com.google.android.gms.internal.zznc.5
            @Override // java.lang.Runnable
            public void run() {
                zzmn zzmnVar;
                try {
                    zzmnVar = zznc.this.zzd(zzmkVar);
                } catch (Exception e) {
                    com.google.android.gms.ads.internal.zzw.zzcQ().zza(e, "AdRequestServiceImpl.loadAdAsync");
                    zzpk.zzc("Could not fetch ad response due to an Exception.", e);
                    zzmnVar = null;
                }
                if (zzmnVar == null) {
                    zzmnVar = new zzmn(0);
                }
                try {
                    zzmuVar.zza(zzmnVar);
                } catch (RemoteException e2) {
                    zzpk.zzc("Fail to forward ad response.", e2);
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.zzmt
    public zzmn zzd(zzmk zzmkVar) {
        return zza(this.mContext, this.zzTy, this.zzTx, this.zzTw, zzmkVar);
    }
}
