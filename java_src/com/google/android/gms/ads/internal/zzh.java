package com.google.android.gms.ads.internal;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.internal.zzgd;
import com.google.android.gms.internal.zzid;
import com.google.android.gms.internal.zzji;
import com.google.android.gms.internal.zzjj;
import com.google.android.gms.internal.zzme;
import com.google.android.gms.internal.zzpd;
import com.google.android.gms.internal.zzpk;
import com.google.android.gms.internal.zzpo;
import com.google.android.gms.internal.zzqh;
import com.google.android.gms.internal.zzqp;
import com.google.android.gms.internal.zzqw;
import java.util.Map;
import org.json.JSONObject;
@zzme
/* loaded from: classes.dex */
public class zzh {
    private Context mContext;
    private final Object zzrJ = new Object();

    private static boolean zza(zzpd zzpdVar) {
        if (zzpdVar == null) {
            return true;
        }
        return (((zzw.zzcS().currentTimeMillis() - zzpdVar.zzkb()) > zzgd.zzEL.get().longValue() ? 1 : ((zzw.zzcS().currentTimeMillis() - zzpdVar.zzkb()) == zzgd.zzEL.get().longValue() ? 0 : -1)) > 0) || !zzpdVar.zzkc();
    }

    public void zza(Context context, zzqh zzqhVar, String str, zzpd zzpdVar) {
        zza(context, zzqhVar, false, zzpdVar, zzpdVar != null ? null : zzpdVar.zzke(), str, null);
    }

    public void zza(Context context, zzqh zzqhVar, String str, Runnable runnable) {
        zza(context, zzqhVar, true, null, str, null, runnable);
    }

    void zza(final Context context, zzqh zzqhVar, final boolean z, zzpd zzpdVar, final String str, final String str2, final Runnable runnable) {
        if (!zza(zzpdVar)) {
            return;
        }
        if (context == null) {
            zzpk.zzbh("Context not provided to fetch application settings");
        } else if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
            zzpk.zzbh("App settings could not be fetched. Required parameters missing");
        } else {
            this.mContext = context;
            final zzji zzd = zzw.zzcM().zzd(context, zzqhVar);
            final zzid zzidVar = new zzid() { // from class: com.google.android.gms.ads.internal.zzh.1
                @Override // com.google.android.gms.internal.zzid
                public void zza(zzqw zzqwVar, Map<String, String> map) {
                    zzqwVar.zzb("/appSettingsFetched", this);
                    synchronized (zzh.this.zzrJ) {
                        if (map != null) {
                            if ("true".equalsIgnoreCase(map.get("isSuccessful"))) {
                                zzw.zzcQ().zzn(zzh.this.mContext, map.get("appSettingsJson"));
                                if (runnable != null) {
                                    runnable.run();
                                }
                            }
                        }
                    }
                }
            };
            zzpo.zzXC.post(new Runnable(this) { // from class: com.google.android.gms.ads.internal.zzh.2
                @Override // java.lang.Runnable
                public void run() {
                    zzd.zzgO().zza(new zzqp.zzc<zzjj>() { // from class: com.google.android.gms.ads.internal.zzh.2.1
                        @Override // com.google.android.gms.internal.zzqp.zzc
                        /* renamed from: zzb */
                        public void zzd(zzjj zzjjVar) {
                            zzjjVar.zza("/appSettingsFetched", zzidVar);
                            try {
                                JSONObject jSONObject = new JSONObject();
                                if (!TextUtils.isEmpty(str)) {
                                    jSONObject.put("app_id", str);
                                } else if (!TextUtils.isEmpty(str2)) {
                                    jSONObject.put("ad_unit_id", str2);
                                }
                                jSONObject.put("is_init", z);
                                jSONObject.put("pn", context.getPackageName());
                                zzjjVar.zza("AFMA_fetchAppSettings", jSONObject);
                            } catch (Exception e) {
                                zzjjVar.zzb("/appSettingsFetched", zzidVar);
                                zzpk.zzb("Error requesting application settings", e);
                            }
                        }
                    }, new zzqp.zzb());
                }
            });
        }
    }
}
