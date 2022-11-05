package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
/* loaded from: classes2.dex */
public interface zzamg extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzamg {

        /* renamed from: com.google.android.gms.internal.zzamg$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0217zza implements zzamg {
            private IBinder zzrk;

            C0217zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzamg
            public void onError(Status status) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IDataHolderCallback");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
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

            @Override // com.google.android.gms.internal.zzamg
            public void zzg(DataHolder dataHolder) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IDataHolderCallback");
                    if (dataHolder != null) {
                        obtain.writeInt(1);
                        dataHolder.writeToParcel(obtain, 0);
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

        public static zzamg zzbS(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.drive.realtime.internal.IDataHolderCallback");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzamg)) ? new C0217zza(iBinder) : (zzamg) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            Status status = null;
            DataHolder dataHolder = null;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IDataHolderCallback");
                    if (parcel.readInt() != 0) {
                        dataHolder = DataHolder.CREATOR.createFromParcel(parcel);
                    }
                    zzg(dataHolder);
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IDataHolderCallback");
                    if (parcel.readInt() != 0) {
                        status = Status.CREATOR.createFromParcel(parcel);
                    }
                    onError(status);
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.drive.realtime.internal.IDataHolderCallback");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void onError(Status status) throws RemoteException;

    void zzg(DataHolder dataHolder) throws RemoteException;
}
