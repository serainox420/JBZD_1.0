package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2.dex */
public interface zzbub extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzbub {

        /* renamed from: com.google.android.gms.internal.zzbub$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0313zza implements zzbub {
            private IBinder zzrk;

            C0313zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzbub
            public int getResultCode() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.storage.network.INetworkRequest");
                    this.zzrk.transact(12, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbub
            public void reset() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.storage.network.INetworkRequest");
                    this.zzrk.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbub
            public void zzaD(String str, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.storage.network.INetworkRequest");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.zzrk.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbub
            public void zzacW() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.storage.network.INetworkRequest");
                    this.zzrk.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbub
            public IObjectWrapper zzacX() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.storage.network.INetworkRequest");
                    this.zzrk.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                    return IObjectWrapper.zza.zzcd(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbub
            public IObjectWrapper zzacY() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.storage.network.INetworkRequest");
                    this.zzrk.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                    return IObjectWrapper.zza.zzcd(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbub
            public String zzacZ() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.storage.network.INetworkRequest");
                    this.zzrk.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbub
            public IObjectWrapper zzada() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.storage.network.INetworkRequest");
                    this.zzrk.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                    return IObjectWrapper.zza.zzcd(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbub
            public IObjectWrapper zzadb() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.storage.network.INetworkRequest");
                    this.zzrk.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                    return IObjectWrapper.zza.zzcd(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbub
            public boolean zzadc() throws RemoteException {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.storage.network.INetworkRequest");
                    this.zzrk.transact(13, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbub
            public int zzadd() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.storage.network.INetworkRequest");
                    this.zzrk.transact(14, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbub
            public void zzjM(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.storage.network.INetworkRequest");
                    obtain.writeString(str);
                    this.zzrk.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbub
            public void zzjN(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.storage.network.INetworkRequest");
                    obtain.writeString(str);
                    this.zzrk.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbub
            public String zzjO(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.storage.network.INetworkRequest");
                    obtain.writeString(str);
                    this.zzrk.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzbub zzfS(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.firebase.storage.network.INetworkRequest");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzbub)) ? new C0313zza(iBinder) : (zzbub) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            IBinder iBinder = null;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.firebase.storage.network.INetworkRequest");
                    zzjM(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.firebase.storage.network.INetworkRequest");
                    reset();
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.firebase.storage.network.INetworkRequest");
                    zzjN(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.firebase.storage.network.INetworkRequest");
                    zzacW();
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface("com.google.firebase.storage.network.INetworkRequest");
                    zzaD(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface("com.google.firebase.storage.network.INetworkRequest");
                    String zzjO = zzjO(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(zzjO);
                    return true;
                case 7:
                    parcel.enforceInterface("com.google.firebase.storage.network.INetworkRequest");
                    IObjectWrapper zzacX = zzacX();
                    parcel2.writeNoException();
                    if (zzacX != null) {
                        iBinder = zzacX.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case 8:
                    parcel.enforceInterface("com.google.firebase.storage.network.INetworkRequest");
                    IObjectWrapper zzacY = zzacY();
                    parcel2.writeNoException();
                    if (zzacY != null) {
                        iBinder = zzacY.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case 9:
                    parcel.enforceInterface("com.google.firebase.storage.network.INetworkRequest");
                    String zzacZ = zzacZ();
                    parcel2.writeNoException();
                    parcel2.writeString(zzacZ);
                    return true;
                case 10:
                    parcel.enforceInterface("com.google.firebase.storage.network.INetworkRequest");
                    IObjectWrapper zzada = zzada();
                    parcel2.writeNoException();
                    if (zzada != null) {
                        iBinder = zzada.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case 11:
                    parcel.enforceInterface("com.google.firebase.storage.network.INetworkRequest");
                    IObjectWrapper zzadb = zzadb();
                    parcel2.writeNoException();
                    if (zzadb != null) {
                        iBinder = zzadb.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case 12:
                    parcel.enforceInterface("com.google.firebase.storage.network.INetworkRequest");
                    int resultCode = getResultCode();
                    parcel2.writeNoException();
                    parcel2.writeInt(resultCode);
                    return true;
                case 13:
                    parcel.enforceInterface("com.google.firebase.storage.network.INetworkRequest");
                    boolean zzadc = zzadc();
                    parcel2.writeNoException();
                    parcel2.writeInt(zzadc ? 1 : 0);
                    return true;
                case 14:
                    parcel.enforceInterface("com.google.firebase.storage.network.INetworkRequest");
                    int zzadd = zzadd();
                    parcel2.writeNoException();
                    parcel2.writeInt(zzadd);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.firebase.storage.network.INetworkRequest");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    int getResultCode() throws RemoteException;

    void reset() throws RemoteException;

    void zzaD(String str, String str2) throws RemoteException;

    void zzacW() throws RemoteException;

    IObjectWrapper zzacX() throws RemoteException;

    IObjectWrapper zzacY() throws RemoteException;

    String zzacZ() throws RemoteException;

    IObjectWrapper zzada() throws RemoteException;

    IObjectWrapper zzadb() throws RemoteException;

    boolean zzadc() throws RemoteException;

    int zzadd() throws RemoteException;

    void zzjM(String str) throws RemoteException;

    void zzjN(String str) throws RemoteException;

    String zzjO(String str) throws RemoteException;
}
