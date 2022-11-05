package com.google.android.gms.internal;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.internal.zzof;
import com.google.android.gms.internal.zzpb;
import io.fabric.sdk.android.services.b.b;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.Future;
import org.json.JSONException;
import org.json.JSONObject;
@zzme
/* loaded from: classes.dex */
public class zzok extends zzpj implements zzoj {
    private final Context mContext;
    private final zzpb.zza zzPR;
    private final ArrayList<Future> zzVG;
    private final ArrayList<String> zzVH;
    private final HashMap<String, zzoe> zzVI;
    private final List<zzof> zzVJ;
    private final HashSet<String> zzVK;
    private final zzns zzVL;
    private final long zzVv;
    private final Object zzrJ;

    public zzok(Context context, zzpb.zza zzaVar, zzns zznsVar) {
        this(context, zzaVar, zznsVar, zzgd.zzCO.get().longValue());
    }

    zzok(Context context, zzpb.zza zzaVar, zzns zznsVar, long j) {
        this.zzVG = new ArrayList<>();
        this.zzVH = new ArrayList<>();
        this.zzVI = new HashMap<>();
        this.zzVJ = new ArrayList();
        this.zzVK = new HashSet<>();
        this.zzrJ = new Object();
        this.mContext = context;
        this.zzPR = zzaVar;
        this.zzVL = zznsVar;
        this.zzVv = j;
    }

    private static int zzT(int i) {
        switch (i) {
            case 3:
                return 1;
            case 4:
                return 2;
            case 5:
                return 4;
            case 6:
                return 0;
            case 7:
                return 3;
            default:
                return 6;
        }
    }

    private zzpb zza(int i, String str, zzjq zzjqVar) {
        return new zzpb(this.zzPR.zzTi.zzRy, null, this.zzPR.zzWm.zzKF, i, this.zzPR.zzWm.zzKG, this.zzPR.zzWm.zzSp, this.zzPR.zzWm.orientation, this.zzPR.zzWm.zzKL, this.zzPR.zzTi.zzRB, this.zzPR.zzWm.zzSn, zzjqVar, null, str, this.zzPR.zzWc, null, this.zzPR.zzWm.zzSo, this.zzPR.zzvr, this.zzPR.zzWm.zzSm, this.zzPR.zzWg, this.zzPR.zzWm.zzSr, this.zzPR.zzWm.zzSs, this.zzPR.zzWa, null, this.zzPR.zzWm.zzSC, this.zzPR.zzWm.zzSD, this.zzPR.zzWm.zzSE, this.zzPR.zzWm.zzSF, this.zzPR.zzWm.zzSG, zzjM(), this.zzPR.zzWm.zzKI, this.zzPR.zzWm.zzSJ);
    }

    private zzpb zza(String str, zzjq zzjqVar) {
        return zza(-2, str, zzjqVar);
    }

    private static String zza(zzof zzofVar) {
        String str = zzofVar.zzKq;
        int zzT = zzT(zzofVar.errorCode);
        return new StringBuilder(String.valueOf(str).length() + 33).append(str).append(".").append(zzT).append(".").append(zzofVar.zzLn).toString();
    }

    private void zza(String str, String str2, zzjq zzjqVar) {
        synchronized (this.zzrJ) {
            zzol zzaN = this.zzVL.zzaN(str);
            if (zzaN == null || zzaN.zzjO() == null || zzaN.zzjN() == null) {
                this.zzVJ.add(new zzof.zza().zzaQ(zzjqVar.zzKq).zzaP(str).zzl(0L).zzae(7).zzjK());
                return;
            }
            zzoe zza = zza(str, str2, zzjqVar, zzaN);
            this.zzVG.add((Future) zza.zziP());
            this.zzVH.add(str);
            this.zzVI.put(str, zza);
        }
    }

    private zzpb zzjL() {
        return zza(3, (String) null, (zzjq) null);
    }

    private String zzjM() {
        StringBuilder sb = new StringBuilder("");
        if (this.zzVJ == null) {
            return sb.toString();
        }
        for (zzof zzofVar : this.zzVJ) {
            if (zzofVar != null && !TextUtils.isEmpty(zzofVar.zzKq)) {
                sb.append(String.valueOf(zza(zzofVar)).concat(b.ROLL_OVER_FILE_NAME_SEPARATOR));
            }
        }
        return sb.substring(0, Math.max(0, sb.length() - 1));
    }

    @Override // com.google.android.gms.internal.zzpj
    public void onStop() {
    }

    protected zzoe zza(String str, String str2, zzjq zzjqVar, zzol zzolVar) {
        return new zzoe(this.mContext, str, str2, zzjqVar, this.zzPR, zzolVar, this, this.zzVv);
    }

    @Override // com.google.android.gms.internal.zzoj
    public void zza(String str, int i) {
    }

    @Override // com.google.android.gms.internal.zzoj
    public void zzaO(String str) {
        synchronized (this.zzrJ) {
            this.zzVK.add(str);
        }
    }

    @Override // com.google.android.gms.internal.zzpj
    public void zzco() {
        zzoe zzoeVar;
        zzoe zzoeVar2;
        zzoe zzoeVar3;
        zzoe zzoeVar4;
        for (zzjq zzjqVar : this.zzPR.zzWc.zzKD) {
            String str = zzjqVar.zzKv;
            for (String str2 : zzjqVar.zzKp) {
                if ("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str2) || "com.google.ads.mediation.customevent.CustomEventAdapter".equals(str2)) {
                    try {
                        str2 = new JSONObject(str).getString("class_name");
                    } catch (JSONException e) {
                        zzpk.zzb("Unable to determine custom event class name, skipping...", e);
                    }
                }
                zza(str2, str, zzjqVar);
            }
        }
        for (int i = 0; i < this.zzVG.size(); i++) {
            try {
                try {
                    this.zzVG.get(i).get();
                    synchronized (this.zzrJ) {
                        String str3 = this.zzVH.get(i);
                        if (!TextUtils.isEmpty(str3) && (zzoeVar4 = this.zzVI.get(str3)) != null) {
                            this.zzVJ.add(zzoeVar4.zzjH());
                        }
                    }
                    synchronized (this.zzrJ) {
                        if (this.zzVK.contains(this.zzVH.get(i))) {
                            String str4 = this.zzVH.get(i);
                            final zzpb zza = zza(str4, this.zzVI.get(str4) != null ? this.zzVI.get(str4).zzjI() : null);
                            zzqe.zzYP.post(new Runnable() { // from class: com.google.android.gms.internal.zzok.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    zzok.this.zzVL.zzb(zza);
                                }
                            });
                            return;
                        }
                    }
                    continue;
                } catch (Throwable th) {
                    synchronized (this.zzrJ) {
                        String str5 = this.zzVH.get(i);
                        if (!TextUtils.isEmpty(str5) && (zzoeVar3 = this.zzVI.get(str5)) != null) {
                            this.zzVJ.add(zzoeVar3.zzjH());
                        }
                        throw th;
                    }
                }
            } catch (InterruptedException e2) {
                Thread.currentThread().interrupt();
                synchronized (this.zzrJ) {
                    String str6 = this.zzVH.get(i);
                    if (!TextUtils.isEmpty(str6) && (zzoeVar2 = this.zzVI.get(str6)) != null) {
                        this.zzVJ.add(zzoeVar2.zzjH());
                    }
                }
            } catch (Exception e3) {
                zzpk.zzc("Unable to resolve rewarded adapter.", e3);
                synchronized (this.zzrJ) {
                    String str7 = this.zzVH.get(i);
                    if (!TextUtils.isEmpty(str7) && (zzoeVar = this.zzVI.get(str7)) != null) {
                        this.zzVJ.add(zzoeVar.zzjH());
                    }
                    continue;
                }
            }
        }
        final zzpb zzjL = zzjL();
        zzqe.zzYP.post(new Runnable() { // from class: com.google.android.gms.internal.zzok.2
            @Override // java.lang.Runnable
            public void run() {
                zzok.this.zzVL.zzb(zzjL);
            }
        });
    }
}
