package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.fitness.request.DataTypeCreateRequest;
/* loaded from: classes2.dex */
public interface zzaot extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzaot {

        /* renamed from: com.google.android.gms.internal.zzaot$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0235zza implements zzaot {
            private IBinder zzrk;

            C0235zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzaot
            public void zza(DataTypeCreateRequest dataTypeCreateRequest) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitConfigApi");
                    if (dataTypeCreateRequest != null) {
                        obtain.writeInt(1);
                        dataTypeCreateRequest.writeToParcel(obtain, 0);
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

            @Override // com.google.android.gms.internal.zzaot
            public void zza(com.google.android.gms.fitness.request.zzn zznVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitConfigApi");
                    if (zznVar != null) {
                        obtain.writeInt(1);
                        zznVar.writeToParcel(obtain, 0);
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

            @Override // com.google.android.gms.internal.zzaot
            public void zza(com.google.android.gms.fitness.request.zzw zzwVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitConfigApi");
                    if (zzwVar != null) {
                        obtain.writeInt(1);
                        zzwVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(22, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzaot zzcx(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.fitness.internal.IGoogleFitConfigApi");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzaot)) ? new C0235zza(iBinder) : (zzaot) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            com.google.android.gms.fitness.request.zzw zzwVar = null;
            DataTypeCreateRequest dataTypeCreateRequest = null;
            com.google.android.gms.fitness.request.zzn zznVar = null;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitConfigApi");
                    if (parcel.readInt() != 0) {
                        dataTypeCreateRequest = DataTypeCreateRequest.CREATOR.createFromParcel(parcel);
                    }
                    zza(dataTypeCreateRequest);
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitConfigApi");
                    if (parcel.readInt() != 0) {
                        zznVar = com.google.android.gms.fitness.request.zzn.CREATOR.createFromParcel(parcel);
                    }
                    zza(zznVar);
                    parcel2.writeNoException();
                    return true;
                case 22:
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitConfigApi");
                    if (parcel.readInt() != 0) {
                        zzwVar = com.google.android.gms.fitness.request.zzw.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzwVar);
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.fitness.internal.IGoogleFitConfigApi");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(DataTypeCreateRequest dataTypeCreateRequest) throws RemoteException;

    void zza(com.google.android.gms.fitness.request.zzn zznVar) throws RemoteException;

    void zza(com.google.android.gms.fitness.request.zzw zzwVar) throws RemoteException;
}
