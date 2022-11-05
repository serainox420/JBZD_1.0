package com.google.android.gms.tagmanager;

import android.util.Base64;
import com.google.android.gms.internal.zzak;
import com.pubmatic.sdk.common.CommonConstants;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class zzaf extends zzam {
    private static final String ID = com.google.android.gms.internal.zzah.ENCODE.toString();
    private static final String zzbGf = com.google.android.gms.internal.zzai.ARG0.toString();
    private static final String zzbGg = com.google.android.gms.internal.zzai.NO_PADDING.toString();
    private static final String zzbGh = com.google.android.gms.internal.zzai.INPUT_FORMAT.toString();
    private static final String zzbGi = com.google.android.gms.internal.zzai.OUTPUT_FORMAT.toString();

    public zzaf() {
        super(ID, zzbGf);
    }

    @Override // com.google.android.gms.tagmanager.zzam
    public boolean zzQb() {
        return true;
    }

    @Override // com.google.android.gms.tagmanager.zzam
    public zzak.zza zzZ(Map<String, zzak.zza> map) {
        byte[] decode;
        String encodeToString;
        zzak.zza zzaVar = map.get(zzbGf);
        if (zzaVar == null || zzaVar == zzdl.zzRR()) {
            return zzdl.zzRR();
        }
        String zze = zzdl.zze(zzaVar);
        zzak.zza zzaVar2 = map.get(zzbGh);
        String zze2 = zzaVar2 == null ? CommonConstants.RESPONSE_TEXT : zzdl.zze(zzaVar2);
        zzak.zza zzaVar3 = map.get(zzbGi);
        String zze3 = zzaVar3 == null ? "base16" : zzdl.zze(zzaVar3);
        int i = 2;
        zzak.zza zzaVar4 = map.get(zzbGg);
        if (zzaVar4 != null && zzdl.zzi(zzaVar4).booleanValue()) {
            i = 3;
        }
        try {
            if (CommonConstants.RESPONSE_TEXT.equals(zze2)) {
                decode = zze.getBytes();
            } else if ("base16".equals(zze2)) {
                decode = zzk.zzgR(zze);
            } else if ("base64".equals(zze2)) {
                decode = Base64.decode(zze, i);
            } else if (!"base64url".equals(zze2)) {
                String valueOf = String.valueOf(zze2);
                zzbo.e(valueOf.length() != 0 ? "Encode: unknown input format: ".concat(valueOf) : new String("Encode: unknown input format: "));
                return zzdl.zzRR();
            } else {
                decode = Base64.decode(zze, i | 8);
            }
            if ("base16".equals(zze3)) {
                encodeToString = zzk.zzq(decode);
            } else if ("base64".equals(zze3)) {
                encodeToString = Base64.encodeToString(decode, i);
            } else if (!"base64url".equals(zze3)) {
                String valueOf2 = String.valueOf(zze3);
                zzbo.e(valueOf2.length() != 0 ? "Encode: unknown output format: ".concat(valueOf2) : new String("Encode: unknown output format: "));
                return zzdl.zzRR();
            } else {
                encodeToString = Base64.encodeToString(decode, i | 8);
            }
            return zzdl.zzR(encodeToString);
        } catch (IllegalArgumentException e) {
            zzbo.e("Encode: invalid input:");
            return zzdl.zzRR();
        }
    }
}
