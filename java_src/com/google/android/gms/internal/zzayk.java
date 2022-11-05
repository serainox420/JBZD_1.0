package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.nearby.messages.MessageListener;
import com.google.android.gms.nearby.messages.internal.Update;
import com.google.android.gms.nearby.messages.internal.zzm;
import java.util.List;
/* loaded from: classes2.dex */
public class zzayk extends zzm.zza implements zzayj<MessageListener> {
    private final zzabh<MessageListener> zzbBp;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzayk(zzabh<MessageListener> zzabhVar) {
        this.zzbBp = zzabhVar;
    }

    @Override // com.google.android.gms.nearby.messages.internal.zzm
    public void zzL(final List<Update> list) throws RemoteException {
        this.zzbBp.zza(new zzaym<MessageListener>(this) { // from class: com.google.android.gms.internal.zzayk.1
            @Override // com.google.android.gms.internal.zzabh.zzc
            /* renamed from: zzb */
            public void zzs(MessageListener messageListener) {
                com.google.android.gms.nearby.messages.internal.zzy.zza(list, messageListener);
            }
        });
    }

    @Override // com.google.android.gms.internal.zzayj
    public zzabh<MessageListener> zzOP() {
        return this.zzbBp;
    }

    @Override // com.google.android.gms.nearby.messages.internal.zzm
    public void zza(com.google.android.gms.nearby.messages.internal.zzv zzvVar) {
    }

    @Override // com.google.android.gms.nearby.messages.internal.zzm
    public void zzb(com.google.android.gms.nearby.messages.internal.zzv zzvVar) {
    }
}
