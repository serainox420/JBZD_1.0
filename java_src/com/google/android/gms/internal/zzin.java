package com.google.android.gms.internal;

import android.text.TextUtils;
import com.facebook.internal.NativeProtocol;
import java.util.Map;
@zzme
/* loaded from: classes.dex */
public class zzin implements zzid {
    private final zza zzIu;

    /* loaded from: classes2.dex */
    public interface zza {
        void zzb(zzoo zzooVar);

        void zzcn();
    }

    public zzin(zza zzaVar) {
        this.zzIu = zzaVar;
    }

    public static void zza(zzqw zzqwVar, zza zzaVar) {
        zzqwVar.zzlv().zza("/reward", new zzin(zzaVar));
    }

    private void zzf(Map<String, String> map) {
        zzoo zzooVar;
        int parseInt;
        String str;
        try {
            parseInt = Integer.parseInt(map.get("amount"));
            str = map.get("type");
        } catch (NumberFormatException e) {
            zzpk.zzc("Unable to parse reward amount.", e);
        }
        if (!TextUtils.isEmpty(str)) {
            zzooVar = new zzoo(str, parseInt);
            this.zzIu.zzb(zzooVar);
        }
        zzooVar = null;
        this.zzIu.zzb(zzooVar);
    }

    private void zzg(Map<String, String> map) {
        this.zzIu.zzcn();
    }

    @Override // com.google.android.gms.internal.zzid
    public void zza(zzqw zzqwVar, Map<String, String> map) {
        String str = map.get(NativeProtocol.WEB_DIALOG_ACTION);
        if ("grant".equals(str)) {
            zzf(map);
        } else if (!"video_start".equals(str)) {
        } else {
            zzg(map);
        }
    }
}
