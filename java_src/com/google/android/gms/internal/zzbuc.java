package com.google.android.gms.internal;

import android.net.Uri;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzbub;
/* loaded from: classes2.dex */
public interface zzbuc extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzbuc {

        /* renamed from: com.google.android.gms.internal.zzbuc$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0314zza implements zzbuc {
            private IBinder zzrk;

            C0314zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzbuc
            public String zzA(Uri uri) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.storage.network.INetworkRequestFactory");
                    if (uri != null) {
                        obtain.writeInt(1);
                        uri.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbuc
            public String zzB(Uri uri) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.storage.network.INetworkRequestFactory");
                    if (uri != null) {
                        obtain.writeInt(1);
                        uri.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(12, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbuc
            public zzbub zza(Uri uri, IObjectWrapper iObjectWrapper) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.storage.network.INetworkRequestFactory");
                    if (uri != null) {
                        obtain.writeInt(1);
                        uri.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    this.zzrk.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return zzbub.zza.zzfS(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbuc
            public zzbub zza(Uri uri, IObjectWrapper iObjectWrapper, long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.storage.network.INetworkRequestFactory");
                    if (uri != null) {
                        obtain.writeInt(1);
                        uri.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    obtain.writeLong(j);
                    this.zzrk.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return zzbub.zza.zzfS(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbuc
            public zzbub zza(Uri uri, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.storage.network.INetworkRequestFactory");
                    if (uri != null) {
                        obtain.writeInt(1);
                        uri.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    if (iObjectWrapper2 != null) {
                        iBinder = iObjectWrapper2.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    this.zzrk.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                    return zzbub.zza.zzfS(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbuc
            public zzbub zza(Uri uri, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, String str) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.storage.network.INetworkRequestFactory");
                    if (uri != null) {
                        obtain.writeInt(1);
                        uri.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    if (iObjectWrapper2 != null) {
                        iBinder = iObjectWrapper2.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    obtain.writeString(str);
                    this.zzrk.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                    return zzbub.zza.zzfS(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbuc
            public zzbub zza(Uri uri, IObjectWrapper iObjectWrapper, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.storage.network.INetworkRequestFactory");
                    if (uri != null) {
                        obtain.writeInt(1);
                        uri.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    obtain.writeString(str);
                    this.zzrk.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    return zzbub.zza.zzfS(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbuc
            public zzbub zza(Uri uri, IObjectWrapper iObjectWrapper, String str, IObjectWrapper iObjectWrapper2, long j, int i, boolean z) throws RemoteException {
                IBinder iBinder = null;
                int i2 = 1;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.storage.network.INetworkRequestFactory");
                    if (uri != null) {
                        obtain.writeInt(1);
                        uri.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    obtain.writeString(str);
                    if (iObjectWrapper2 != null) {
                        iBinder = iObjectWrapper2.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    obtain.writeLong(j);
                    obtain.writeInt(i);
                    if (!z) {
                        i2 = 0;
                    }
                    obtain.writeInt(i2);
                    this.zzrk.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    return zzbub.zza.zzfS(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbuc
            public String zzade() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.storage.network.INetworkRequestFactory");
                    this.zzrk.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbuc
            public zzbub zzb(Uri uri, IObjectWrapper iObjectWrapper) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.storage.network.INetworkRequestFactory");
                    if (uri != null) {
                        obtain.writeInt(1);
                        uri.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    this.zzrk.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return zzbub.zza.zzfS(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbuc
            public zzbub zzb(Uri uri, IObjectWrapper iObjectWrapper, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.storage.network.INetworkRequestFactory");
                    if (uri != null) {
                        obtain.writeInt(1);
                        uri.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    obtain.writeString(str);
                    this.zzrk.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                    return zzbub.zza.zzfS(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbuc
            public zzbub zzc(Uri uri, IObjectWrapper iObjectWrapper, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.storage.network.INetworkRequestFactory");
                    if (uri != null) {
                        obtain.writeInt(1);
                        uri.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    obtain.writeString(str);
                    this.zzrk.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                    return zzbub.zza.zzfS(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzbuc zzfT(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.firebase.storage.network.INetworkRequestFactory");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzbuc)) ? new C0314zza(iBinder) : (zzbuc) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.firebase.storage.network.INetworkRequestFactory");
                    zzbub zza = zza(parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null, IObjectWrapper.zza.zzcd(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(zza != null ? zza.asBinder() : null);
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.firebase.storage.network.INetworkRequestFactory");
                    zzbub zzb = zzb(parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null, IObjectWrapper.zza.zzcd(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(zzb != null ? zzb.asBinder() : null);
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.firebase.storage.network.INetworkRequestFactory");
                    zzbub zza2 = zza(parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null, IObjectWrapper.zza.zzcd(parcel.readStrongBinder()), parcel.readLong());
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(zza2 != null ? zza2.asBinder() : null);
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.firebase.storage.network.INetworkRequestFactory");
                    zzbub zza3 = zza(parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null, IObjectWrapper.zza.zzcd(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(zza3 != null ? zza3.asBinder() : null);
                    return true;
                case 5:
                    parcel.enforceInterface("com.google.firebase.storage.network.INetworkRequestFactory");
                    zzbub zza4 = zza(parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null, IObjectWrapper.zza.zzcd(parcel.readStrongBinder()), parcel.readString(), IObjectWrapper.zza.zzcd(parcel.readStrongBinder()), parcel.readLong(), parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(zza4 != null ? zza4.asBinder() : null);
                    return true;
                case 6:
                    parcel.enforceInterface("com.google.firebase.storage.network.INetworkRequestFactory");
                    zzbub zzb2 = zzb(parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null, IObjectWrapper.zza.zzcd(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(zzb2 != null ? zzb2.asBinder() : null);
                    return true;
                case 7:
                    parcel.enforceInterface("com.google.firebase.storage.network.INetworkRequestFactory");
                    zzbub zzc = zzc(parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null, IObjectWrapper.zza.zzcd(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(zzc != null ? zzc.asBinder() : null);
                    return true;
                case 8:
                    parcel.enforceInterface("com.google.firebase.storage.network.INetworkRequestFactory");
                    zzbub zza5 = zza(parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null, IObjectWrapper.zza.zzcd(parcel.readStrongBinder()), IObjectWrapper.zza.zzcd(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(zza5 != null ? zza5.asBinder() : null);
                    return true;
                case 9:
                    parcel.enforceInterface("com.google.firebase.storage.network.INetworkRequestFactory");
                    zzbub zza6 = zza(parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null, IObjectWrapper.zza.zzcd(parcel.readStrongBinder()), IObjectWrapper.zza.zzcd(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(zza6 != null ? zza6.asBinder() : null);
                    return true;
                case 10:
                    parcel.enforceInterface("com.google.firebase.storage.network.INetworkRequestFactory");
                    String zzade = zzade();
                    parcel2.writeNoException();
                    parcel2.writeString(zzade);
                    return true;
                case 11:
                    parcel.enforceInterface("com.google.firebase.storage.network.INetworkRequestFactory");
                    String zzA = zzA(parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeString(zzA);
                    return true;
                case 12:
                    parcel.enforceInterface("com.google.firebase.storage.network.INetworkRequestFactory");
                    String zzB = zzB(parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeString(zzB);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.firebase.storage.network.INetworkRequestFactory");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    String zzA(Uri uri) throws RemoteException;

    String zzB(Uri uri) throws RemoteException;

    zzbub zza(Uri uri, IObjectWrapper iObjectWrapper) throws RemoteException;

    zzbub zza(Uri uri, IObjectWrapper iObjectWrapper, long j) throws RemoteException;

    zzbub zza(Uri uri, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) throws RemoteException;

    zzbub zza(Uri uri, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, String str) throws RemoteException;

    zzbub zza(Uri uri, IObjectWrapper iObjectWrapper, String str) throws RemoteException;

    zzbub zza(Uri uri, IObjectWrapper iObjectWrapper, String str, IObjectWrapper iObjectWrapper2, long j, int i, boolean z) throws RemoteException;

    String zzade() throws RemoteException;

    zzbub zzb(Uri uri, IObjectWrapper iObjectWrapper) throws RemoteException;

    zzbub zzb(Uri uri, IObjectWrapper iObjectWrapper, String str) throws RemoteException;

    zzbub zzc(Uri uri, IObjectWrapper iObjectWrapper, String str) throws RemoteException;
}
