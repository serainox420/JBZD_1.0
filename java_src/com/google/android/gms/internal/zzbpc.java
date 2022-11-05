package com.google.android.gms.internal;

import com.google.android.gms.internal.zzbqy;
import com.google.firebase.database.c;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2.dex */
public abstract class zzbpc {
    static final /* synthetic */ boolean $assertionsDisabled;
    private zzbpd zzcec;
    private AtomicBoolean zzceb = new AtomicBoolean(false);
    private boolean zzced = false;

    static {
        $assertionsDisabled = !zzbpc.class.desiredAssertionStatus();
    }

    public void zzYK() {
        if (!this.zzceb.compareAndSet(false, true) || this.zzcec == null) {
            return;
        }
        this.zzcec.zzd(this);
        this.zzcec = null;
    }

    public boolean zzYL() {
        return this.zzceb.get();
    }

    public boolean zzYM() {
        return this.zzced;
    }

    public abstract zzbrc zzYn();

    public abstract zzbpc zza(zzbrc zzbrcVar);

    public abstract zzbqx zza(zzbqw zzbqwVar, zzbrc zzbrcVar);

    public void zza(zzbpd zzbpdVar) {
        if ($assertionsDisabled || !zzYL()) {
            if (!$assertionsDisabled && this.zzcec != null) {
                throw new AssertionError();
            }
            this.zzcec = zzbpdVar;
            return;
        }
        throw new AssertionError();
    }

    public abstract void zza(zzbqx zzbqxVar);

    public abstract void zza(c cVar);

    public abstract boolean zza(zzbqy.zza zzaVar);

    public void zzbf(boolean z) {
        this.zzced = z;
    }

    public abstract boolean zzc(zzbpc zzbpcVar);
}
