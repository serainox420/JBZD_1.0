package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2.dex */
public interface zzaox extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzaox {

        /* renamed from: com.google.android.gms.internal.zzaox$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0239zza implements zzaox {
            private IBinder zzrk;

            C0239zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzaox
            public void zza(com.google.android.gms.fitness.request.zzam zzamVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitRecordingApi");
                    if (zzamVar != null) {
                        obtain.writeInt(1);
                        zzamVar.writeToParcel(obtain, 0);
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

            @Override // com.google.android.gms.internal.zzaox
            public void zza(com.google.android.gms.fitness.request.zzbm zzbmVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitRecordingApi");
                    if (zzbmVar != null) {
                        obtain.writeInt(1);
                        zzbmVar.writeToParcel(obtain, 0);
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

            @Override // com.google.android.gms.internal.zzaox
            public void zza(com.google.android.gms.fitness.request.zzbq zzbqVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitRecordingApi");
                    if (zzbqVar != null) {
                        obtain.writeInt(1);
                        zzbqVar.writeToParcel(obtain, 0);
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
        }

        public static zzaox zzcB(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.fitness.internal.IGoogleFitRecordingApi");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzaox)) ? new C0239zza(iBinder) : (zzaox) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            com.google.android.gms.fitness.request.zzam zzamVar = null;
            com.google.android.gms.fitness.request.zzbm zzbmVar = null;
            com.google.android.gms.fitness.request.zzbq zzbqVar = null;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitRecordingApi");
                    if (parcel.readInt() != 0) {
                        zzbmVar = com.google.android.gms.fitness.request.zzbm.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzbmVar);
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitRecordingApi");
                    if (parcel.readInt() != 0) {
                        zzbqVar = com.google.android.gms.fitness.request.zzbq.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzbqVar);
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitRecordingApi");
                    if (parcel.readInt() != 0) {
                        zzamVar = com.google.android.gms.fitness.request.zzam.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzamVar);
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.fitness.internal.IGoogleFitRecordingApi");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(com.google.android.gms.fitness.request.zzam zzamVar) throws RemoteException;

    void zza(com.google.android.gms.fitness.request.zzbm zzbmVar) throws RemoteException;

    void zza(com.google.android.gms.fitness.request.zzbq zzbqVar) throws RemoteException;
}
