package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.fitness.data.Session;
import com.google.android.gms.internal.zzapf;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class zzbd extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzbd> CREATOR = new zzbe();
    private final Session zzaSj;
    private final zzapf zzaVt;
    private final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbd(int i, Session session, IBinder iBinder) {
        this.zzaiI = i;
        this.zzaSj = session;
        this.zzaVt = zzapf.zza.zzcJ(iBinder);
    }

    public zzbd(Session session, zzapf zzapfVar) {
        com.google.android.gms.common.internal.zzac.zzb(session.getStartTime(TimeUnit.MILLISECONDS) < System.currentTimeMillis(), "Cannot start a session in the future");
        com.google.android.gms.common.internal.zzac.zzb(session.isOngoing(), "Cannot start a session which has already ended");
        this.zzaiI = 3;
        this.zzaSj = session;
        this.zzaVt = zzapfVar;
    }

    private boolean zzb(zzbd zzbdVar) {
        return com.google.android.gms.common.internal.zzaa.equal(this.zzaSj, zzbdVar.zzaSj);
    }

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof zzbd) && zzb((zzbd) obj));
    }

    public IBinder getCallbackBinder() {
        if (this.zzaVt == null) {
            return null;
        }
        return this.zzaVt.asBinder();
    }

    public Session getSession() {
        return this.zzaSj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getVersionCode() {
        return this.zzaiI;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(this.zzaSj);
    }

    public String toString() {
        return com.google.android.gms.common.internal.zzaa.zzv(this).zzg("session", this.zzaSj).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzbe.zza(this, parcel, i);
    }
}
