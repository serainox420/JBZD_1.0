package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.fitness.service.FitnessSensorServiceRequest;
import com.google.android.gms.internal.zzaon;
import com.google.android.gms.internal.zzapf;
/* loaded from: classes2.dex */
public interface zzapz extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzapz {
        public zza() {
            attachInterface(this, "com.google.android.gms.fitness.internal.service.IFitnessSensorService");
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            zzapx zzapxVar = null;
            zzapv zzapvVar = null;
            FitnessSensorServiceRequest fitnessSensorServiceRequest = null;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.service.IFitnessSensorService");
                    if (parcel.readInt() != 0) {
                        zzapvVar = zzapv.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzapvVar, zzaon.zza.zzcr(parcel.readStrongBinder()));
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.service.IFitnessSensorService");
                    if (parcel.readInt() != 0) {
                        fitnessSensorServiceRequest = FitnessSensorServiceRequest.CREATOR.createFromParcel(parcel);
                    }
                    zza(fitnessSensorServiceRequest, zzapf.zza.zzcJ(parcel.readStrongBinder()));
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.service.IFitnessSensorService");
                    if (parcel.readInt() != 0) {
                        zzapxVar = zzapx.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzapxVar, zzapf.zza.zzcJ(parcel.readStrongBinder()));
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.fitness.internal.service.IFitnessSensorService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(FitnessSensorServiceRequest fitnessSensorServiceRequest, zzapf zzapfVar) throws RemoteException;

    void zza(zzapv zzapvVar, zzaon zzaonVar) throws RemoteException;

    void zza(zzapx zzapxVar, zzapf zzapfVar) throws RemoteException;
}
