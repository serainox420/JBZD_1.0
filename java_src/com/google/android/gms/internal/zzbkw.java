package com.google.android.gms.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.wallet.FullWallet;
import com.google.android.gms.wallet.MaskedWallet;
/* loaded from: classes2.dex */
public interface zzbkw extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzbkw {

        /* renamed from: com.google.android.gms.internal.zzbkw$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0301zza implements zzbkw {
            private IBinder zzrk;

            C0301zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzbkw
            public void zza(int i, FullWallet fullWallet, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wallet.internal.IWalletServiceCallbacks");
                    obtain.writeInt(i);
                    if (fullWallet != null) {
                        obtain.writeInt(1);
                        fullWallet.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbkw
            public void zza(int i, MaskedWallet maskedWallet, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wallet.internal.IWalletServiceCallbacks");
                    obtain.writeInt(i);
                    if (maskedWallet != null) {
                        obtain.writeInt(1);
                        maskedWallet.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbkw
            public void zza(int i, boolean z, Bundle bundle) throws RemoteException {
                int i2 = 1;
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wallet.internal.IWalletServiceCallbacks");
                    obtain.writeInt(i);
                    if (!z) {
                        i2 = 0;
                    }
                    obtain.writeInt(i2);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbkw
            public void zza(Status status, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wallet.internal.IWalletServiceCallbacks");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(8, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbkw
            public void zza(Status status, com.google.android.gms.wallet.firstparty.zzf zzfVar, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wallet.internal.IWalletServiceCallbacks");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (zzfVar != null) {
                        obtain.writeInt(1);
                        zzfVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(7, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbkw
            public void zza(Status status, com.google.android.gms.wallet.firstparty.zzj zzjVar, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wallet.internal.IWalletServiceCallbacks");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (zzjVar != null) {
                        obtain.writeInt(1);
                        zzjVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(10, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbkw
            public void zza(Status status, com.google.android.gms.wallet.zzu zzuVar, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wallet.internal.IWalletServiceCallbacks");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (zzuVar != null) {
                        obtain.writeInt(1);
                        zzuVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(12, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbkw
            public void zza(Status status, boolean z, Bundle bundle) throws RemoteException {
                int i = 1;
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wallet.internal.IWalletServiceCallbacks");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!z) {
                        i = 0;
                    }
                    obtain.writeInt(i);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(9, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbkw
            public void zzb(int i, boolean z, Bundle bundle) throws RemoteException {
                int i2 = 1;
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wallet.internal.IWalletServiceCallbacks");
                    obtain.writeInt(i);
                    if (!z) {
                        i2 = 0;
                    }
                    obtain.writeInt(i2);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(6, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbkw
            public void zzb(Status status, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wallet.internal.IWalletServiceCallbacks");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(11, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbkw
            public void zzm(int i, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wallet.internal.IWalletServiceCallbacks");
                    obtain.writeInt(i);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
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
            attachInterface(this, "com.google.android.gms.wallet.internal.IWalletServiceCallbacks");
        }

        public static zzbkw zzfx(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.wallet.internal.IWalletServiceCallbacks");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzbkw)) ? new C0301zza(iBinder) : (zzbkw) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            boolean z = false;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.wallet.internal.IWalletServiceCallbacks");
                    zza(parcel.readInt(), parcel.readInt() != 0 ? MaskedWallet.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.wallet.internal.IWalletServiceCallbacks");
                    zza(parcel.readInt(), parcel.readInt() != 0 ? FullWallet.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.wallet.internal.IWalletServiceCallbacks");
                    int readInt = parcel.readInt();
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    zza(readInt, z, parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.wallet.internal.IWalletServiceCallbacks");
                    zzm(parcel.readInt(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 6:
                    parcel.enforceInterface("com.google.android.gms.wallet.internal.IWalletServiceCallbacks");
                    int readInt2 = parcel.readInt();
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    zzb(readInt2, z, parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 7:
                    parcel.enforceInterface("com.google.android.gms.wallet.internal.IWalletServiceCallbacks");
                    zza(parcel.readInt() != 0 ? Status.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? com.google.android.gms.wallet.firstparty.zzf.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 8:
                    parcel.enforceInterface("com.google.android.gms.wallet.internal.IWalletServiceCallbacks");
                    zza(parcel.readInt() != 0 ? Status.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 9:
                    parcel.enforceInterface("com.google.android.gms.wallet.internal.IWalletServiceCallbacks");
                    Status createFromParcel = parcel.readInt() != 0 ? Status.CREATOR.createFromParcel(parcel) : null;
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    zza(createFromParcel, z, parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 10:
                    parcel.enforceInterface("com.google.android.gms.wallet.internal.IWalletServiceCallbacks");
                    zza(parcel.readInt() != 0 ? Status.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? com.google.android.gms.wallet.firstparty.zzj.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 11:
                    parcel.enforceInterface("com.google.android.gms.wallet.internal.IWalletServiceCallbacks");
                    zzb(parcel.readInt() != 0 ? Status.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 12:
                    parcel.enforceInterface("com.google.android.gms.wallet.internal.IWalletServiceCallbacks");
                    zza(parcel.readInt() != 0 ? Status.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? com.google.android.gms.wallet.zzu.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.wallet.internal.IWalletServiceCallbacks");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(int i, FullWallet fullWallet, Bundle bundle) throws RemoteException;

    void zza(int i, MaskedWallet maskedWallet, Bundle bundle) throws RemoteException;

    void zza(int i, boolean z, Bundle bundle) throws RemoteException;

    void zza(Status status, Bundle bundle) throws RemoteException;

    void zza(Status status, com.google.android.gms.wallet.firstparty.zzf zzfVar, Bundle bundle) throws RemoteException;

    void zza(Status status, com.google.android.gms.wallet.firstparty.zzj zzjVar, Bundle bundle) throws RemoteException;

    void zza(Status status, com.google.android.gms.wallet.zzu zzuVar, Bundle bundle) throws RemoteException;

    void zza(Status status, boolean z, Bundle bundle) throws RemoteException;

    void zzb(int i, boolean z, Bundle bundle) throws RemoteException;

    void zzb(Status status, Bundle bundle) throws RemoteException;

    void zzm(int i, Bundle bundle) throws RemoteException;
}
