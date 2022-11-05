package com.google.android.gms.internal;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.openx.view.mraid.JSInterface;
/* loaded from: classes2.dex */
public class zzbhh implements zzbcq {
    private Context mContext;
    private DisplayMetrics zzwY = new DisplayMetrics();

    public zzbhh(Context context) {
        this.mContext = context;
    }

    @Override // com.google.android.gms.internal.zzbcq
    public zzbit<?> zzb(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        boolean z = true;
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        if (zzbitVarArr.length != 0) {
            z = false;
        }
        com.google.android.gms.common.internal.zzac.zzax(z);
        ((WindowManager) this.mContext.getSystemService("window")).getDefaultDisplay().getMetrics(this.zzwY);
        return new zzbjb(this.zzwY.widthPixels + JSInterface.JSON_X + this.zzwY.heightPixels);
    }
}
