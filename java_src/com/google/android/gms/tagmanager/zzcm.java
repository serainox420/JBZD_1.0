package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzak;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
/* loaded from: classes2.dex */
class zzcm extends zzam {
    private static final String ID = com.google.android.gms.internal.zzah.REGEX_GROUP.toString();
    private static final String zzbHn = com.google.android.gms.internal.zzai.ARG0.toString();
    private static final String zzbHo = com.google.android.gms.internal.zzai.ARG1.toString();
    private static final String zzbHp = com.google.android.gms.internal.zzai.IGNORE_CASE.toString();
    private static final String zzbHq = com.google.android.gms.internal.zzai.GROUP.toString();

    public zzcm() {
        super(ID, zzbHn, zzbHo);
    }

    @Override // com.google.android.gms.tagmanager.zzam
    public boolean zzQb() {
        return true;
    }

    @Override // com.google.android.gms.tagmanager.zzam
    public zzak.zza zzZ(Map<String, zzak.zza> map) {
        int i;
        zzak.zza zzaVar = map.get(zzbHn);
        zzak.zza zzaVar2 = map.get(zzbHo);
        if (zzaVar == null || zzaVar == zzdl.zzRR() || zzaVar2 == null || zzaVar2 == zzdl.zzRR()) {
            return zzdl.zzRR();
        }
        int i2 = 64;
        if (zzdl.zzi(map.get(zzbHp)).booleanValue()) {
            i2 = 66;
        }
        zzak.zza zzaVar3 = map.get(zzbHq);
        if (zzaVar3 != null) {
            Long zzg = zzdl.zzg(zzaVar3);
            if (zzg == zzdl.zzRM()) {
                return zzdl.zzRR();
            }
            i = zzg.intValue();
            if (i < 0) {
                return zzdl.zzRR();
            }
        } else {
            i = 1;
        }
        try {
            String zze = zzdl.zze(zzaVar);
            String str = null;
            Matcher matcher = Pattern.compile(zzdl.zze(zzaVar2), i2).matcher(zze);
            if (matcher.find() && matcher.groupCount() >= i) {
                str = matcher.group(i);
            }
            return str == null ? zzdl.zzRR() : zzdl.zzR(str);
        } catch (PatternSyntaxException e) {
            return zzdl.zzRR();
        }
    }
}
