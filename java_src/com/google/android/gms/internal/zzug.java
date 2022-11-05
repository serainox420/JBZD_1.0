package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.zztx;
import com.google.android.gms.internal.zzuh;
/* loaded from: classes2.dex */
public interface zzug extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzug {

        /* renamed from: com.google.android.gms.internal.zzug$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0385zza implements zzug {
            private IBinder zzrk;

            C0385zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzug
            public void zza(zztx.zza zzaVar, zzuh zzuhVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearch");
                    if (zzaVar != null) {
                        obtain.writeInt(1);
                        zzaVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzuhVar != null ? zzuhVar.asBinder() : null);
                    this.zzrk.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzug
            public void zza(zzuh zzuhVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearch");
                    obtain.writeStrongBinder(zzuhVar != null ? zzuhVar.asBinder() : null);
                    this.zzrk.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzug
            public void zza(zzuh zzuhVar, String str, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearch");
                    obtain.writeStrongBinder(zzuhVar != null ? zzuhVar.asBinder() : null);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.zzrk.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzug
            public void zza(zzuh zzuhVar, String str, zzud[] zzudVarArr) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearch");
                    obtain.writeStrongBinder(zzuhVar != null ? zzuhVar.asBinder() : null);
                    obtain.writeString(str);
                    obtain.writeTypedArray(zzudVarArr, 0);
                    this.zzrk.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzug
            public void zza(zzuh zzuhVar, boolean z) throws RemoteException {
                int i = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearch");
                    obtain.writeStrongBinder(zzuhVar != null ? zzuhVar.asBinder() : null);
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

            @Override // com.google.android.gms.internal.zzug
            public void zza(zzuh zzuhVar, com.google.firebase.appindexing.internal.zza[] zzaVarArr) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearch");
                    obtain.writeStrongBinder(zzuhVar != null ? zzuhVar.asBinder() : null);
                    obtain.writeTypedArray(zzaVarArr, 0);
                    this.zzrk.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzug
            public void zzb(zzuh zzuhVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearch");
                    obtain.writeStrongBinder(zzuhVar != null ? zzuhVar.asBinder() : null);
                    this.zzrk.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzug zzan(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearch");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzug)) ? new C0385zza(iBinder) : (zzug) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearch");
                    zza(zzuh.zza.zzao(parcel.readStrongBinder()), parcel.readString(), (zzud[]) parcel.createTypedArray(zzud.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearch");
                    zza(zzuh.zza.zzao(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearch");
                    zzb(zzuh.zza.zzao(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearch");
                    zza(zzuh.zza.zzao(parcel.readStrongBinder()), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface("com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearch");
                    zza(parcel.readInt() != 0 ? zztx.zza.CREATOR.createFromParcel(parcel) : null, zzuh.zza.zzao(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface("com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearch");
                    zza(zzuh.zza.zzao(parcel.readStrongBinder()), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface("com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearch");
                    zza(zzuh.zza.zzao(parcel.readStrongBinder()), (com.google.firebase.appindexing.internal.zza[]) parcel.createTypedArray(com.google.firebase.appindexing.internal.zza.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearch");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(zztx.zza zzaVar, zzuh zzuhVar) throws RemoteException;

    void zza(zzuh zzuhVar) throws RemoteException;

    void zza(zzuh zzuhVar, String str, String str2) throws RemoteException;

    void zza(zzuh zzuhVar, String str, zzud[] zzudVarArr) throws RemoteException;

    void zza(zzuh zzuhVar, boolean z) throws RemoteException;

    void zza(zzuh zzuhVar, com.google.firebase.appindexing.internal.zza[] zzaVarArr) throws RemoteException;

    void zzb(zzuh zzuhVar) throws RemoteException;
}
