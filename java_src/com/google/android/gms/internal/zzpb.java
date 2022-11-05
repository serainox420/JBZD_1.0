package com.google.android.gms.internal;

import com.google.android.gms.internal.zzha;
import java.util.Collections;
import java.util.List;
import org.json.JSONObject;
@zzme
/* loaded from: classes.dex */
public class zzpb {
    public final int errorCode;
    public final int orientation;
    public final List<String> zzKF;
    public final List<String> zzKG;
    public final List<String> zzKI;
    public final long zzKL;
    public final zzjq zzLi;
    public final zzkb zzLj;
    public final String zzLk;
    public final zzjt zzLl;
    public final zzqw zzNH;
    public final String zzRB;
    public final zzec zzRy;
    public final zzoo zzSC;
    public final List<String> zzSE;
    public final boolean zzSF;
    public final zzmp zzSG;
    public final String zzSJ;
    public final long zzSm;
    public final boolean zzSn;
    public final long zzSo;
    public final List<String> zzSp;
    public final String zzSs;
    public final JSONObject zzWa;
    public boolean zzWb;
    public final zzjr zzWc;
    public final String zzWd;
    public final zzeg zzWe;
    public final List<String> zzWf;
    public final long zzWg;
    public final long zzWh;
    public final zzha.zza zzWi;
    public boolean zzWj;
    public boolean zzWk;
    public boolean zzWl;

    @zzme
    /* loaded from: classes.dex */
    public static final class zza {
        public final int errorCode;
        public final zzmk zzTi;
        public final JSONObject zzWa;
        public final zzjr zzWc;
        public final long zzWg;
        public final long zzWh;
        public final zzmn zzWm;
        public final zzeg zzvr;

        public zza(zzmk zzmkVar, zzmn zzmnVar, zzjr zzjrVar, zzeg zzegVar, int i, long j, long j2, JSONObject jSONObject) {
            this.zzTi = zzmkVar;
            this.zzWm = zzmnVar;
            this.zzWc = zzjrVar;
            this.zzvr = zzegVar;
            this.errorCode = i;
            this.zzWg = j;
            this.zzWh = j2;
            this.zzWa = jSONObject;
        }
    }

    public zzpb(zzec zzecVar, zzqw zzqwVar, List<String> list, int i, List<String> list2, List<String> list3, int i2, long j, String str, boolean z, zzjq zzjqVar, zzkb zzkbVar, String str2, zzjr zzjrVar, zzjt zzjtVar, long j2, zzeg zzegVar, long j3, long j4, long j5, String str3, JSONObject jSONObject, zzha.zza zzaVar, zzoo zzooVar, List<String> list4, List<String> list5, boolean z2, zzmp zzmpVar, String str4, List<String> list6, String str5) {
        this.zzWj = false;
        this.zzWk = false;
        this.zzWl = false;
        this.zzRy = zzecVar;
        this.zzNH = zzqwVar;
        this.zzKF = zzm(list);
        this.errorCode = i;
        this.zzKG = zzm(list2);
        this.zzSp = zzm(list3);
        this.orientation = i2;
        this.zzKL = j;
        this.zzRB = str;
        this.zzSn = z;
        this.zzLi = zzjqVar;
        this.zzLj = zzkbVar;
        this.zzLk = str2;
        this.zzWc = zzjrVar;
        this.zzLl = zzjtVar;
        this.zzSo = j2;
        this.zzWe = zzegVar;
        this.zzSm = j3;
        this.zzWg = j4;
        this.zzWh = j5;
        this.zzSs = str3;
        this.zzWa = jSONObject;
        this.zzWi = zzaVar;
        this.zzSC = zzooVar;
        this.zzWf = zzm(list4);
        this.zzSE = zzm(list5);
        this.zzSF = z2;
        this.zzSG = zzmpVar;
        this.zzWd = str4;
        this.zzKI = zzm(list6);
        this.zzSJ = str5;
    }

    public zzpb(zza zzaVar, zzqw zzqwVar, zzjq zzjqVar, zzkb zzkbVar, String str, zzjt zzjtVar, zzha.zza zzaVar2, String str2) {
        this(zzaVar.zzTi.zzRy, zzqwVar, zzaVar.zzWm.zzKF, zzaVar.errorCode, zzaVar.zzWm.zzKG, zzaVar.zzWm.zzSp, zzaVar.zzWm.orientation, zzaVar.zzWm.zzKL, zzaVar.zzTi.zzRB, zzaVar.zzWm.zzSn, zzjqVar, zzkbVar, str, zzaVar.zzWc, zzjtVar, zzaVar.zzWm.zzSo, zzaVar.zzvr, zzaVar.zzWm.zzSm, zzaVar.zzWg, zzaVar.zzWh, zzaVar.zzWm.zzSs, zzaVar.zzWa, zzaVar2, zzaVar.zzWm.zzSC, zzaVar.zzWm.zzSD, zzaVar.zzWm.zzSD, zzaVar.zzWm.zzSF, zzaVar.zzWm.zzSG, str2, zzaVar.zzWm.zzKI, zzaVar.zzWm.zzSJ);
    }

    private static <T> List<T> zzm(List<T> list) {
        if (list == null) {
            return null;
        }
        return Collections.unmodifiableList(list);
    }

    public boolean zzdD() {
        if (this.zzNH == null || this.zzNH.zzlv() == null) {
            return false;
        }
        return this.zzNH.zzlv().zzdD();
    }
}
