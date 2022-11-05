package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.fitness.request.DataDeleteRequest;
import com.google.android.gms.fitness.request.DataReadRequest;
import com.google.android.gms.fitness.request.DataUpdateListenerRegistrationRequest;
import com.google.android.gms.fitness.request.DataUpdateRequest;
/* loaded from: classes2.dex */
public interface zzaov extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzaov {

        /* renamed from: com.google.android.gms.internal.zzaov$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0237zza implements zzaov {
            private IBinder zzrk;

            C0237zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzaov
            public void zza(DataDeleteRequest dataDeleteRequest) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitHistoryApi");
                    if (dataDeleteRequest != null) {
                        obtain.writeInt(1);
                        dataDeleteRequest.writeToParcel(obtain, 0);
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

            @Override // com.google.android.gms.internal.zzaov
            public void zza(DataReadRequest dataReadRequest) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitHistoryApi");
                    if (dataReadRequest != null) {
                        obtain.writeInt(1);
                        dataReadRequest.writeToParcel(obtain, 0);
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

            @Override // com.google.android.gms.internal.zzaov
            public void zza(DataUpdateListenerRegistrationRequest dataUpdateListenerRegistrationRequest) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitHistoryApi");
                    if (dataUpdateListenerRegistrationRequest != null) {
                        obtain.writeInt(1);
                        dataUpdateListenerRegistrationRequest.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaov
            public void zza(DataUpdateRequest dataUpdateRequest) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitHistoryApi");
                    if (dataUpdateRequest != null) {
                        obtain.writeInt(1);
                        dataUpdateRequest.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaov
            public void zza(com.google.android.gms.fitness.request.zzad zzadVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitHistoryApi");
                    if (zzadVar != null) {
                        obtain.writeInt(1);
                        zzadVar.writeToParcel(obtain, 0);
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

            @Override // com.google.android.gms.internal.zzaov
            public void zza(com.google.android.gms.fitness.request.zzaf zzafVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitHistoryApi");
                    if (zzafVar != null) {
                        obtain.writeInt(1);
                        zzafVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(15, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaov
            public void zza(com.google.android.gms.fitness.request.zzar zzarVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitHistoryApi");
                    if (zzarVar != null) {
                        obtain.writeInt(1);
                        zzarVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaov
            public void zza(com.google.android.gms.fitness.request.zzat zzatVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitHistoryApi");
                    if (zzatVar != null) {
                        obtain.writeInt(1);
                        zzatVar.writeToParcel(obtain, 0);
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

            @Override // com.google.android.gms.internal.zzaov
            public void zza(com.google.android.gms.fitness.request.zzbs zzbsVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitHistoryApi");
                    if (zzbsVar != null) {
                        obtain.writeInt(1);
                        zzbsVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(14, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaov
            public void zza(com.google.android.gms.fitness.request.zzd zzdVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitHistoryApi");
                    if (zzdVar != null) {
                        obtain.writeInt(1);
                        zzdVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaov
            public void zza(com.google.android.gms.fitness.request.zzg zzgVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitHistoryApi");
                    if (zzgVar != null) {
                        obtain.writeInt(1);
                        zzgVar.writeToParcel(obtain, 0);
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

            @Override // com.google.android.gms.internal.zzaov
            public void zza(com.google.android.gms.fitness.request.zzq zzqVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitHistoryApi");
                    if (zzqVar != null) {
                        obtain.writeInt(1);
                        zzqVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaov
            public void zza(com.google.android.gms.fitness.request.zzt zztVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitHistoryApi");
                    if (zztVar != null) {
                        obtain.writeInt(1);
                        zztVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(13, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaov
            public void zza(com.google.android.gms.fitness.request.zzz zzzVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitHistoryApi");
                    if (zzzVar != null) {
                        obtain.writeInt(1);
                        zzzVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(12, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaov
            public void zzb(com.google.android.gms.fitness.request.zzg zzgVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitHistoryApi");
                    if (zzgVar != null) {
                        obtain.writeInt(1);
                        zzgVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzaov zzcz(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.fitness.internal.IGoogleFitHistoryApi");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzaov)) ? new C0237zza(iBinder) : (zzaov) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            com.google.android.gms.fitness.request.zzaf zzafVar = null;
            DataReadRequest dataReadRequest = null;
            com.google.android.gms.fitness.request.zzg zzgVar = null;
            DataDeleteRequest dataDeleteRequest = null;
            com.google.android.gms.fitness.request.zzad zzadVar = null;
            com.google.android.gms.fitness.request.zzat zzatVar = null;
            com.google.android.gms.fitness.request.zzar zzarVar = null;
            com.google.android.gms.fitness.request.zzd zzdVar = null;
            com.google.android.gms.fitness.request.zzg zzgVar2 = null;
            DataUpdateRequest dataUpdateRequest = null;
            DataUpdateListenerRegistrationRequest dataUpdateListenerRegistrationRequest = null;
            com.google.android.gms.fitness.request.zzq zzqVar = null;
            com.google.android.gms.fitness.request.zzz zzzVar = null;
            com.google.android.gms.fitness.request.zzt zztVar = null;
            com.google.android.gms.fitness.request.zzbs zzbsVar = null;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitHistoryApi");
                    if (parcel.readInt() != 0) {
                        dataReadRequest = DataReadRequest.CREATOR.createFromParcel(parcel);
                    }
                    zza(dataReadRequest);
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitHistoryApi");
                    if (parcel.readInt() != 0) {
                        zzgVar = com.google.android.gms.fitness.request.zzg.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzgVar);
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitHistoryApi");
                    if (parcel.readInt() != 0) {
                        dataDeleteRequest = DataDeleteRequest.CREATOR.createFromParcel(parcel);
                    }
                    zza(dataDeleteRequest);
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitHistoryApi");
                    if (parcel.readInt() != 0) {
                        zzadVar = com.google.android.gms.fitness.request.zzad.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzadVar);
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitHistoryApi");
                    if (parcel.readInt() != 0) {
                        zzatVar = com.google.android.gms.fitness.request.zzat.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzatVar);
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitHistoryApi");
                    if (parcel.readInt() != 0) {
                        zzarVar = com.google.android.gms.fitness.request.zzar.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzarVar);
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitHistoryApi");
                    if (parcel.readInt() != 0) {
                        zzdVar = com.google.android.gms.fitness.request.zzd.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzdVar);
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitHistoryApi");
                    if (parcel.readInt() != 0) {
                        zzgVar2 = com.google.android.gms.fitness.request.zzg.CREATOR.createFromParcel(parcel);
                    }
                    zzb(zzgVar2);
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitHistoryApi");
                    if (parcel.readInt() != 0) {
                        dataUpdateRequest = DataUpdateRequest.CREATOR.createFromParcel(parcel);
                    }
                    zza(dataUpdateRequest);
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitHistoryApi");
                    if (parcel.readInt() != 0) {
                        dataUpdateListenerRegistrationRequest = DataUpdateListenerRegistrationRequest.CREATOR.createFromParcel(parcel);
                    }
                    zza(dataUpdateListenerRegistrationRequest);
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitHistoryApi");
                    if (parcel.readInt() != 0) {
                        zzqVar = com.google.android.gms.fitness.request.zzq.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzqVar);
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitHistoryApi");
                    if (parcel.readInt() != 0) {
                        zzzVar = com.google.android.gms.fitness.request.zzz.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzzVar);
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitHistoryApi");
                    if (parcel.readInt() != 0) {
                        zztVar = com.google.android.gms.fitness.request.zzt.CREATOR.createFromParcel(parcel);
                    }
                    zza(zztVar);
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitHistoryApi");
                    if (parcel.readInt() != 0) {
                        zzbsVar = com.google.android.gms.fitness.request.zzbs.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzbsVar);
                    parcel2.writeNoException();
                    return true;
                case 15:
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitHistoryApi");
                    if (parcel.readInt() != 0) {
                        zzafVar = com.google.android.gms.fitness.request.zzaf.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzafVar);
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.fitness.internal.IGoogleFitHistoryApi");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(DataDeleteRequest dataDeleteRequest) throws RemoteException;

    void zza(DataReadRequest dataReadRequest) throws RemoteException;

    void zza(DataUpdateListenerRegistrationRequest dataUpdateListenerRegistrationRequest) throws RemoteException;

    void zza(DataUpdateRequest dataUpdateRequest) throws RemoteException;

    void zza(com.google.android.gms.fitness.request.zzad zzadVar) throws RemoteException;

    void zza(com.google.android.gms.fitness.request.zzaf zzafVar) throws RemoteException;

    void zza(com.google.android.gms.fitness.request.zzar zzarVar) throws RemoteException;

    void zza(com.google.android.gms.fitness.request.zzat zzatVar) throws RemoteException;

    void zza(com.google.android.gms.fitness.request.zzbs zzbsVar) throws RemoteException;

    void zza(com.google.android.gms.fitness.request.zzd zzdVar) throws RemoteException;

    void zza(com.google.android.gms.fitness.request.zzg zzgVar) throws RemoteException;

    void zza(com.google.android.gms.fitness.request.zzq zzqVar) throws RemoteException;

    void zza(com.google.android.gms.fitness.request.zzt zztVar) throws RemoteException;

    void zza(com.google.android.gms.fitness.request.zzz zzzVar) throws RemoteException;

    void zzb(com.google.android.gms.fitness.request.zzg zzgVar) throws RemoteException;
}
