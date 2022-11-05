package com.google.android.gms.tagmanager;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.google.android.gms.internal.zzak;
import com.openx.view.mraid.JSInterface;
import java.util.Map;
/* loaded from: classes2.dex */
class zzco extends zzam {
    private static final String ID = com.google.android.gms.internal.zzah.RESOLUTION.toString();
    private final Context mContext;

    public zzco(Context context) {
        super(ID, new String[0]);
        this.mContext = context;
    }

    @Override // com.google.android.gms.tagmanager.zzam
    public boolean zzQb() {
        return true;
    }

    @Override // com.google.android.gms.tagmanager.zzam
    public zzak.zza zzZ(Map<String, zzak.zza> map) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) this.mContext.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        int i = displayMetrics.widthPixels;
        return zzdl.zzR(new StringBuilder(23).append(i).append(JSInterface.JSON_X).append(displayMetrics.heightPixels).toString());
    }
}
