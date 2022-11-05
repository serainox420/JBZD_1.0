package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.fitness.request.StartBleScanRequest;
/* loaded from: classes2.dex */
public interface zzaos extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzaos {

        /* renamed from: com.google.android.gms.internal.zzaos$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0234zza implements zzaos {
            private IBinder zzrk;

            C0234zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzaos
            public void zza(StartBleScanRequest startBleScanRequest) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitBleApi");
                    if (startBleScanRequest != null) {
                        obtain.writeInt(1);
                        startBleScanRequest.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaos
            public void zza(com.google.android.gms.fitness.request.zzak zzakVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitBleApi");
                    if (zzakVar != null) {
                        obtain.writeInt(1);
                        zzakVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaos
            public void zza(com.google.android.gms.fitness.request.zzb zzbVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitBleApi");
                    if (zzbVar != null) {
                        obtain.writeInt(1);
                        zzbVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaos
            public void zza(com.google.android.gms.fitness.request.zzbk zzbkVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitBleApi");
                    if (zzbkVar != null) {
                        obtain.writeInt(1);
                        zzbkVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaos
            public void zza(com.google.android.gms.fitness.request.zzbo zzboVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitBleApi");
                    if (zzboVar != null) {
                        obtain.writeInt(1);
                        zzboVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzaos zzcw(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.fitness.internal.IGoogleFitBleApi");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzaos)) ? new C0234zza(iBinder) : (zzaos) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            com.google.android.gms.fitness.request.zzak zzakVar = null;
            StartBleScanRequest startBleScanRequest = null;
            com.google.android.gms.fitness.request.zzbk zzbkVar = null;
            com.google.android.gms.fitness.request.zzb zzbVar = null;
            com.google.android.gms.fitness.request.zzbo zzboVar = null;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitBleApi");
                    if (parcel.readInt() != 0) {
                        startBleScanRequest = StartBleScanRequest.CREATOR.createFromParcel(parcel);
                    }
                    zza(startBleScanRequest);
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitBleApi");
                    if (parcel.readInt() != 0) {
                        zzbkVar = com.google.android.gms.fitness.request.zzbk.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzbkVar);
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitBleApi");
                    if (parcel.readInt() != 0) {
                        zzbVar = com.google.android.gms.fitness.request.zzb.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzbVar);
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitBleApi");
                    if (parcel.readInt() != 0) {
                        zzboVar = com.google.android.gms.fitness.request.zzbo.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzboVar);
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitBleApi");
                    if (parcel.readInt() != 0) {
                        zzakVar = com.google.android.gms.fitness.request.zzak.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzakVar);
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.fitness.internal.IGoogleFitBleApi");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(StartBleScanRequest startBleScanRequest) throws RemoteException;

    void zza(com.google.android.gms.fitness.request.zzak zzakVar) throws RemoteException;

    void zza(com.google.android.gms.fitness.request.zzb zzbVar) throws RemoteException;

    void zza(com.google.android.gms.fitness.request.zzbk zzbkVar) throws RemoteException;

    void zza(com.google.android.gms.fitness.request.zzbo zzboVar) throws RemoteException;
}
