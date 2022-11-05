package com.google.android.gms.internal;

import android.accounts.Account;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.internal.zzr;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.zzbap;
/* loaded from: classes2.dex */
public interface zzbaq extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzbaq {

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: com.google.android.gms.internal.zzbaq$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static class C0288zza implements zzbaq {
            private IBinder zzrk;

            C0288zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzbaq
            public void zza(int i, Account account, zzbap zzbapVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
                    obtain.writeInt(i);
                    if (account != null) {
                        obtain.writeInt(1);
                        account.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzbapVar != null ? zzbapVar.asBinder() : null);
                    this.zzrk.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbaq
            public void zza(com.google.android.gms.common.internal.zzad zzadVar, com.google.android.gms.common.internal.zzx zzxVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
                    if (zzadVar != null) {
                        obtain.writeInt(1);
                        zzadVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzxVar != null ? zzxVar.asBinder() : null);
                    this.zzrk.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbaq
            public void zza(com.google.android.gms.common.internal.zzd zzdVar, zzbap zzbapVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
                    if (zzdVar != null) {
                        obtain.writeInt(1);
                        zzdVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzbapVar != null ? zzbapVar.asBinder() : null);
                    this.zzrk.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbaq
            public void zza(com.google.android.gms.common.internal.zzr zzrVar, int i, boolean z) throws RemoteException {
                int i2 = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
                    obtain.writeStrongBinder(zzrVar != null ? zzrVar.asBinder() : null);
                    obtain.writeInt(i);
                    if (z) {
                        i2 = 1;
                    }
                    obtain.writeInt(i2);
                    this.zzrk.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbaq
            public void zza(zzban zzbanVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
                    if (zzbanVar != null) {
                        obtain.writeInt(1);
                        zzbanVar.writeToParcel(obtain, 0);
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

            @Override // com.google.android.gms.internal.zzbaq
            public void zza(zzbar zzbarVar, zzbap zzbapVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
                    if (zzbarVar != null) {
                        obtain.writeInt(1);
                        zzbarVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzbapVar != null ? zzbapVar.asBinder() : null);
                    this.zzrk.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbaq
            public void zza(zzbau zzbauVar, zzbap zzbapVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
                    if (zzbauVar != null) {
                        obtain.writeInt(1);
                        zzbauVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzbapVar != null ? zzbapVar.asBinder() : null);
                    this.zzrk.transact(12, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbaq
            public void zzaP(boolean z) throws RemoteException {
                int i = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
                    if (z) {
                        i = 1;
                    }
                    obtain.writeInt(i);
                    this.zzrk.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbaq
            public void zzaQ(boolean z) throws RemoteException {
                int i = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
                    if (z) {
                        i = 1;
                    }
                    obtain.writeInt(i);
                    this.zzrk.transact(13, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbaq
            public void zzb(zzbap zzbapVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
                    obtain.writeStrongBinder(zzbapVar != null ? zzbapVar.asBinder() : null);
                    this.zzrk.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbaq
            public void zznv(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
                    obtain.writeInt(i);
                    this.zzrk.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzbaq zzff(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.signin.internal.ISignInService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzbaq)) ? new C0288zza(iBinder) : (zzbaq) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            boolean z = false;
            zzbau zzbauVar = null;
            com.google.android.gms.common.internal.zzd zzdVar = null;
            zzban zzbanVar = null;
            com.google.android.gms.common.internal.zzad zzadVar = null;
            Account account = null;
            zzbar zzbarVar = null;
            switch (i) {
                case 2:
                    parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                    if (parcel.readInt() != 0) {
                        zzdVar = com.google.android.gms.common.internal.zzd.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzdVar, zzbap.zza.zzfe(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                    if (parcel.readInt() != 0) {
                        zzbanVar = zzban.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzbanVar);
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                    zzaP(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                    if (parcel.readInt() != 0) {
                        zzadVar = com.google.android.gms.common.internal.zzad.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzadVar, zzx.zza.zzbw(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                    zznv(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                    int readInt = parcel.readInt();
                    if (parcel.readInt() != 0) {
                        account = (Account) Account.CREATOR.createFromParcel(parcel);
                    }
                    zza(readInt, account, zzbap.zza.zzfe(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                    com.google.android.gms.common.internal.zzr zzbr = zzr.zza.zzbr(parcel.readStrongBinder());
                    int readInt2 = parcel.readInt();
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    zza(zzbr, readInt2, z);
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                    if (parcel.readInt() != 0) {
                        zzbarVar = zzbar.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzbarVar, zzbap.zza.zzfe(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                    zzb(zzbap.zza.zzfe(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                    if (parcel.readInt() != 0) {
                        zzbauVar = zzbau.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzbauVar, zzbap.zza.zzfe(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    zzaQ(z);
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.signin.internal.ISignInService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(int i, Account account, zzbap zzbapVar) throws RemoteException;

    void zza(com.google.android.gms.common.internal.zzad zzadVar, com.google.android.gms.common.internal.zzx zzxVar) throws RemoteException;

    void zza(com.google.android.gms.common.internal.zzd zzdVar, zzbap zzbapVar) throws RemoteException;

    void zza(com.google.android.gms.common.internal.zzr zzrVar, int i, boolean z) throws RemoteException;

    void zza(zzban zzbanVar) throws RemoteException;

    void zza(zzbar zzbarVar, zzbap zzbapVar) throws RemoteException;

    void zza(zzbau zzbauVar, zzbap zzbapVar) throws RemoteException;

    void zzaP(boolean z) throws RemoteException;

    void zzaQ(boolean z) throws RemoteException;

    void zzb(zzbap zzbapVar) throws RemoteException;

    void zznv(int i) throws RemoteException;
}
