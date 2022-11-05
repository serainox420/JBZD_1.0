package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2.dex */
public interface zzaow extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzaow {

        /* renamed from: com.google.android.gms.internal.zzaow$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0238zza implements zzaow {
            private IBinder zzrk;

            C0238zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzaow
            public void zza(com.google.android.gms.fitness.request.zzab zzabVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitInternalApi");
                    if (zzabVar != null) {
                        obtain.writeInt(1);
                        zzabVar.writeToParcel(obtain, 0);
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

            @Override // com.google.android.gms.internal.zzaow
            public void zza(com.google.android.gms.fitness.request.zzap zzapVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitInternalApi");
                    if (zzapVar != null) {
                        obtain.writeInt(1);
                        zzapVar.writeToParcel(obtain, 0);
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

            @Override // com.google.android.gms.internal.zzaow
            public void zza(com.google.android.gms.fitness.request.zzu zzuVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitInternalApi");
                    if (zzuVar != null) {
                        obtain.writeInt(1);
                        zzuVar.writeToParcel(obtain, 0);
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
        }

        public static zzaow zzcA(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.fitness.internal.IGoogleFitInternalApi");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzaow)) ? new C0238zza(iBinder) : (zzaow) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            com.google.android.gms.fitness.request.zzab zzabVar = null;
            com.google.android.gms.fitness.request.zzu zzuVar = null;
            com.google.android.gms.fitness.request.zzap zzapVar = null;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitInternalApi");
                    if (parcel.readInt() != 0) {
                        zzuVar = com.google.android.gms.fitness.request.zzu.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzuVar);
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitInternalApi");
                    if (parcel.readInt() != 0) {
                        zzapVar = com.google.android.gms.fitness.request.zzap.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzapVar);
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitInternalApi");
                    if (parcel.readInt() != 0) {
                        zzabVar = com.google.android.gms.fitness.request.zzab.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzabVar);
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.fitness.internal.IGoogleFitInternalApi");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(com.google.android.gms.fitness.request.zzab zzabVar) throws RemoteException;

    void zza(com.google.android.gms.fitness.request.zzap zzapVar) throws RemoteException;

    void zza(com.google.android.gms.fitness.request.zzu zzuVar) throws RemoteException;
}
