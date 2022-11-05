package com.google.android.gms.internal;

import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.internal.zzhr;
@zzme
/* loaded from: classes.dex */
public class zzhw extends zzhr.zza {
    private final NativeCustomTemplateAd.OnCustomClickListener zzHA;

    public zzhw(NativeCustomTemplateAd.OnCustomClickListener onCustomClickListener) {
        this.zzHA = onCustomClickListener;
    }

    @Override // com.google.android.gms.internal.zzhr
    public void zza(zzhn zzhnVar, String str) {
        this.zzHA.onCustomClick(new zzho(zzhnVar), str);
    }
}
