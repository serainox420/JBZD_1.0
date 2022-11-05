package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.zzafr;
import com.google.android.gms.internal.zzafs;
/* loaded from: classes2.dex */
public interface zzaft extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzaft {

        /* renamed from: com.google.android.gms.internal.zzaft$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0208zza implements zzaft {
            private IBinder zzrk;

            C0208zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzaft
            public void zza(zzafs zzafsVar, String str, String str2, String str3, zzaep zzaepVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.contextmanager.internal.IContextManagerService");
                    obtain.writeStrongBinder(zzafsVar != null ? zzafsVar.asBinder() : null);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    if (zzaepVar != null) {
                        obtain.writeInt(1);
                        zzaepVar.writeToParcel(obtain, 0);
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

            @Override // com.google.android.gms.internal.zzaft
            public void zza(zzafs zzafsVar, String str, String str2, String str3, zzaer zzaerVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.contextmanager.internal.IContextManagerService");
                    obtain.writeStrongBinder(zzafsVar != null ? zzafsVar.asBinder() : null);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    if (zzaerVar != null) {
                        obtain.writeInt(1);
                        zzaerVar.writeToParcel(obtain, 0);
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

            @Override // com.google.android.gms.internal.zzaft
            public void zza(zzafs zzafsVar, String str, String str2, String str3, zzaez zzaezVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.contextmanager.internal.IContextManagerService");
                    obtain.writeStrongBinder(zzafsVar != null ? zzafsVar.asBinder() : null);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    if (zzaezVar != null) {
                        obtain.writeInt(1);
                        zzaezVar.writeToParcel(obtain, 0);
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

            @Override // com.google.android.gms.internal.zzaft
            public void zza(zzafs zzafsVar, String str, String str2, String str3, zzafk zzafkVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.contextmanager.internal.IContextManagerService");
                    obtain.writeStrongBinder(zzafsVar != null ? zzafsVar.asBinder() : null);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    if (zzafkVar != null) {
                        obtain.writeInt(1);
                        zzafkVar.writeToParcel(obtain, 0);
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

            @Override // com.google.android.gms.internal.zzaft
            public void zza(zzafs zzafsVar, String str, String str2, String str3, zzafk zzafkVar, zzagd zzagdVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.contextmanager.internal.IContextManagerService");
                    obtain.writeStrongBinder(zzafsVar != null ? zzafsVar.asBinder() : null);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    if (zzafkVar != null) {
                        obtain.writeInt(1);
                        zzafkVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (zzagdVar != null) {
                        obtain.writeInt(1);
                        zzagdVar.writeToParcel(obtain, 0);
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

            @Override // com.google.android.gms.internal.zzaft
            public void zza(zzafs zzafsVar, String str, String str2, String str3, zzafk zzafkVar, zzagd zzagdVar, zzafr zzafrVar) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.contextmanager.internal.IContextManagerService");
                    obtain.writeStrongBinder(zzafsVar != null ? zzafsVar.asBinder() : null);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    if (zzafkVar != null) {
                        obtain.writeInt(1);
                        zzafkVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (zzagdVar != null) {
                        obtain.writeInt(1);
                        zzagdVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (zzafrVar != null) {
                        iBinder = zzafrVar.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    this.zzrk.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaft
            public void zza(zzafs zzafsVar, String str, String str2, String str3, zzafk zzafkVar, zzagd zzagdVar, zzafr zzafrVar, PendingIntent pendingIntent) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.contextmanager.internal.IContextManagerService");
                    obtain.writeStrongBinder(zzafsVar != null ? zzafsVar.asBinder() : null);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    if (zzafkVar != null) {
                        obtain.writeInt(1);
                        zzafkVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (zzagdVar != null) {
                        obtain.writeInt(1);
                        zzagdVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (zzafrVar != null) {
                        iBinder = zzafrVar.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    if (pendingIntent != null) {
                        obtain.writeInt(1);
                        pendingIntent.writeToParcel(obtain, 0);
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

            @Override // com.google.android.gms.internal.zzaft
            public void zza(zzafs zzafsVar, String str, String str2, String str3, zzafr zzafrVar) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.contextmanager.internal.IContextManagerService");
                    obtain.writeStrongBinder(zzafsVar != null ? zzafsVar.asBinder() : null);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    if (zzafrVar != null) {
                        iBinder = zzafrVar.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    this.zzrk.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaft
            public void zza(zzafs zzafsVar, String str, String str2, String str3, zzafr zzafrVar, PendingIntent pendingIntent) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.contextmanager.internal.IContextManagerService");
                    obtain.writeStrongBinder(zzafsVar != null ? zzafsVar.asBinder() : null);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    if (zzafrVar != null) {
                        iBinder = zzafrVar.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    if (pendingIntent != null) {
                        obtain.writeInt(1);
                        pendingIntent.writeToParcel(obtain, 0);
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

            @Override // com.google.android.gms.internal.zzaft
            public void zza(zzafs zzafsVar, String str, String str2, String str3, zzafu zzafuVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.contextmanager.internal.IContextManagerService");
                    obtain.writeStrongBinder(zzafsVar != null ? zzafsVar.asBinder() : null);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    if (zzafuVar != null) {
                        obtain.writeInt(1);
                        zzafuVar.writeToParcel(obtain, 0);
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

            @Override // com.google.android.gms.internal.zzaft
            public void zza(zzafs zzafsVar, String str, String str2, String str3, zzagh zzaghVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.contextmanager.internal.IContextManagerService");
                    obtain.writeStrongBinder(zzafsVar != null ? zzafsVar.asBinder() : null);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    if (zzaghVar != null) {
                        obtain.writeInt(1);
                        zzaghVar.writeToParcel(obtain, 0);
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

            @Override // com.google.android.gms.internal.zzaft
            public void zza(zzafs zzafsVar, String str, String str2, String str3, zzwn zzwnVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.contextmanager.internal.IContextManagerService");
                    obtain.writeStrongBinder(zzafsVar != null ? zzafsVar.asBinder() : null);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    if (zzwnVar != null) {
                        obtain.writeInt(1);
                        zzwnVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(15, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzaft zzbJ(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.contextmanager.internal.IContextManagerService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzaft)) ? new C0208zza(iBinder) : (zzaft) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            PendingIntent pendingIntent = null;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.contextmanager.internal.IContextManagerService");
                    zza(zzafs.zza.zzbI(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? zzagh.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.contextmanager.internal.IContextManagerService");
                    zza(zzafs.zza.zzbI(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? zzafk.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? zzagd.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.contextmanager.internal.IContextManagerService");
                    zza(zzafs.zza.zzbI(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? zzafk.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? zzagd.CREATOR.createFromParcel(parcel) : null, zzafr.zza.zzbH(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.contextmanager.internal.IContextManagerService");
                    zza(zzafs.zza.zzbI(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readString(), zzafr.zza.zzbH(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface("com.google.android.gms.contextmanager.internal.IContextManagerService");
                    zzafs zzbI = zzafs.zza.zzbI(parcel.readStrongBinder());
                    String readString = parcel.readString();
                    String readString2 = parcel.readString();
                    String readString3 = parcel.readString();
                    zzafk createFromParcel = parcel.readInt() != 0 ? zzafk.CREATOR.createFromParcel(parcel) : null;
                    zzagd createFromParcel2 = parcel.readInt() != 0 ? zzagd.CREATOR.createFromParcel(parcel) : null;
                    zzafr zzbH = zzafr.zza.zzbH(parcel.readStrongBinder());
                    if (parcel.readInt() != 0) {
                        pendingIntent = (PendingIntent) PendingIntent.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzbI, readString, readString2, readString3, createFromParcel, createFromParcel2, zzbH, pendingIntent);
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface("com.google.android.gms.contextmanager.internal.IContextManagerService");
                    zza(zzafs.zza.zzbI(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readString(), zzafr.zza.zzbH(parcel.readStrongBinder()), parcel.readInt() != 0 ? (PendingIntent) PendingIntent.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface("com.google.android.gms.contextmanager.internal.IContextManagerService");
                    zza(zzafs.zza.zzbI(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? zzafu.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface("com.google.android.gms.contextmanager.internal.IContextManagerService");
                    zza(zzafs.zza.zzbI(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? zzaez.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface("com.google.android.gms.contextmanager.internal.IContextManagerService");
                    zza(zzafs.zza.zzbI(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? zzafk.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 15:
                    parcel.enforceInterface("com.google.android.gms.contextmanager.internal.IContextManagerService");
                    zza(zzafs.zza.zzbI(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? zzwn.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 16:
                    parcel.enforceInterface("com.google.android.gms.contextmanager.internal.IContextManagerService");
                    zza(zzafs.zza.zzbI(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? zzaer.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 17:
                    parcel.enforceInterface("com.google.android.gms.contextmanager.internal.IContextManagerService");
                    zza(zzafs.zza.zzbI(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? zzaep.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.contextmanager.internal.IContextManagerService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(zzafs zzafsVar, String str, String str2, String str3, zzaep zzaepVar) throws RemoteException;

    void zza(zzafs zzafsVar, String str, String str2, String str3, zzaer zzaerVar) throws RemoteException;

    void zza(zzafs zzafsVar, String str, String str2, String str3, zzaez zzaezVar) throws RemoteException;

    void zza(zzafs zzafsVar, String str, String str2, String str3, zzafk zzafkVar) throws RemoteException;

    void zza(zzafs zzafsVar, String str, String str2, String str3, zzafk zzafkVar, zzagd zzagdVar) throws RemoteException;

    void zza(zzafs zzafsVar, String str, String str2, String str3, zzafk zzafkVar, zzagd zzagdVar, zzafr zzafrVar) throws RemoteException;

    void zza(zzafs zzafsVar, String str, String str2, String str3, zzafk zzafkVar, zzagd zzagdVar, zzafr zzafrVar, PendingIntent pendingIntent) throws RemoteException;

    void zza(zzafs zzafsVar, String str, String str2, String str3, zzafr zzafrVar) throws RemoteException;

    void zza(zzafs zzafsVar, String str, String str2, String str3, zzafr zzafrVar, PendingIntent pendingIntent) throws RemoteException;

    void zza(zzafs zzafsVar, String str, String str2, String str3, zzafu zzafuVar) throws RemoteException;

    void zza(zzafs zzafsVar, String str, String str2, String str3, zzagh zzaghVar) throws RemoteException;

    void zza(zzafs zzafsVar, String str, String str2, String str3, zzwn zzwnVar) throws RemoteException;
}
