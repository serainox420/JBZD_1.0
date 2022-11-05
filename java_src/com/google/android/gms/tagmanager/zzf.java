package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.zzak;
import java.util.Map;
/* loaded from: classes2.dex */
class zzf extends zzam {
    private static final String ID = com.google.android.gms.internal.zzah.APP_ID.toString();
    private final Context mContext;

    public zzf(Context context) {
        super(ID, new String[0]);
        this.mContext = context;
    }

    @Override // com.google.android.gms.tagmanager.zzam
    public boolean zzQb() {
        return true;
    }

    @Override // com.google.android.gms.tagmanager.zzam
    public zzak.zza zzZ(Map<String, zzak.zza> map) {
        return zzdl.zzR(this.mContext.getPackageName());
    }
}
