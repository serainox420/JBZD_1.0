package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.zzady;
import java.util.List;
/* loaded from: classes2.dex */
public interface zzadz extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzadz {

        /* renamed from: com.google.android.gms.internal.zzadz$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0204zza implements zzadz {
            private IBinder zzrk;

            C0204zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzadz
            public void zza(zzady zzadyVar, zzadu zzaduVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.config.internal.IConfigService");
                    obtain.writeStrongBinder(zzadyVar != null ? zzadyVar.asBinder() : null);
                    if (zzaduVar != null) {
                        obtain.writeInt(1);
                        zzaduVar.writeToParcel(obtain, 0);
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

            @Override // com.google.android.gms.internal.zzadz
            public void zza(zzady zzadyVar, String str, zzayx zzayxVar, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.config.internal.IConfigService");
                    obtain.writeStrongBinder(zzadyVar != null ? zzadyVar.asBinder() : null);
                    obtain.writeString(str);
                    if (zzayxVar != null) {
                        obtain.writeInt(1);
                        zzayxVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeString(str2);
                    this.zzrk.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzadz
            public void zza(zzady zzadyVar, String str, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.config.internal.IConfigService");
                    obtain.writeStrongBinder(zzadyVar != null ? zzadyVar.asBinder() : null);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.zzrk.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzadz
            public void zza(zzady zzadyVar, String str, List list) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.config.internal.IConfigService");
                    obtain.writeStrongBinder(zzadyVar != null ? zzadyVar.asBinder() : null);
                    obtain.writeString(str);
                    obtain.writeList(list);
                    this.zzrk.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzadz
            public void zzb(zzady zzadyVar, String str, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.config.internal.IConfigService");
                    obtain.writeStrongBinder(zzadyVar != null ? zzadyVar.asBinder() : null);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.zzrk.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzadz zzbE(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.config.internal.IConfigService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzadz)) ? new C0204zza(iBinder) : (zzadz) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            zzadu zzaduVar = null;
            zzayx zzayxVar = null;
            switch (i) {
                case 4:
                    parcel.enforceInterface("com.google.android.gms.config.internal.IConfigService");
                    zza(zzady.zza.zzbD(parcel.readStrongBinder()), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface("com.google.android.gms.config.internal.IConfigService");
                    zzb(zzady.zza.zzbD(parcel.readStrongBinder()), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface("com.google.android.gms.config.internal.IConfigService");
                    zza(zzady.zza.zzbD(parcel.readStrongBinder()), parcel.readString(), parcel.readArrayList(getClass().getClassLoader()));
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface("com.google.android.gms.config.internal.IConfigService");
                    zzady zzbD = zzady.zza.zzbD(parcel.readStrongBinder());
                    String readString = parcel.readString();
                    if (parcel.readInt() != 0) {
                        zzayxVar = zzayx.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzbD, readString, zzayxVar, parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface("com.google.android.gms.config.internal.IConfigService");
                    zzady zzbD2 = zzady.zza.zzbD(parcel.readStrongBinder());
                    if (parcel.readInt() != 0) {
                        zzaduVar = zzadu.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzbD2, zzaduVar);
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.config.internal.IConfigService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(zzady zzadyVar, zzadu zzaduVar) throws RemoteException;

    void zza(zzady zzadyVar, String str, zzayx zzayxVar, String str2) throws RemoteException;

    void zza(zzady zzadyVar, String str, String str2) throws RemoteException;

    void zza(zzady zzadyVar, String str, List list) throws RemoteException;

    void zzb(zzady zzadyVar, String str, String str2) throws RemoteException;
}
