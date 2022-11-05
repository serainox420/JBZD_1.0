package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.pm.PackageManager;
import com.google.android.gms.internal.zzak;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class zzh extends zzam {
    private static final String ID = com.google.android.gms.internal.zzah.APP_VERSION.toString();
    private final Context mContext;

    public zzh(Context context) {
        super(ID, new String[0]);
        this.mContext = context;
    }

    @Override // com.google.android.gms.tagmanager.zzam
    public boolean zzQb() {
        return true;
    }

    @Override // com.google.android.gms.tagmanager.zzam
    public zzak.zza zzZ(Map<String, zzak.zza> map) {
        try {
            return zzdl.zzR(Integer.valueOf(this.mContext.getPackageManager().getPackageInfo(this.mContext.getPackageName(), 0).versionCode));
        } catch (PackageManager.NameNotFoundException e) {
            String valueOf = String.valueOf(this.mContext.getPackageName());
            String valueOf2 = String.valueOf(e.getMessage());
            zzbo.e(new StringBuilder(String.valueOf(valueOf).length() + 25 + String.valueOf(valueOf2).length()).append("Package name ").append(valueOf).append(" not found. ").append(valueOf2).toString());
            return zzdl.zzRR();
        }
    }
}
