package com.google.android.gms.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.zzxa;
/* loaded from: classes2.dex */
public interface zzwz extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzwz {

        /* renamed from: com.google.android.gms.internal.zzwz$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0399zza implements zzwz {
            private IBinder zzrk;

            C0399zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzwz
            public void zza(Bundle bundle, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.internal.IMediaRouter");
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(i);
                    this.zzrk.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzwz
            public void zza(Bundle bundle, zzxa zzxaVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.internal.IMediaRouter");
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzxaVar != null ? zzxaVar.asBinder() : null);
                    this.zzrk.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzwz
            public boolean zzb(Bundle bundle, int i) throws RemoteException {
                boolean z = true;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.internal.IMediaRouter");
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(i);
                    this.zzrk.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() == 0) {
                        z = false;
                    }
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzwz
            public void zzcM(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.internal.IMediaRouter");
                    obtain.writeString(str);
                    this.zzrk.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzwz
            public Bundle zzcN(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.internal.IMediaRouter");
                    obtain.writeString(str);
                    this.zzrk.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzwz
            public void zzm(Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.internal.IMediaRouter");
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
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

            @Override // com.google.android.gms.internal.zzwz
            public int zzsB() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.internal.IMediaRouter");
                    this.zzrk.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzwz
            public void zzsZ() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.internal.IMediaRouter");
                    this.zzrk.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzwz
            public boolean zzta() throws RemoteException {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.internal.IMediaRouter");
                    this.zzrk.transact(7, obtain, obtain2, 0);
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

            @Override // com.google.android.gms.internal.zzwz
            public String zztb() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.internal.IMediaRouter");
                    this.zzrk.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public zza() {
            attachInterface(this, "com.google.android.gms.cast.framework.internal.IMediaRouter");
        }

        public static zzwz zzba(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.framework.internal.IMediaRouter");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzwz)) ? new C0399zza(iBinder) : (zzwz) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            int i3 = 0;
            Bundle bundle = null;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.internal.IMediaRouter");
                    if (parcel.readInt() != 0) {
                        bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    zza(bundle, zzxa.zza.zzbb(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.internal.IMediaRouter");
                    if (parcel.readInt() != 0) {
                        bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    zza(bundle, parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.internal.IMediaRouter");
                    if (parcel.readInt() != 0) {
                        bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    zzm(bundle);
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.internal.IMediaRouter");
                    if (parcel.readInt() != 0) {
                        bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    boolean zzb = zzb(bundle, parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zzb ? 1 : 0);
                    return true;
                case 5:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.internal.IMediaRouter");
                    zzcM(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.internal.IMediaRouter");
                    zzsZ();
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.internal.IMediaRouter");
                    boolean zzta = zzta();
                    parcel2.writeNoException();
                    if (zzta) {
                        i3 = 1;
                    }
                    parcel2.writeInt(i3);
                    return true;
                case 8:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.internal.IMediaRouter");
                    Bundle zzcN = zzcN(parcel.readString());
                    parcel2.writeNoException();
                    if (zzcN == null) {
                        parcel2.writeInt(0);
                        return true;
                    }
                    parcel2.writeInt(1);
                    zzcN.writeToParcel(parcel2, 1);
                    return true;
                case 9:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.internal.IMediaRouter");
                    String zztb = zztb();
                    parcel2.writeNoException();
                    parcel2.writeString(zztb);
                    return true;
                case 10:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.internal.IMediaRouter");
                    int zzsB = zzsB();
                    parcel2.writeNoException();
                    parcel2.writeInt(zzsB);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.cast.framework.internal.IMediaRouter");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(Bundle bundle, int i) throws RemoteException;

    void zza(Bundle bundle, zzxa zzxaVar) throws RemoteException;

    boolean zzb(Bundle bundle, int i) throws RemoteException;

    void zzcM(String str) throws RemoteException;

    Bundle zzcN(String str) throws RemoteException;

    void zzm(Bundle bundle) throws RemoteException;

    int zzsB() throws RemoteException;

    void zzsZ() throws RemoteException;

    boolean zzta() throws RemoteException;

    String zztb() throws RemoteException;
}
