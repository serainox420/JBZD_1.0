package com.google.android.gms.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.zzbkw;
import com.google.android.gms.wallet.FullWalletRequest;
import com.google.android.gms.wallet.IsReadyToPayRequest;
import com.google.android.gms.wallet.MaskedWalletRequest;
import com.google.android.gms.wallet.NotifyTransactionStatusRequest;
import com.google.android.gms.wallet.firstparty.InitializeBuyFlowRequest;
/* loaded from: classes2.dex */
public interface zzbku extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzbku {

        /* renamed from: com.google.android.gms.internal.zzbku$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0299zza implements zzbku {
            private IBinder zzrk;

            C0299zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzbku
            public void zzP(Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wallet.internal.IOwService");
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

            @Override // com.google.android.gms.internal.zzbku
            public void zzQ(Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wallet.internal.IOwService");
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

            @Override // com.google.android.gms.internal.zzbku
            public void zza(Bundle bundle, zzbkw zzbkwVar) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wallet.internal.IOwService");
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (zzbkwVar != null) {
                        iBinder = zzbkwVar.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    this.zzrk.transact(5, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbku
            public void zza(FullWalletRequest fullWalletRequest, Bundle bundle, zzbkw zzbkwVar) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wallet.internal.IOwService");
                    if (fullWalletRequest != null) {
                        obtain.writeInt(1);
                        fullWalletRequest.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (zzbkwVar != null) {
                        iBinder = zzbkwVar.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    this.zzrk.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbku
            public void zza(IsReadyToPayRequest isReadyToPayRequest, Bundle bundle, zzbkw zzbkwVar) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wallet.internal.IOwService");
                    if (isReadyToPayRequest != null) {
                        obtain.writeInt(1);
                        isReadyToPayRequest.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (zzbkwVar != null) {
                        iBinder = zzbkwVar.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    this.zzrk.transact(14, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbku
            public void zza(MaskedWalletRequest maskedWalletRequest, Bundle bundle, zzbkw zzbkwVar) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wallet.internal.IOwService");
                    if (maskedWalletRequest != null) {
                        obtain.writeInt(1);
                        maskedWalletRequest.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (zzbkwVar != null) {
                        iBinder = zzbkwVar.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    this.zzrk.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbku
            public void zza(NotifyTransactionStatusRequest notifyTransactionStatusRequest, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wallet.internal.IOwService");
                    if (notifyTransactionStatusRequest != null) {
                        obtain.writeInt(1);
                        notifyTransactionStatusRequest.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
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

            @Override // com.google.android.gms.internal.zzbku
            public void zza(InitializeBuyFlowRequest initializeBuyFlowRequest, Bundle bundle, zzbkw zzbkwVar) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wallet.internal.IOwService");
                    if (initializeBuyFlowRequest != null) {
                        obtain.writeInt(1);
                        initializeBuyFlowRequest.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (zzbkwVar != null) {
                        iBinder = zzbkwVar.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    this.zzrk.transact(13, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbku
            public void zza(com.google.android.gms.wallet.firstparty.zza zzaVar, Bundle bundle, zzbkw zzbkwVar) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wallet.internal.IOwService");
                    if (zzaVar != null) {
                        obtain.writeInt(1);
                        zzaVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (zzbkwVar != null) {
                        iBinder = zzbkwVar.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    this.zzrk.transact(16, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbku
            public void zza(com.google.android.gms.wallet.firstparty.zzd zzdVar, Bundle bundle, zzbkw zzbkwVar) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wallet.internal.IOwService");
                    if (zzdVar != null) {
                        obtain.writeInt(1);
                        zzdVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (zzbkwVar != null) {
                        iBinder = zzbkwVar.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    this.zzrk.transact(12, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbku
            public void zza(com.google.android.gms.wallet.firstparty.zzh zzhVar, Bundle bundle, zzbkw zzbkwVar) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wallet.internal.IOwService");
                    if (zzhVar != null) {
                        obtain.writeInt(1);
                        zzhVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (zzbkwVar != null) {
                        iBinder = zzbkwVar.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    this.zzrk.transact(15, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbku
            public void zza(com.google.android.gms.wallet.zze zzeVar, Bundle bundle, zzbkw zzbkwVar) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wallet.internal.IOwService");
                    if (zzeVar != null) {
                        obtain.writeInt(1);
                        zzeVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (zzbkwVar != null) {
                        iBinder = zzbkwVar.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    this.zzrk.transact(6, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbku
            public void zza(com.google.android.gms.wallet.zzw zzwVar, Bundle bundle, zzbkw zzbkwVar) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wallet.internal.IOwService");
                    if (zzwVar != null) {
                        obtain.writeInt(1);
                        zzwVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (zzbkwVar != null) {
                        iBinder = zzbkwVar.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    this.zzrk.transact(17, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbku
            public void zza(String str, String str2, Bundle bundle, zzbkw zzbkwVar) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wallet.internal.IOwService");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (zzbkwVar != null) {
                        iBinder = zzbkwVar.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    this.zzrk.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbku
            public void zzb(Bundle bundle, zzbkw zzbkwVar) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wallet.internal.IOwService");
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (zzbkwVar != null) {
                        iBinder = zzbkwVar.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    this.zzrk.transact(11, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public static zzbku zzfv(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.wallet.internal.IOwService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzbku)) ? new C0299zza(iBinder) : (zzbku) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.wallet.internal.IOwService");
                    zza(parcel.readInt() != 0 ? MaskedWalletRequest.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null, zzbkw.zza.zzfx(parcel.readStrongBinder()));
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.wallet.internal.IOwService");
                    zza(parcel.readInt() != 0 ? FullWalletRequest.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null, zzbkw.zza.zzfx(parcel.readStrongBinder()));
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.wallet.internal.IOwService");
                    zza(parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null, zzbkw.zza.zzfx(parcel.readStrongBinder()));
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.wallet.internal.IOwService");
                    zza(parcel.readInt() != 0 ? NotifyTransactionStatusRequest.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 5:
                    parcel.enforceInterface("com.google.android.gms.wallet.internal.IOwService");
                    zza(parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null, zzbkw.zza.zzfx(parcel.readStrongBinder()));
                    return true;
                case 6:
                    parcel.enforceInterface("com.google.android.gms.wallet.internal.IOwService");
                    zza(parcel.readInt() != 0 ? com.google.android.gms.wallet.zze.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null, zzbkw.zza.zzfx(parcel.readStrongBinder()));
                    return true;
                case 9:
                    parcel.enforceInterface("com.google.android.gms.wallet.internal.IOwService");
                    zzP(parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 10:
                    parcel.enforceInterface("com.google.android.gms.wallet.internal.IOwService");
                    zzQ(parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 11:
                    parcel.enforceInterface("com.google.android.gms.wallet.internal.IOwService");
                    zzb(parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null, zzbkw.zza.zzfx(parcel.readStrongBinder()));
                    return true;
                case 12:
                    parcel.enforceInterface("com.google.android.gms.wallet.internal.IOwService");
                    zza(parcel.readInt() != 0 ? com.google.android.gms.wallet.firstparty.zzd.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null, zzbkw.zza.zzfx(parcel.readStrongBinder()));
                    return true;
                case 13:
                    parcel.enforceInterface("com.google.android.gms.wallet.internal.IOwService");
                    zza(parcel.readInt() != 0 ? InitializeBuyFlowRequest.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null, zzbkw.zza.zzfx(parcel.readStrongBinder()));
                    return true;
                case 14:
                    parcel.enforceInterface("com.google.android.gms.wallet.internal.IOwService");
                    zza(parcel.readInt() != 0 ? IsReadyToPayRequest.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null, zzbkw.zza.zzfx(parcel.readStrongBinder()));
                    return true;
                case 15:
                    parcel.enforceInterface("com.google.android.gms.wallet.internal.IOwService");
                    zza(parcel.readInt() != 0 ? com.google.android.gms.wallet.firstparty.zzh.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null, zzbkw.zza.zzfx(parcel.readStrongBinder()));
                    return true;
                case 16:
                    parcel.enforceInterface("com.google.android.gms.wallet.internal.IOwService");
                    zza(parcel.readInt() != 0 ? com.google.android.gms.wallet.firstparty.zza.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null, zzbkw.zza.zzfx(parcel.readStrongBinder()));
                    return true;
                case 17:
                    parcel.enforceInterface("com.google.android.gms.wallet.internal.IOwService");
                    zza(parcel.readInt() != 0 ? com.google.android.gms.wallet.zzw.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null, zzbkw.zza.zzfx(parcel.readStrongBinder()));
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.wallet.internal.IOwService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zzP(Bundle bundle) throws RemoteException;

    void zzQ(Bundle bundle) throws RemoteException;

    void zza(Bundle bundle, zzbkw zzbkwVar) throws RemoteException;

    void zza(FullWalletRequest fullWalletRequest, Bundle bundle, zzbkw zzbkwVar) throws RemoteException;

    void zza(IsReadyToPayRequest isReadyToPayRequest, Bundle bundle, zzbkw zzbkwVar) throws RemoteException;

    void zza(MaskedWalletRequest maskedWalletRequest, Bundle bundle, zzbkw zzbkwVar) throws RemoteException;

    void zza(NotifyTransactionStatusRequest notifyTransactionStatusRequest, Bundle bundle) throws RemoteException;

    void zza(InitializeBuyFlowRequest initializeBuyFlowRequest, Bundle bundle, zzbkw zzbkwVar) throws RemoteException;

    void zza(com.google.android.gms.wallet.firstparty.zza zzaVar, Bundle bundle, zzbkw zzbkwVar) throws RemoteException;

    void zza(com.google.android.gms.wallet.firstparty.zzd zzdVar, Bundle bundle, zzbkw zzbkwVar) throws RemoteException;

    void zza(com.google.android.gms.wallet.firstparty.zzh zzhVar, Bundle bundle, zzbkw zzbkwVar) throws RemoteException;

    void zza(com.google.android.gms.wallet.zze zzeVar, Bundle bundle, zzbkw zzbkwVar) throws RemoteException;

    void zza(com.google.android.gms.wallet.zzw zzwVar, Bundle bundle, zzbkw zzbkwVar) throws RemoteException;

    void zza(String str, String str2, Bundle bundle, zzbkw zzbkwVar) throws RemoteException;

    void zzb(Bundle bundle, zzbkw zzbkwVar) throws RemoteException;
}
