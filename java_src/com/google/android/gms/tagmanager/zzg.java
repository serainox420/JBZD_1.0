package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.pm.PackageManager;
import com.google.android.gms.internal.zzak;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class zzg extends zzam {
    private static final String ID = com.google.android.gms.internal.zzah.APP_NAME.toString();
    private final Context mContext;

    public zzg(Context context) {
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
            PackageManager packageManager = this.mContext.getPackageManager();
            return zzdl.zzR(packageManager.getApplicationLabel(packageManager.getApplicationInfo(this.mContext.getPackageName(), 0)).toString());
        } catch (PackageManager.NameNotFoundException e) {
            zzbo.zzb("App name is not found.", e);
            return zzdl.zzRR();
        }
    }
}
