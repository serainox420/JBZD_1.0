package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzasc;
import com.google.android.gms.location.zzj;
import com.google.android.gms.location.zzk;
/* loaded from: classes2.dex */
public class zzask extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzask> CREATOR = new zzasl();
    PendingIntent mPendingIntent;
    int zzbkP;
    zzasi zzbkQ;
    com.google.android.gms.location.zzk zzbkR;
    com.google.android.gms.location.zzj zzbkS;
    zzasc zzbkT;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzask(int i, zzasi zzasiVar, IBinder iBinder, PendingIntent pendingIntent, IBinder iBinder2, IBinder iBinder3) {
        zzasc zzascVar = null;
        this.zzbkP = i;
        this.zzbkQ = zzasiVar;
        this.zzbkR = iBinder == null ? null : zzk.zza.zzde(iBinder);
        this.mPendingIntent = pendingIntent;
        this.zzbkS = iBinder2 == null ? null : zzj.zza.zzdd(iBinder2);
        this.zzbkT = iBinder3 != null ? zzasc.zza.zzdg(iBinder3) : zzascVar;
    }

    public static zzask zza(zzasi zzasiVar, PendingIntent pendingIntent, zzasc zzascVar) {
        return new zzask(1, zzasiVar, null, pendingIntent, null, zzascVar != null ? zzascVar.asBinder() : null);
    }

    public static zzask zza(zzasi zzasiVar, com.google.android.gms.location.zzj zzjVar, zzasc zzascVar) {
        return new zzask(1, zzasiVar, null, null, zzjVar.asBinder(), zzascVar != null ? zzascVar.asBinder() : null);
    }

    public static zzask zza(zzasi zzasiVar, com.google.android.gms.location.zzk zzkVar, zzasc zzascVar) {
        return new zzask(1, zzasiVar, zzkVar.asBinder(), null, null, zzascVar != null ? zzascVar.asBinder() : null);
    }

    public static zzask zza(com.google.android.gms.location.zzj zzjVar, zzasc zzascVar) {
        return new zzask(2, null, null, null, zzjVar.asBinder(), zzascVar != null ? zzascVar.asBinder() : null);
    }

    public static zzask zza(com.google.android.gms.location.zzk zzkVar, zzasc zzascVar) {
        return new zzask(2, null, zzkVar.asBinder(), null, null, zzascVar != null ? zzascVar.asBinder() : null);
    }

    public static zzask zzb(PendingIntent pendingIntent, zzasc zzascVar) {
        return new zzask(2, null, null, pendingIntent, null, zzascVar != null ? zzascVar.asBinder() : null);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzasl.zza(this, parcel, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public IBinder zzIr() {
        if (this.zzbkR == null) {
            return null;
        }
        return this.zzbkR.asBinder();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public IBinder zzIs() {
        if (this.zzbkS == null) {
            return null;
        }
        return this.zzbkS.asBinder();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public IBinder zzIt() {
        if (this.zzbkT == null) {
            return null;
        }
        return this.zzbkT.asBinder();
    }
}
