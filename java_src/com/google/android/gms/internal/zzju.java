package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.ads.mediation.AdUrlAdapter;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.internal.zzjv;
import com.google.android.gms.internal.zzkd;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
@zzme
/* loaded from: classes.dex */
public class zzju implements zzjv.zza {
    private final Context mContext;
    private final String zzKW;
    private final long zzKX;
    private final zzjr zzKY;
    private final zzjq zzKZ;
    private final boolean zzLa;
    private zzkb zzLb;
    private zzkd zzLd;
    private final zzka zzsz;
    private final zzhc zztp;
    private final List<String> zztq;
    private final zzqh zztt;
    private zzec zzum;
    private final zzeg zzus;
    private final boolean zzwf;
    private final Object zzrJ = new Object();
    private int zzLc = -2;

    public zzju(Context context, String str, zzka zzkaVar, zzjr zzjrVar, zzjq zzjqVar, zzec zzecVar, zzeg zzegVar, zzqh zzqhVar, boolean z, boolean z2, zzhc zzhcVar, List<String> list) {
        this.mContext = context;
        this.zzsz = zzkaVar;
        this.zzKZ = zzjqVar;
        if ("com.google.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
            this.zzKW = zzgV();
        } else {
            this.zzKW = str;
        }
        this.zzKY = zzjrVar;
        this.zzKX = zzjrVar.zzKE != -1 ? zzjrVar.zzKE : NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS;
        this.zzum = zzecVar;
        this.zzus = zzegVar;
        this.zztt = zzqhVar;
        this.zzwf = z;
        this.zzLa = z2;
        this.zztp = zzhcVar;
        this.zztq = list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean zzG(int i) {
        try {
            Bundle zzhf = this.zzwf ? this.zzLb.zzhf() : this.zzus.zzzz ? this.zzLb.getInterstitialAdapterInfo() : this.zzLb.zzhe();
            if (zzhf == null) {
                return false;
            }
            return (zzhf.getInt("capabilities", 0) & i) == i;
        } catch (RemoteException e) {
            zzpk.zzbh("Could not get adapter info. Returning false");
            return false;
        }
    }

    private static zzkd zzH(final int i) {
        return new zzkd.zza() { // from class: com.google.android.gms.internal.zzju.2
            @Override // com.google.android.gms.internal.zzkd
            public int zzha() throws RemoteException {
                return i;
            }
        };
    }

    private long zza(long j, long j2, long j3, long j4) {
        while (this.zzLc == -2) {
            zzb(j, j2, j3, j4);
        }
        return com.google.android.gms.ads.internal.zzw.zzcS().elapsedRealtime() - j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zza(zzjt zzjtVar) {
        String zzap = zzap(this.zzKZ.zzKv);
        try {
            if (this.zztt.zzYX < 4100000) {
                if (this.zzus.zzzz) {
                    this.zzLb.zza(com.google.android.gms.dynamic.zzd.zzA(this.mContext), this.zzum, zzap, zzjtVar);
                } else {
                    this.zzLb.zza(com.google.android.gms.dynamic.zzd.zzA(this.mContext), this.zzus, this.zzum, zzap, zzjtVar);
                }
            } else if (this.zzwf) {
                this.zzLb.zza(com.google.android.gms.dynamic.zzd.zzA(this.mContext), this.zzum, zzap, this.zzKZ.zzKn, zzjtVar, this.zztp, this.zztq);
            } else if (this.zzus.zzzz) {
                this.zzLb.zza(com.google.android.gms.dynamic.zzd.zzA(this.mContext), this.zzum, zzap, this.zzKZ.zzKn, zzjtVar);
            } else if (!this.zzLa) {
                this.zzLb.zza(com.google.android.gms.dynamic.zzd.zzA(this.mContext), this.zzus, this.zzum, zzap, this.zzKZ.zzKn, zzjtVar);
            } else if (this.zzKZ.zzKy != null) {
                this.zzLb.zza(com.google.android.gms.dynamic.zzd.zzA(this.mContext), this.zzum, zzap, this.zzKZ.zzKn, zzjtVar, new zzhc(zzaq(this.zzKZ.zzKC)), this.zzKZ.zzKB);
            } else {
                this.zzLb.zza(com.google.android.gms.dynamic.zzd.zzA(this.mContext), this.zzus, this.zzum, zzap, this.zzKZ.zzKn, zzjtVar);
            }
        } catch (RemoteException e) {
            zzpk.zzc("Could not request ad from mediation adapter.", e);
            zzF(5);
        }
    }

    private String zzap(String str) {
        if (str == null || !zzgY() || zzG(2)) {
            return str;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            jSONObject.remove("cpm_floor_cents");
            return jSONObject.toString();
        } catch (JSONException e) {
            zzpk.zzbh("Could not remove field. Returning the original value");
            return str;
        }
    }

    private static NativeAdOptions zzaq(String str) {
        NativeAdOptions.Builder builder = new NativeAdOptions.Builder();
        if (str == null) {
            return builder.build();
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            builder.setRequestMultipleImages(jSONObject.optBoolean("multiple_images", false));
            builder.setReturnUrlsForImageAssets(jSONObject.optBoolean("only_urls", false));
            builder.setImageOrientation(zzar(jSONObject.optString("native_image_orientation", "any")));
        } catch (JSONException e) {
            zzpk.zzc("Exception occurred when creating native ad options", e);
        }
        return builder.build();
    }

    private static int zzar(String str) {
        if ("landscape".equals(str)) {
            return 2;
        }
        return "portrait".equals(str) ? 1 : 0;
    }

    private void zzb(long j, long j2, long j3, long j4) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long j5 = j2 - (elapsedRealtime - j);
        long j6 = j4 - (elapsedRealtime - j3);
        if (j5 <= 0 || j6 <= 0) {
            zzpk.zzbg("Timed out waiting for adapter.");
            this.zzLc = 3;
            return;
        }
        try {
            this.zzrJ.wait(Math.min(j5, j6));
        } catch (InterruptedException e) {
            this.zzLc = -1;
        }
    }

    private String zzgV() {
        try {
            if (!TextUtils.isEmpty(this.zzKZ.zzKr)) {
                return this.zzsz.zzat(this.zzKZ.zzKr) ? "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter" : "com.google.ads.mediation.customevent.CustomEventAdapter";
            }
        } catch (RemoteException e) {
            zzpk.zzbh("Fail to determine the custom event's version, assuming the old one.");
        }
        return "com.google.ads.mediation.customevent.CustomEventAdapter";
    }

    private zzkd zzgW() {
        if (this.zzLc != 0 || !zzgY()) {
            return null;
        }
        try {
            if (zzG(4) && this.zzLd != null && this.zzLd.zzha() != 0) {
                return this.zzLd;
            }
        } catch (RemoteException e) {
            zzpk.zzbh("Could not get cpm value from MediationResponseMetadata");
        }
        return zzH(zzgZ());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public zzkb zzgX() {
        String valueOf = String.valueOf(this.zzKW);
        zzpk.zzbg(valueOf.length() != 0 ? "Instantiating mediation adapter: ".concat(valueOf) : new String("Instantiating mediation adapter: "));
        if (!this.zzwf) {
            if (zzgd.zzDI.get().booleanValue() && "com.google.ads.mediation.admob.AdMobAdapter".equals(this.zzKW)) {
                return zza(new AdMobAdapter());
            }
            if (zzgd.zzDJ.get().booleanValue() && "com.google.ads.mediation.AdUrlAdapter".equals(this.zzKW)) {
                return zza(new AdUrlAdapter());
            }
            if ("com.google.ads.mediation.admob.AdMobCustomTabsAdapter".equals(this.zzKW)) {
                return new zzkh(new zzkp());
            }
        }
        try {
            return this.zzsz.zzas(this.zzKW);
        } catch (RemoteException e) {
            String valueOf2 = String.valueOf(this.zzKW);
            zzpk.zza(valueOf2.length() != 0 ? "Could not instantiate mediation adapter: ".concat(valueOf2) : new String("Could not instantiate mediation adapter: "), e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean zzgY() {
        return this.zzKY.zzKO != -1;
    }

    private int zzgZ() {
        if (this.zzKZ.zzKv == null) {
            return 0;
        }
        try {
            JSONObject jSONObject = new JSONObject(this.zzKZ.zzKv);
            if ("com.google.ads.mediation.admob.AdMobAdapter".equals(this.zzKW)) {
                return jSONObject.optInt("cpm_cents", 0);
            }
            int optInt = zzG(2) ? jSONObject.optInt("cpm_floor_cents", 0) : 0;
            return optInt == 0 ? jSONObject.optInt("penalized_average_cpm_cents", 0) : optInt;
        } catch (JSONException e) {
            zzpk.zzbh("Could not convert to json. Returning 0");
            return 0;
        }
    }

    public void cancel() {
        synchronized (this.zzrJ) {
            try {
                if (this.zzLb != null) {
                    this.zzLb.destroy();
                }
            } catch (RemoteException e) {
                zzpk.zzc("Could not destroy mediation adapter.", e);
            }
            this.zzLc = -1;
            this.zzrJ.notify();
        }
    }

    @Override // com.google.android.gms.internal.zzjv.zza
    public void zzF(int i) {
        synchronized (this.zzrJ) {
            this.zzLc = i;
            this.zzrJ.notify();
        }
    }

    public zzjv zza(long j, long j2) {
        zzjv zzjvVar;
        synchronized (this.zzrJ) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            final zzjt zzjtVar = new zzjt();
            zzpo.zzXC.post(new Runnable() { // from class: com.google.android.gms.internal.zzju.1
                @Override // java.lang.Runnable
                public void run() {
                    synchronized (zzju.this.zzrJ) {
                        if (zzju.this.zzLc != -2) {
                            return;
                        }
                        zzju.this.zzLb = zzju.this.zzgX();
                        if (zzju.this.zzLb == null) {
                            zzju.this.zzF(4);
                        } else if (!zzju.this.zzgY() || zzju.this.zzG(1)) {
                            zzjtVar.zza(zzju.this);
                            zzju.this.zza(zzjtVar);
                        } else {
                            String str = zzju.this.zzKW;
                            zzpk.zzbh(new StringBuilder(String.valueOf(str).length() + 56).append("Ignoring adapter ").append(str).append(" as delayed impression is not supported").toString());
                            zzju.this.zzF(2);
                        }
                    }
                }
            });
            zzjvVar = new zzjv(this.zzKZ, this.zzLb, this.zzKW, zzjtVar, this.zzLc, zzgW(), zza(elapsedRealtime, this.zzKX, j, j2));
        }
        return zzjvVar;
    }

    protected zzkb zza(MediationAdapter mediationAdapter) {
        return new zzkh(mediationAdapter);
    }

    @Override // com.google.android.gms.internal.zzjv.zza
    public void zza(int i, zzkd zzkdVar) {
        synchronized (this.zzrJ) {
            this.zzLc = i;
            this.zzLd = zzkdVar;
            this.zzrJ.notify();
        }
    }
}
