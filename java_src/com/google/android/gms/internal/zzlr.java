package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.internal.zzlq;
import com.google.android.gms.internal.zzpb;
import com.google.android.gms.internal.zzqx;
@zzme
/* loaded from: classes.dex */
public class zzlr extends zzlo implements zzqx.zza {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzlr(Context context, zzpb.zza zzaVar, zzqw zzqwVar, zzlq.zza zzaVar2) {
        super(context, zzaVar, zzqwVar, zzaVar2);
    }

    @Override // com.google.android.gms.internal.zzlo
    protected void zziO() {
        if (this.zzPS.errorCode != -2) {
            return;
        }
        this.zzIs.zzlv().zza(this);
        zziQ();
        zzpk.zzbf("Loading HTML in WebView.");
        this.zzIs.loadDataWithBaseURL(this.zzPS.zzNJ, this.zzPS.body, "text/html", "UTF-8", null);
    }

    protected void zziQ() {
    }
}
