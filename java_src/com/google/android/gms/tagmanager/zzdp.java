package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzak;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
/* loaded from: classes2.dex */
class zzdp {
    private static zzce<zzak.zza> zza(zzce<zzak.zza> zzceVar) {
        try {
            return new zzce<>(zzdl.zzR(zzhD(zzdl.zze(zzceVar.getObject()))), zzceVar.zzQZ());
        } catch (UnsupportedEncodingException e) {
            zzbo.zzb("Escape URI: unsupported encoding", e);
            return zzceVar;
        }
    }

    private static zzce<zzak.zza> zza(zzce<zzak.zza> zzceVar, int i) {
        if (!zzl(zzceVar.getObject())) {
            zzbo.e("Escaping can only be applied to strings.");
            return zzceVar;
        }
        switch (i) {
            case 12:
                return zza(zzceVar);
            default:
                zzbo.e(new StringBuilder(39).append("Unsupported Value Escaping: ").append(i).toString());
                return zzceVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzce<zzak.zza> zza(zzce<zzak.zza> zzceVar, int... iArr) {
        for (int i : iArr) {
            zzceVar = zza(zzceVar, i);
        }
        return zzceVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zzhD(String str) throws UnsupportedEncodingException {
        return URLEncoder.encode(str, "UTF-8").replaceAll("\\+", "%20");
    }

    private static boolean zzl(zzak.zza zzaVar) {
        return zzdl.zzj(zzaVar) instanceof String;
    }
}
