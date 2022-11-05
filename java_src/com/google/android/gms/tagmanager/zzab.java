package com.google.android.gms.tagmanager;

import android.content.Context;
import android.provider.Settings;
import com.google.android.gms.internal.zzak;
import java.util.Map;
/* loaded from: classes2.dex */
class zzab extends zzam {
    private static final String ID = com.google.android.gms.internal.zzah.DEVICE_ID.toString();
    private final Context mContext;

    public zzab(Context context) {
        super(ID, new String[0]);
        this.mContext = context;
    }

    @Override // com.google.android.gms.tagmanager.zzam
    public boolean zzQb() {
        return true;
    }

    @Override // com.google.android.gms.tagmanager.zzam
    public zzak.zza zzZ(Map<String, zzak.zza> map) {
        String zzbU = zzbU(this.mContext);
        return zzbU == null ? zzdl.zzRR() : zzdl.zzR(zzbU);
    }

    protected String zzbU(Context context) {
        return Settings.Secure.getString(context.getContentResolver(), "android_id");
    }
}
