package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.mobileads.VastIconXmlManager;
import java.util.Map;
@zzme
/* loaded from: classes.dex */
class zzip implements zzid {
    private int zzh(Map<String, String> map) throws NullPointerException, NumberFormatException {
        int parseInt = Integer.parseInt(map.get("playbackState"));
        if (parseInt < 0 || 3 < parseInt) {
            return 0;
        }
        return parseInt;
    }

    @Override // com.google.android.gms.internal.zzid
    public void zza(zzqw zzqwVar, Map<String, String> map) {
        zzrb zzrbVar;
        if (!zzgd.zzDE.get().booleanValue()) {
            return;
        }
        zzrb zzlG = zzqwVar.zzlG();
        if (zzlG == null) {
            try {
                zzrb zzrbVar2 = new zzrb(zzqwVar, Float.parseFloat(map.get(VastIconXmlManager.DURATION)));
                zzqwVar.zza(zzrbVar2);
                zzrbVar = zzrbVar2;
            } catch (NullPointerException | NumberFormatException e) {
                zzpk.zzb("Unable to parse videoMeta message.", e);
                com.google.android.gms.ads.internal.zzw.zzcQ().zza(e, "VideoMetaGmsgHandler.onGmsg");
                return;
            }
        } else {
            zzrbVar = zzlG;
        }
        boolean equals = "1".equals(map.get("muted"));
        float parseFloat = Float.parseFloat(map.get("currentTime"));
        int zzh = zzh(map);
        String str = map.get("aspectRatio");
        float parseFloat2 = TextUtils.isEmpty(str) ? BitmapDescriptorFactory.HUE_RED : Float.parseFloat(str);
        if (zzpk.zzak(3)) {
            zzpk.zzbf(new StringBuilder(String.valueOf(str).length() + 79).append("Video Meta GMSG: isMuted : ").append(equals).append(" , playbackState : ").append(zzh).append(" , aspectRatio : ").append(str).toString());
        }
        zzrbVar.zza(parseFloat, zzh, equals, parseFloat2);
    }
}
