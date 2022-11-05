package com.google.android.gms.internal;

import android.app.Activity;
import com.google.android.gms.common.ConnectionResult;
/* loaded from: classes2.dex */
public class zzaam extends zzaae {
    private final com.google.android.gms.common.util.zza<zzzz<?>> zzaBh;
    private zzaax zzayX;

    private zzaam(zzabf zzabfVar) {
        super(zzabfVar);
        this.zzaBh = new com.google.android.gms.common.util.zza<>();
        this.zzaCR.zza("ConnectionlessLifecycleHelper", this);
    }

    public static void zza(Activity activity, zzaax zzaaxVar, zzzz<?> zzzzVar) {
        zzabf zzs = zzs(activity);
        zzaam zzaamVar = (zzaam) zzs.zza("ConnectionlessLifecycleHelper", zzaam.class);
        if (zzaamVar == null) {
            zzaamVar = new zzaam(zzs);
        }
        zzaamVar.zzayX = zzaaxVar;
        zzaamVar.zza(zzzzVar);
        zzaaxVar.zza(zzaamVar);
    }

    private void zza(zzzz<?> zzzzVar) {
        com.google.android.gms.common.internal.zzac.zzb(zzzzVar, "ApiKey cannot be null");
        this.zzaBh.add(zzzzVar);
    }

    @Override // com.google.android.gms.internal.zzaae, com.google.android.gms.internal.zzabe
    public void onStart() {
        super.onStart();
        if (!this.zzaBh.isEmpty()) {
            this.zzayX.zza(this);
        }
    }

    @Override // com.google.android.gms.internal.zzaae, com.google.android.gms.internal.zzabe
    public void onStop() {
        super.onStop();
        this.zzayX.zzb(this);
    }

    @Override // com.google.android.gms.internal.zzaae
    protected void zza(ConnectionResult connectionResult, int i) {
        this.zzayX.zza(connectionResult, i);
    }

    @Override // com.google.android.gms.internal.zzaae
    protected void zzvx() {
        this.zzayX.zzvx();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com.google.android.gms.common.util.zza<zzzz<?>> zzwb() {
        return this.zzaBh;
    }
}
