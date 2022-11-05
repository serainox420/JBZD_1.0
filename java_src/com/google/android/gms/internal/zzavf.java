package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.zzave;
/* loaded from: classes2.dex */
public interface zzavf extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzavf {

        /* renamed from: com.google.android.gms.internal.zzavf$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0270zza implements zzavf {
            private IBinder zzrk;

            C0270zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzavf
            public String getToken() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.bootstrap.internal.INearbyBootstrapService");
                    this.zzrk.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzavf
            public void zza(zzave zzaveVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.bootstrap.internal.INearbyBootstrapService");
                    obtain.writeStrongBinder(zzaveVar != null ? zzaveVar.asBinder() : null);
                    this.zzrk.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzavf
            public void zza(zzavh zzavhVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.bootstrap.internal.INearbyBootstrapService");
                    if (zzavhVar != null) {
                        obtain.writeInt(1);
                        zzavhVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzavf
            public void zza(zzavj zzavjVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.bootstrap.internal.INearbyBootstrapService");
                    if (zzavjVar != null) {
                        obtain.writeInt(1);
                        zzavjVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzavf
            public void zza(zzavl zzavlVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.bootstrap.internal.INearbyBootstrapService");
                    if (zzavlVar != null) {
                        obtain.writeInt(1);
                        zzavlVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzavf
            public void zza(zzavn zzavnVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.bootstrap.internal.INearbyBootstrapService");
                    if (zzavnVar != null) {
                        obtain.writeInt(1);
                        zzavnVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzavf
            public void zza(zzavp zzavpVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.bootstrap.internal.INearbyBootstrapService");
                    if (zzavpVar != null) {
                        obtain.writeInt(1);
                        zzavpVar.writeToParcel(obtain, 0);
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

            @Override // com.google.android.gms.internal.zzavf
            public void zza(zzavr zzavrVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.bootstrap.internal.INearbyBootstrapService");
                    if (zzavrVar != null) {
                        obtain.writeInt(1);
                        zzavrVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzavf
            public void zza(zzavt zzavtVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.bootstrap.internal.INearbyBootstrapService");
                    if (zzavtVar != null) {
                        obtain.writeInt(1);
                        zzavtVar.writeToParcel(obtain, 0);
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

            @Override // com.google.android.gms.internal.zzavf
            public void zza(zzavv zzavvVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.bootstrap.internal.INearbyBootstrapService");
                    if (zzavvVar != null) {
                        obtain.writeInt(1);
                        zzavvVar.writeToParcel(obtain, 0);
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
        }

        public static zzavf zzey(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.nearby.bootstrap.internal.INearbyBootstrapService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzavf)) ? new C0270zza(iBinder) : (zzavf) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            zzavj zzavjVar = null;
            zzavt zzavtVar = null;
            zzavv zzavvVar = null;
            zzavp zzavpVar = null;
            zzavl zzavlVar = null;
            zzavh zzavhVar = null;
            zzavn zzavnVar = null;
            zzavr zzavrVar = null;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.nearby.bootstrap.internal.INearbyBootstrapService");
                    if (parcel.readInt() != 0) {
                        zzavtVar = zzavt.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzavtVar);
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.nearby.bootstrap.internal.INearbyBootstrapService");
                    if (parcel.readInt() != 0) {
                        zzavvVar = zzavv.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzavvVar);
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.nearby.bootstrap.internal.INearbyBootstrapService");
                    if (parcel.readInt() != 0) {
                        zzavpVar = zzavp.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzavpVar);
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.nearby.bootstrap.internal.INearbyBootstrapService");
                    if (parcel.readInt() != 0) {
                        zzavlVar = zzavl.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzavlVar);
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface("com.google.android.gms.nearby.bootstrap.internal.INearbyBootstrapService");
                    if (parcel.readInt() != 0) {
                        zzavhVar = zzavh.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzavhVar);
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface("com.google.android.gms.nearby.bootstrap.internal.INearbyBootstrapService");
                    if (parcel.readInt() != 0) {
                        zzavnVar = zzavn.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzavnVar);
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface("com.google.android.gms.nearby.bootstrap.internal.INearbyBootstrapService");
                    if (parcel.readInt() != 0) {
                        zzavrVar = zzavr.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzavrVar);
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface("com.google.android.gms.nearby.bootstrap.internal.INearbyBootstrapService");
                    if (parcel.readInt() != 0) {
                        zzavjVar = zzavj.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzavjVar);
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface("com.google.android.gms.nearby.bootstrap.internal.INearbyBootstrapService");
                    String token = getToken();
                    parcel2.writeNoException();
                    parcel2.writeString(token);
                    return true;
                case 10:
                    parcel.enforceInterface("com.google.android.gms.nearby.bootstrap.internal.INearbyBootstrapService");
                    zza(zzave.zza.zzex(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.nearby.bootstrap.internal.INearbyBootstrapService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    String getToken() throws RemoteException;

    void zza(zzave zzaveVar) throws RemoteException;

    void zza(zzavh zzavhVar) throws RemoteException;

    void zza(zzavj zzavjVar) throws RemoteException;

    void zza(zzavl zzavlVar) throws RemoteException;

    void zza(zzavn zzavnVar) throws RemoteException;

    void zza(zzavp zzavpVar) throws RemoteException;

    void zza(zzavr zzavrVar) throws RemoteException;

    void zza(zzavt zzavtVar) throws RemoteException;

    void zza(zzavv zzavvVar) throws RemoteException;
}
