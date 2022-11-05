package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.fitness.request.DataSourcesRequest;
/* loaded from: classes2.dex */
public interface zzaoy extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzaoy {

        /* renamed from: com.google.android.gms.internal.zzaoy$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0240zza implements zzaoy {
            private IBinder zzrk;

            C0240zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzaoy
            public void zza(DataSourcesRequest dataSourcesRequest) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitSensorsApi");
                    if (dataSourcesRequest != null) {
                        obtain.writeInt(1);
                        dataSourcesRequest.writeToParcel(obtain, 0);
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

            @Override // com.google.android.gms.internal.zzaoy
            public void zza(com.google.android.gms.fitness.request.zzav zzavVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitSensorsApi");
                    if (zzavVar != null) {
                        obtain.writeInt(1);
                        zzavVar.writeToParcel(obtain, 0);
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

            @Override // com.google.android.gms.internal.zzaoy
            public void zza(com.google.android.gms.fitness.request.zzax zzaxVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitSensorsApi");
                    if (zzaxVar != null) {
                        obtain.writeInt(1);
                        zzaxVar.writeToParcel(obtain, 0);
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
        }

        public static zzaoy zzcC(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.fitness.internal.IGoogleFitSensorsApi");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzaoy)) ? new C0240zza(iBinder) : (zzaoy) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            com.google.android.gms.fitness.request.zzax zzaxVar = null;
            DataSourcesRequest dataSourcesRequest = null;
            com.google.android.gms.fitness.request.zzav zzavVar = null;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitSensorsApi");
                    if (parcel.readInt() != 0) {
                        dataSourcesRequest = DataSourcesRequest.CREATOR.createFromParcel(parcel);
                    }
                    zza(dataSourcesRequest);
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitSensorsApi");
                    if (parcel.readInt() != 0) {
                        zzavVar = com.google.android.gms.fitness.request.zzav.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzavVar);
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitSensorsApi");
                    if (parcel.readInt() != 0) {
                        zzaxVar = com.google.android.gms.fitness.request.zzax.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzaxVar);
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.fitness.internal.IGoogleFitSensorsApi");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(DataSourcesRequest dataSourcesRequest) throws RemoteException;

    void zza(com.google.android.gms.fitness.request.zzav zzavVar) throws RemoteException;

    void zza(com.google.android.gms.fitness.request.zzax zzaxVar) throws RemoteException;
}
