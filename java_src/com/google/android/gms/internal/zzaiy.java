package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzamn;
/* loaded from: classes2.dex */
public interface zzaiy extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzaiy {

        /* renamed from: com.google.android.gms.internal.zzaiy$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0211zza implements zzaiy {
            private IBinder zzrk;

            C0211zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzaiy
            public void onError(Status status) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
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

            @Override // com.google.android.gms.internal.zzaiy
            public void onSuccess() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    this.zzrk.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaiy
            public void zza(com.google.android.gms.drive.zza zzaVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    if (zzaVar != null) {
                        obtain.writeInt(1);
                        zzaVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(17, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaiy
            public void zza(zzaiv zzaivVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    if (zzaivVar != null) {
                        obtain.writeInt(1);
                        zzaivVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(20, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaiy
            public void zza(zzajf zzajfVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    if (zzajfVar != null) {
                        obtain.writeInt(1);
                        zzajfVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(18, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaiy
            public void zza(zzajh zzajhVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    if (zzajhVar != null) {
                        obtain.writeInt(1);
                        zzajhVar.writeToParcel(obtain, 0);
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

            @Override // com.google.android.gms.internal.zzaiy
            public void zza(zzajj zzajjVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    if (zzajjVar != null) {
                        obtain.writeInt(1);
                        zzajjVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(14, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaiy
            public void zza(zzajl zzajlVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    if (zzajlVar != null) {
                        obtain.writeInt(1);
                        zzajlVar.writeToParcel(obtain, 0);
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

            @Override // com.google.android.gms.internal.zzaiy
            public void zza(zzajn zzajnVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    if (zzajnVar != null) {
                        obtain.writeInt(1);
                        zzajnVar.writeToParcel(obtain, 0);
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

            @Override // com.google.android.gms.internal.zzaiy
            public void zza(zzajr zzajrVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    if (zzajrVar != null) {
                        obtain.writeInt(1);
                        zzajrVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(16, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaiy
            public void zza(zzajt zzajtVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    if (zzajtVar != null) {
                        obtain.writeInt(1);
                        zzajtVar.writeToParcel(obtain, 0);
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

            @Override // com.google.android.gms.internal.zzaiy
            public void zza(zzajv zzajvVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    if (zzajvVar != null) {
                        obtain.writeInt(1);
                        zzajvVar.writeToParcel(obtain, 0);
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

            @Override // com.google.android.gms.internal.zzaiy
            public void zza(zzajx zzajxVar, zzamn zzamnVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    if (zzajxVar != null) {
                        obtain.writeInt(1);
                        zzajxVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzamnVar != null ? zzamnVar.asBinder() : null);
                    this.zzrk.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaiy
            public void zza(zzajy zzajyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    if (zzajyVar != null) {
                        obtain.writeInt(1);
                        zzajyVar.writeToParcel(obtain, 0);
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

            @Override // com.google.android.gms.internal.zzaiy
            public void zza(zzaka zzakaVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    if (zzakaVar != null) {
                        obtain.writeInt(1);
                        zzakaVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(13, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaiy
            public void zza(zzakd zzakdVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    if (zzakdVar != null) {
                        obtain.writeInt(1);
                        zzakdVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(12, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaiy
            public void zza(zzakf zzakfVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    if (zzakfVar != null) {
                        obtain.writeInt(1);
                        zzakfVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(22, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaiy
            public void zza(zzakh zzakhVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    if (zzakhVar != null) {
                        obtain.writeInt(1);
                        zzakhVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaiy
            public void zza(zzalf zzalfVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    if (zzalfVar != null) {
                        obtain.writeInt(1);
                        zzalfVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(21, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaiy
            public void zzaA(boolean z) throws RemoteException {
                int i = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    if (z) {
                        i = 1;
                    }
                    obtain.writeInt(i);
                    this.zzrk.transact(15, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public zza() {
            attachInterface(this, "com.google.android.gms.drive.internal.IDriveServiceCallbacks");
        }

        public static zzaiy zzbM(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzaiy)) ? new C0211zza(iBinder) : (zzaiy) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            zzakf zzakfVar = null;
            zzajl zzajlVar = null;
            zzajt zzajtVar = null;
            zzajn zzajnVar = null;
            zzajy zzajyVar = null;
            zzajh zzajhVar = null;
            Status status = null;
            zzajv zzajvVar = null;
            zzakh zzakhVar = null;
            zzajx zzajxVar = null;
            zzakd zzakdVar = null;
            zzaka zzakaVar = null;
            zzajj zzajjVar = null;
            zzajr zzajrVar = null;
            com.google.android.gms.drive.zza zzaVar = null;
            zzajf zzajfVar = null;
            zzaiv zzaivVar = null;
            zzalf zzalfVar = null;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    if (parcel.readInt() != 0) {
                        zzajlVar = zzajl.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzajlVar);
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    if (parcel.readInt() != 0) {
                        zzajtVar = zzajt.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzajtVar);
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    if (parcel.readInt() != 0) {
                        zzajnVar = zzajn.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzajnVar);
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    if (parcel.readInt() != 0) {
                        zzajyVar = zzajy.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzajyVar);
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    if (parcel.readInt() != 0) {
                        zzajhVar = zzajh.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzajhVar);
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    if (parcel.readInt() != 0) {
                        status = Status.CREATOR.createFromParcel(parcel);
                    }
                    onError(status);
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    onSuccess();
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    if (parcel.readInt() != 0) {
                        zzajvVar = zzajv.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzajvVar);
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    if (parcel.readInt() != 0) {
                        zzakhVar = zzakh.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzakhVar);
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    if (parcel.readInt() != 0) {
                        zzajxVar = zzajx.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzajxVar, zzamn.zza.zzbZ(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    if (parcel.readInt() != 0) {
                        zzakdVar = zzakd.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzakdVar);
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    if (parcel.readInt() != 0) {
                        zzakaVar = zzaka.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzakaVar);
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    if (parcel.readInt() != 0) {
                        zzajjVar = zzajj.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzajjVar);
                    parcel2.writeNoException();
                    return true;
                case 15:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    zzaA(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 16:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    if (parcel.readInt() != 0) {
                        zzajrVar = zzajr.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzajrVar);
                    parcel2.writeNoException();
                    return true;
                case 17:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    if (parcel.readInt() != 0) {
                        zzaVar = com.google.android.gms.drive.zza.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzaVar);
                    parcel2.writeNoException();
                    return true;
                case 18:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    if (parcel.readInt() != 0) {
                        zzajfVar = zzajf.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzajfVar);
                    parcel2.writeNoException();
                    return true;
                case 20:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    if (parcel.readInt() != 0) {
                        zzaivVar = zzaiv.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzaivVar);
                    parcel2.writeNoException();
                    return true;
                case 21:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    if (parcel.readInt() != 0) {
                        zzalfVar = zzalf.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzalfVar);
                    parcel2.writeNoException();
                    return true;
                case 22:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    if (parcel.readInt() != 0) {
                        zzakfVar = zzakf.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzakfVar);
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void onError(Status status) throws RemoteException;

    void onSuccess() throws RemoteException;

    void zza(com.google.android.gms.drive.zza zzaVar) throws RemoteException;

    void zza(zzaiv zzaivVar) throws RemoteException;

    void zza(zzajf zzajfVar) throws RemoteException;

    void zza(zzajh zzajhVar) throws RemoteException;

    void zza(zzajj zzajjVar) throws RemoteException;

    void zza(zzajl zzajlVar) throws RemoteException;

    void zza(zzajn zzajnVar) throws RemoteException;

    void zza(zzajr zzajrVar) throws RemoteException;

    void zza(zzajt zzajtVar) throws RemoteException;

    void zza(zzajv zzajvVar) throws RemoteException;

    void zza(zzajx zzajxVar, zzamn zzamnVar) throws RemoteException;

    void zza(zzajy zzajyVar) throws RemoteException;

    void zza(zzaka zzakaVar) throws RemoteException;

    void zza(zzakd zzakdVar) throws RemoteException;

    void zza(zzakf zzakfVar) throws RemoteException;

    void zza(zzakh zzakhVar) throws RemoteException;

    void zza(zzalf zzalfVar) throws RemoteException;

    void zzaA(boolean z) throws RemoteException;
}
