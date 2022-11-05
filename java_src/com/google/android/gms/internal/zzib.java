package com.google.android.gms.internal;

import android.text.TextUtils;
import com.facebook.internal.NativeProtocol;
import com.google.android.gms.plus.PlusShare;
import java.util.Map;
@zzme
/* loaded from: classes.dex */
public final class zzib implements zzid {
    private void zzc(zzqw zzqwVar, Map<String, String> map) {
        String str = map.get(PlusShare.KEY_CALL_TO_ACTION_LABEL);
        String str2 = map.get("start_label");
        String str3 = map.get("timestamp");
        if (TextUtils.isEmpty(str)) {
            zzpk.zzbh("No label given for CSI tick.");
        } else if (TextUtils.isEmpty(str3)) {
            zzpk.zzbh("No timestamp given for CSI tick.");
        } else {
            try {
                long zzd = zzd(Long.parseLong(str3));
                if (TextUtils.isEmpty(str2)) {
                    str2 = "native:view_load";
                }
                zzqwVar.zzlF().zza(str, str2, zzd);
            } catch (NumberFormatException e) {
                zzpk.zzc("Malformed timestamp for CSI tick.", e);
            }
        }
    }

    private long zzd(long j) {
        return (j - com.google.android.gms.ads.internal.zzw.zzcS().currentTimeMillis()) + com.google.android.gms.ads.internal.zzw.zzcS().elapsedRealtime();
    }

    private void zzd(zzqw zzqwVar, Map<String, String> map) {
        String str = map.get("value");
        if (TextUtils.isEmpty(str)) {
            zzpk.zzbh("No value given for CSI experiment.");
            return;
        }
        zzgl zzfA = zzqwVar.zzlF().zzfA();
        if (zzfA == null) {
            zzpk.zzbh("No ticker for WebView, dropping experiment ID.");
        } else {
            zzfA.zzh("e", str);
        }
    }

    private void zze(zzqw zzqwVar, Map<String, String> map) {
        String str = map.get("name");
        String str2 = map.get("value");
        if (TextUtils.isEmpty(str2)) {
            zzpk.zzbh("No value given for CSI extra.");
        } else if (TextUtils.isEmpty(str)) {
            zzpk.zzbh("No name given for CSI extra.");
        } else {
            zzgl zzfA = zzqwVar.zzlF().zzfA();
            if (zzfA == null) {
                zzpk.zzbh("No ticker for WebView, dropping extra parameter.");
            } else {
                zzfA.zzh(str, str2);
            }
        }
    }

    @Override // com.google.android.gms.internal.zzid
    public void zza(zzqw zzqwVar, Map<String, String> map) {
        String str = map.get(NativeProtocol.WEB_DIALOG_ACTION);
        if ("tick".equals(str)) {
            zzc(zzqwVar, map);
        } else if ("experiment".equals(str)) {
            zzd(zzqwVar, map);
        } else if (!"extra".equals(str)) {
        } else {
            zze(zzqwVar, map);
        }
    }
}
