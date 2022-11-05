package com.google.android.gms.internal;

import android.app.Activity;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.concurrent.CancellationException;
/* loaded from: classes2.dex */
public class zzabj extends zzaae {
    private TaskCompletionSource<Void> zzazE;

    private zzabj(zzabf zzabfVar) {
        super(zzabfVar);
        this.zzazE = new TaskCompletionSource<>();
        this.zzaCR.zza("GmsAvailabilityHelper", this);
    }

    public static zzabj zzu(Activity activity) {
        zzabf zzs = zzs(activity);
        zzabj zzabjVar = (zzabj) zzs.zza("GmsAvailabilityHelper", zzabj.class);
        if (zzabjVar != null) {
            if (!zzabjVar.zzazE.getTask().isComplete()) {
                return zzabjVar;
            }
            zzabjVar.zzazE = new TaskCompletionSource<>();
            return zzabjVar;
        }
        return new zzabj(zzs);
    }

    public Task<Void> getTask() {
        return this.zzazE.getTask();
    }

    @Override // com.google.android.gms.internal.zzabe
    public void onDestroy() {
        super.onDestroy();
        this.zzazE.setException(new CancellationException("Host activity was destroyed before Google Play services could be made available."));
    }

    @Override // com.google.android.gms.internal.zzaae
    protected void zza(ConnectionResult connectionResult, int i) {
        this.zzazE.setException(com.google.android.gms.common.internal.zzb.zzl(connectionResult));
    }

    public void zzk(ConnectionResult connectionResult) {
        zzb(connectionResult, 0);
    }

    @Override // com.google.android.gms.internal.zzaae
    protected void zzvx() {
        int isGooglePlayServicesAvailable = this.zzazn.isGooglePlayServicesAvailable(this.zzaCR.zzwV());
        if (isGooglePlayServicesAvailable == 0) {
            this.zzazE.setResult(null);
        } else {
            zzk(new ConnectionResult(isGooglePlayServicesAvailable, null));
        }
    }
}
