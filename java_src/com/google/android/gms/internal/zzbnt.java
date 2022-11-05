package com.google.android.gms.internal;

import com.google.android.gms.internal.zzbow;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.firebase.FirebaseApiNotAvailableException;
import com.google.firebase.a;
import com.google.firebase.auth.e;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2.dex */
public class zzbnt implements zzbow {
    private final ScheduledExecutorService zzcat;
    private final a zzcau;

    public zzbnt(a aVar, ScheduledExecutorService scheduledExecutorService) {
        this.zzcau = aVar;
        this.zzcat = scheduledExecutorService;
    }

    private a.InterfaceC0496a zzb(final zzbow.zzb zzbVar) {
        return new a.InterfaceC0496a() { // from class: com.google.android.gms.internal.zzbnt.3
            @Override // com.google.firebase.a.InterfaceC0496a
            public void zzb(final zzbtj zzbtjVar) {
                zzbnt.this.zzcat.execute(new Runnable() { // from class: com.google.android.gms.internal.zzbnt.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        zzbVar.zziU(zzbtjVar.getToken());
                    }
                });
            }
        };
    }

    @Override // com.google.android.gms.internal.zzbow
    public void zza(zzbow.zzb zzbVar) {
        this.zzcau.a(zzb(zzbVar));
    }

    @Override // com.google.android.gms.internal.zzbow
    public void zza(boolean z, final zzbow.zza zzaVar) {
        this.zzcau.b(z).addOnSuccessListener(this.zzcat, new OnSuccessListener<e>(this) { // from class: com.google.android.gms.internal.zzbnt.2
            @Override // com.google.android.gms.tasks.OnSuccessListener
            /* renamed from: zza */
            public void onSuccess(e eVar) {
                zzaVar.zziL(eVar.a());
            }
        }).addOnFailureListener(this.zzcat, new OnFailureListener(this) { // from class: com.google.android.gms.internal.zzbnt.1
            private boolean zza(Exception exc) {
                return (exc instanceof FirebaseApiNotAvailableException) || (exc instanceof zzbtk);
            }

            @Override // com.google.android.gms.tasks.OnFailureListener
            public void onFailure(Exception exc) {
                if (zza(exc)) {
                    zzaVar.zziL(null);
                } else {
                    zzaVar.onError(exc.getMessage());
                }
            }
        });
    }
}
