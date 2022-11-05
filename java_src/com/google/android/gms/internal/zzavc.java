package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2.dex */
public interface zzavc extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzavc {

        /* renamed from: com.google.android.gms.internal.zzavc$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0267zza implements zzavc {
            private IBinder zzrk;

            C0267zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzavc
            public void onDisconnected() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.bootstrap.internal.IConnectionListener");
                    this.zzrk.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzavc
            public void onError(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.bootstrap.internal.IConnectionListener");
                    obtain.writeInt(i);
                    this.zzrk.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzavc
            public void zzNL() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.bootstrap.internal.IConnectionListener");
                    this.zzrk.transact(5, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzavc
            public void zza(zzauy zzauyVar, byte[] bArr) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.bootstrap.internal.IConnectionListener");
                    if (zzauyVar != null) {
                        obtain.writeInt(1);
                        zzauyVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeByteArray(bArr);
                    this.zzrk.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzavc
            public void zzgj(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.bootstrap.internal.IConnectionListener");
                    obtain.writeString(str);
                    this.zzrk.transact(4, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzavc
            public void zzgk(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.bootstrap.internal.IConnectionListener");
                    obtain.writeString(str);
                    this.zzrk.transact(6, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public static zzavc zzev(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.nearby.bootstrap.internal.IConnectionListener");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzavc)) ? new C0267zza(iBinder) : (zzavc) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.nearby.bootstrap.internal.IConnectionListener");
                    zza(parcel.readInt() != 0 ? zzauy.CREATOR.createFromParcel(parcel) : null, parcel.createByteArray());
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.nearby.bootstrap.internal.IConnectionListener");
                    onDisconnected();
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.nearby.bootstrap.internal.IConnectionListener");
                    onError(parcel.readInt());
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.nearby.bootstrap.internal.IConnectionListener");
                    zzgj(parcel.readString());
                    return true;
                case 5:
                    parcel.enforceInterface("com.google.android.gms.nearby.bootstrap.internal.IConnectionListener");
                    zzNL();
                    return true;
                case 6:
                    parcel.enforceInterface("com.google.android.gms.nearby.bootstrap.internal.IConnectionListener");
                    zzgk(parcel.readString());
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.nearby.bootstrap.internal.IConnectionListener");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void onDisconnected() throws RemoteException;

    void onError(int i) throws RemoteException;

    void zzNL() throws RemoteException;

    void zza(zzauy zzauyVar, byte[] bArr) throws RemoteException;

    void zzgj(String str) throws RemoteException;

    void zzgk(String str) throws RemoteException;
}
