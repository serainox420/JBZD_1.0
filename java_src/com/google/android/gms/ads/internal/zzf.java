package com.google.android.gms.ads.internal;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.internal.zzme;
import com.google.android.gms.internal.zzmp;
import com.google.android.gms.internal.zzpb;
import com.google.android.gms.internal.zzpk;
@zzme
/* loaded from: classes.dex */
public class zzf {
    private final Context mContext;
    private final zzmp zzsQ;
    private boolean zzsR;

    public zzf(Context context) {
        this(context, false);
    }

    public zzf(Context context, zzpb.zza zzaVar) {
        this.mContext = context;
        if (zzaVar == null || zzaVar.zzWm.zzSG == null) {
            this.zzsQ = new zzmp();
        } else {
            this.zzsQ = zzaVar.zzWm.zzSG;
        }
    }

    public zzf(Context context, boolean z) {
        this.mContext = context;
        this.zzsQ = new zzmp(z);
    }

    public void recordClick() {
        this.zzsR = true;
    }

    public boolean zzcd() {
        return !this.zzsQ.zzSL || this.zzsR;
    }

    public void zzx(String str) {
        if (str == null) {
            str = "";
        }
        zzpk.zzbg("Action was blocked because no touch was detected.");
        if (!this.zzsQ.zzSL || this.zzsQ.zzSM == null) {
            return;
        }
        for (String str2 : this.zzsQ.zzSM) {
            if (!TextUtils.isEmpty(str2)) {
                zzw.zzcM().zzf(this.mContext, "", str2.replace("{NAVIGATION_URL}", Uri.encode(str)));
            }
        }
    }
}
