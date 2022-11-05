package com.google.android.gms.location.places.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
/* loaded from: classes2.dex */
public interface zzl extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzl {

        /* renamed from: com.google.android.gms.location.places.internal.zzl$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0417zza implements zzl {
            private IBinder zzrk;

            C0417zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.location.places.internal.zzl
            public void zzam(DataHolder dataHolder) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.places.internal.IPlacesCallbacks");
                    if (dataHolder != null) {
                        obtain.writeInt(1);
                        dataHolder.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.location.places.internal.zzl
            public void zzan(DataHolder dataHolder) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.places.internal.IPlacesCallbacks");
                    if (dataHolder != null) {
                        obtain.writeInt(1);
                        dataHolder.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.location.places.internal.zzl
            public void zzao(DataHolder dataHolder) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.places.internal.IPlacesCallbacks");
                    if (dataHolder != null) {
                        obtain.writeInt(1);
                        dataHolder.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.location.places.internal.zzl
            public void zzap(DataHolder dataHolder) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.places.internal.IPlacesCallbacks");
                    if (dataHolder != null) {
                        obtain.writeInt(1);
                        dataHolder.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(5, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.location.places.internal.zzl
            public void zzbs(Status status) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.places.internal.IPlacesCallbacks");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(4, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public zza() {
            attachInterface(this, "com.google.android.gms.location.places.internal.IPlacesCallbacks");
        }

        public static zzl zzdo(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.places.internal.IPlacesCallbacks");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzl)) ? new C0417zza(iBinder) : (zzl) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            DataHolder dataHolder = null;
            DataHolder dataHolder2 = null;
            DataHolder dataHolder3 = null;
            DataHolder dataHolder4 = null;
            Status status = null;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.location.places.internal.IPlacesCallbacks");
                    if (parcel.readInt() != 0) {
                        dataHolder2 = DataHolder.CREATOR.createFromParcel(parcel);
                    }
                    zzam(dataHolder2);
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.location.places.internal.IPlacesCallbacks");
                    if (parcel.readInt() != 0) {
                        dataHolder3 = DataHolder.CREATOR.createFromParcel(parcel);
                    }
                    zzan(dataHolder3);
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.location.places.internal.IPlacesCallbacks");
                    if (parcel.readInt() != 0) {
                        dataHolder4 = DataHolder.CREATOR.createFromParcel(parcel);
                    }
                    zzao(dataHolder4);
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.location.places.internal.IPlacesCallbacks");
                    if (parcel.readInt() != 0) {
                        status = Status.CREATOR.createFromParcel(parcel);
                    }
                    zzbs(status);
                    return true;
                case 5:
                    parcel.enforceInterface("com.google.android.gms.location.places.internal.IPlacesCallbacks");
                    if (parcel.readInt() != 0) {
                        dataHolder = DataHolder.CREATOR.createFromParcel(parcel);
                    }
                    zzap(dataHolder);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.location.places.internal.IPlacesCallbacks");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zzam(DataHolder dataHolder) throws RemoteException;

    void zzan(DataHolder dataHolder) throws RemoteException;

    void zzao(DataHolder dataHolder) throws RemoteException;

    void zzap(DataHolder dataHolder) throws RemoteException;

    void zzbs(Status status) throws RemoteException;
}
