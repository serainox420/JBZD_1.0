package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzak;
import com.pubmatic.sdk.common.CommonConstants;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class zzar extends zzam {
    private static final String ID = com.google.android.gms.internal.zzah.HASH.toString();
    private static final String zzbGf = com.google.android.gms.internal.zzai.ARG0.toString();
    private static final String zzbGl = com.google.android.gms.internal.zzai.ALGORITHM.toString();
    private static final String zzbGh = com.google.android.gms.internal.zzai.INPUT_FORMAT.toString();

    public zzar() {
        super(ID, zzbGf);
    }

    private byte[] zzf(String str, byte[] bArr) throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance(str);
        messageDigest.update(bArr);
        return messageDigest.digest();
    }

    @Override // com.google.android.gms.tagmanager.zzam
    public boolean zzQb() {
        return true;
    }

    @Override // com.google.android.gms.tagmanager.zzam
    public zzak.zza zzZ(Map<String, zzak.zza> map) {
        byte[] zzgR;
        zzak.zza zzaVar = map.get(zzbGf);
        if (zzaVar == null || zzaVar == zzdl.zzRR()) {
            return zzdl.zzRR();
        }
        String zze = zzdl.zze(zzaVar);
        zzak.zza zzaVar2 = map.get(zzbGl);
        String zze2 = zzaVar2 == null ? "MD5" : zzdl.zze(zzaVar2);
        zzak.zza zzaVar3 = map.get(zzbGh);
        String zze3 = zzaVar3 == null ? CommonConstants.RESPONSE_TEXT : zzdl.zze(zzaVar3);
        if (CommonConstants.RESPONSE_TEXT.equals(zze3)) {
            zzgR = zze.getBytes();
        } else if (!"base16".equals(zze3)) {
            String valueOf = String.valueOf(zze3);
            zzbo.e(valueOf.length() != 0 ? "Hash: unknown input format: ".concat(valueOf) : new String("Hash: unknown input format: "));
            return zzdl.zzRR();
        } else {
            zzgR = zzk.zzgR(zze);
        }
        try {
            return zzdl.zzR(zzk.zzq(zzf(zze2, zzgR)));
        } catch (NoSuchAlgorithmException e) {
            String valueOf2 = String.valueOf(zze2);
            zzbo.e(valueOf2.length() != 0 ? "Hash: unknown algorithm: ".concat(valueOf2) : new String("Hash: unknown algorithm: "));
            return zzdl.zzRR();
        }
    }
}
