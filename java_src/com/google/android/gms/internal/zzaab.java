package com.google.android.gms.internal;

import android.support.v4.f.a;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Set;
/* loaded from: classes2.dex */
public final class zzaab {
    private int zzazT;
    private final TaskCompletionSource<Void> zzazS = new TaskCompletionSource<>();
    private boolean zzazU = false;
    private final a<zzzz<?>, ConnectionResult> zzayL = new a<>();

    public zzaab(Iterable<? extends com.google.android.gms.common.api.zzc<?>> iterable) {
        for (com.google.android.gms.common.api.zzc<?> zzcVar : iterable) {
            this.zzayL.put(zzcVar.getApiKey(), null);
        }
        this.zzazT = this.zzayL.keySet().size();
    }

    public Task<Void> getTask() {
        return this.zzazS.getTask();
    }

    public void zza(zzzz<?> zzzzVar, ConnectionResult connectionResult) {
        this.zzayL.put(zzzzVar, connectionResult);
        this.zzazT--;
        if (!connectionResult.isSuccess()) {
            this.zzazU = true;
        }
        if (this.zzazT == 0) {
            if (!this.zzazU) {
                this.zzazS.setResult(null);
                return;
            }
            this.zzazS.setException(new com.google.android.gms.common.api.zzb(this.zzayL));
        }
    }

    public void zzvA() {
        this.zzazS.setResult(null);
    }

    public Set<zzzz<?>> zzvz() {
        return this.zzayL.keySet();
    }
}
