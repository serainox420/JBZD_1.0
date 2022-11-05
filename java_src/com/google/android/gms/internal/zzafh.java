package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzafb;
/* loaded from: classes2.dex */
public class zzafh extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzafh> CREATOR = new zzafi();
    public final int type;
    public final zzaen zzaJE;
    public zzafb zzaJF;
    public final com.google.android.gms.awareness.fence.zza zzaJG;
    public final PendingIntent zzaJH;
    public final long zzaJI;
    public final long zzaJJ;
    public final String zzaJv;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzafh(int i, zzaen zzaenVar, IBinder iBinder, PendingIntent pendingIntent, String str, long j, long j2) {
        this.type = i;
        this.zzaJE = zzaenVar;
        this.zzaJF = iBinder == null ? null : zzafb.zza.zzbF(iBinder);
        this.zzaJG = null;
        this.zzaJH = pendingIntent;
        this.zzaJv = str;
        this.zzaJI = j;
        this.zzaJJ = j2;
    }

    private zzafh(int i, zzaen zzaenVar, com.google.android.gms.awareness.fence.zza zzaVar, PendingIntent pendingIntent, String str, long j, long j2) {
        this.type = i;
        this.zzaJE = zzaenVar;
        this.zzaJF = null;
        this.zzaJG = zzaVar;
        this.zzaJH = pendingIntent;
        this.zzaJv = str;
        this.zzaJI = j;
        this.zzaJJ = j2;
    }

    public static final zzafh zza(PendingIntent pendingIntent) {
        return new zzafh(4, (zzaen) null, (com.google.android.gms.awareness.fence.zza) null, pendingIntent, (String) null, -1L, -1L);
    }

    public static final zzafh zza(String str, long j, zzaep zzaepVar, PendingIntent pendingIntent) {
        return new zzafh(2, zzaen.zza(str, j, zzaepVar), (com.google.android.gms.awareness.fence.zza) null, pendingIntent, (String) null, -1L, -1L);
    }

    public static final zzafh zzdC(String str) {
        return new zzafh(5, (zzaen) null, (com.google.android.gms.awareness.fence.zza) null, (PendingIntent) null, str, -1L, -1L);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzafi.zza(this, parcel, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public IBinder zzAh() {
        if (this.zzaJF == null) {
            return null;
        }
        return this.zzaJF.asBinder();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzb(zzcj<com.google.android.gms.awareness.fence.zza, zzaem> zzcjVar) {
        if (this.zzaJF != null || this.zzaJG == null) {
            return;
        }
        this.zzaJF = zzcjVar.zzc(this.zzaJG);
    }
}
