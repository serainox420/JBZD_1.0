package com.google.android.gms.auth.account;

import android.accounts.Account;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.account.zza;
/* loaded from: classes2.dex */
public interface zzb extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzb {

        /* renamed from: com.google.android.gms.auth.account.zzb$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0152zza implements zzb {
            private IBinder zzrk;

            C0152zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.auth.account.zzb
            public void zza(com.google.android.gms.auth.account.zza zzaVar, Account account) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.auth.account.IWorkAccountService");
                    obtain.writeStrongBinder(zzaVar != null ? zzaVar.asBinder() : null);
                    if (account != null) {
                        obtain.writeInt(1);
                        account.writeToParcel(obtain, 0);
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

            @Override // com.google.android.gms.auth.account.zzb
            public void zza(com.google.android.gms.auth.account.zza zzaVar, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.auth.account.IWorkAccountService");
                    obtain.writeStrongBinder(zzaVar != null ? zzaVar.asBinder() : null);
                    obtain.writeString(str);
                    this.zzrk.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.auth.account.zzb
            public void zzad(boolean z) throws RemoteException {
                int i = 1;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.auth.account.IWorkAccountService");
                    if (!z) {
                        i = 0;
                    }
                    obtain.writeInt(i);
                    this.zzrk.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzb zzaz(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.account.IWorkAccountService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzb)) ? new C0152zza(iBinder) : (zzb) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.auth.account.IWorkAccountService");
                    zzad(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.auth.account.IWorkAccountService");
                    zza(zza.AbstractBinderC0150zza.zzay(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.auth.account.IWorkAccountService");
                    zza(zza.AbstractBinderC0150zza.zzay(parcel.readStrongBinder()), parcel.readInt() != 0 ? (Account) Account.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.auth.account.IWorkAccountService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(com.google.android.gms.auth.account.zza zzaVar, Account account) throws RemoteException;

    void zza(com.google.android.gms.auth.account.zza zzaVar, String str) throws RemoteException;

    void zzad(boolean z) throws RemoteException;
}
