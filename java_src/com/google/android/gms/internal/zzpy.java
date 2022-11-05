package com.google.android.gms.internal;

import android.content.Context;
@zzme
/* loaded from: classes.dex */
public final class zzpy extends zzpj {
    private final String zzE;
    private final zzqg zzYD;

    public zzpy(Context context, String str, String str2) {
        this(str2, com.google.android.gms.ads.internal.zzw.zzcM().zzu(context, str));
    }

    public zzpy(String str, String str2) {
        this.zzYD = new zzqg(str2);
        this.zzE = str;
    }

    @Override // com.google.android.gms.internal.zzpj
    public void onStop() {
    }

    @Override // com.google.android.gms.internal.zzpj
    public void zzco() {
        this.zzYD.zzu(this.zzE);
    }
}
