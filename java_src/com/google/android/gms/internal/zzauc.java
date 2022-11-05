package com.google.android.gms.internal;

import android.content.Context;
import android.support.v4.f.a;
import com.google.android.gms.internal.zzauv;
import com.google.android.gms.measurement.AppMeasurement;
import java.io.IOException;
import java.util.Map;
/* loaded from: classes2.dex */
public class zzauc extends zzauh {
    private final Map<String, Map<String, String>> zzbtD;
    private final Map<String, Map<String, Boolean>> zzbtE;
    private final Map<String, Map<String, Boolean>> zzbtF;
    private final Map<String, zzauv.zzb> zzbtG;
    private final Map<String, String> zzbtH;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzauc(zzaue zzaueVar) {
        super(zzaueVar);
        this.zzbtD = new a();
        this.zzbtE = new a();
        this.zzbtF = new a();
        this.zzbtG = new a();
        this.zzbtH = new a();
    }

    private Map<String, String> zza(zzauv.zzb zzbVar) {
        zzauv.zzc[] zzcVarArr;
        a aVar = new a();
        if (zzbVar != null && zzbVar.zzbwP != null) {
            for (zzauv.zzc zzcVar : zzbVar.zzbwP) {
                if (zzcVar != null) {
                    aVar.put(zzcVar.zzaB, zzcVar.value);
                }
            }
        }
        return aVar;
    }

    private void zza(String str, zzauv.zzb zzbVar) {
        zzauv.zza[] zzaVarArr;
        a aVar = new a();
        a aVar2 = new a();
        if (zzbVar != null && zzbVar.zzbwQ != null) {
            for (zzauv.zza zzaVar : zzbVar.zzbwQ) {
                if (zzaVar != null) {
                    String str2 = AppMeasurement.zza.zzbqd.get(zzaVar.name);
                    if (str2 != null) {
                        zzaVar.name = str2;
                    }
                    aVar.put(zzaVar.name, zzaVar.zzbwL);
                    aVar2.put(zzaVar.name, zzaVar.zzbwM);
                }
            }
        }
        this.zzbtE.put(str, aVar);
        this.zzbtF.put(str, aVar2);
    }

    private zzauv.zzb zze(String str, byte[] bArr) {
        if (bArr == null) {
            return new zzauv.zzb();
        }
        zzbxl zzaf = zzbxl.zzaf(bArr);
        zzauv.zzb zzbVar = new zzauv.zzb();
        try {
            zzbVar.zzb(zzaf);
            zzKl().zzMe().zze("Parsed config. version, gmp_app_id", zzbVar.zzbwN, zzbVar.zzbqL);
            return zzbVar;
        } catch (IOException e) {
            zzKl().zzMa().zze("Unable to merge remote config. appId", zzatx.zzfE(str), e);
            return null;
        }
    }

    private void zzfK(String str) {
        zzob();
        zzmR();
        com.google.android.gms.common.internal.zzac.zzdr(str);
        if (this.zzbtG.get(str) == null) {
            byte[] zzfw = zzKg().zzfw(str);
            if (zzfw == null) {
                this.zzbtD.put(str, null);
                this.zzbtE.put(str, null);
                this.zzbtF.put(str, null);
                this.zzbtG.put(str, null);
                this.zzbtH.put(str, null);
                return;
            }
            zzauv.zzb zze = zze(str, zzfw);
            this.zzbtD.put(str, zza(zze));
            zza(str, zze);
            this.zzbtG.put(str, zze);
            this.zzbtH.put(str, null);
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public String zzZ(String str, String str2) {
        zzmR();
        zzfK(str);
        Map<String, String> map = this.zzbtD.get(str);
        if (map != null) {
            return map.get(str2);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean zzaa(String str, String str2) {
        Boolean bool;
        zzmR();
        zzfK(str);
        if (!zzKh().zzgg(str) || !zzaut.zzgd(str2)) {
            if (zzKh().zzgh(str) && zzaut.zzfT(str2)) {
                return true;
            }
            Map<String, Boolean> map = this.zzbtE.get(str);
            if (map != null && (bool = map.get(str2)) != null) {
                return bool.booleanValue();
            }
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean zzab(String str, String str2) {
        Boolean bool;
        zzmR();
        zzfK(str);
        Map<String, Boolean> map = this.zzbtF.get(str);
        if (map != null && (bool = map.get(str2)) != null) {
            return bool.booleanValue();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean zzb(String str, byte[] bArr, String str2) {
        zzob();
        zzmR();
        com.google.android.gms.common.internal.zzac.zzdr(str);
        zzauv.zzb zze = zze(str, bArr);
        if (zze == null) {
            return false;
        }
        zza(str, zze);
        this.zzbtG.put(str, zze);
        this.zzbtH.put(str, str2);
        this.zzbtD.put(str, zza(zze));
        zzJZ().zza(str, zze.zzbwR);
        try {
            zze.zzbwR = null;
            byte[] bArr2 = new byte[zze.zzaeT()];
            zze.zza(zzbxm.zzag(bArr2));
            bArr = bArr2;
        } catch (IOException e) {
            zzKl().zzMa().zze("Unable to serialize reduced-size config. Storing full config instead. appId", zzatx.zzfE(str), e);
        }
        zzKg().zzd(str, bArr);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zzauv.zzb zzfL(String str) {
        zzob();
        zzmR();
        com.google.android.gms.common.internal.zzac.zzdr(str);
        zzfK(str);
        return this.zzbtG.get(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String zzfM(String str) {
        zzmR();
        return this.zzbtH.get(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zzfN(String str) {
        zzmR();
        this.zzbtH.put(str, null);
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
}
