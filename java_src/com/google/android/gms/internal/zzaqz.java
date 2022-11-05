package com.google.android.gms.internal;

import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.instantapps.LaunchSettings;
import com.google.android.gms.internal.zzabb;
import com.google.android.gms.internal.zzaqy;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public interface zzaqz extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzaqz {

        /* renamed from: com.google.android.gms.internal.zzaqz$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0258zza implements zzaqz {
            private IBinder zzrk;

            C0258zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzaqz
            public void zza(zzabb zzabbVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.instantapps.internal.IInstantAppsService");
                    obtain.writeStrongBinder(zzabbVar != null ? zzabbVar.asBinder() : null);
                    this.zzrk.transact(14, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaqz
            public void zza(zzabb zzabbVar, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.instantapps.internal.IInstantAppsService");
                    obtain.writeStrongBinder(zzabbVar != null ? zzabbVar.asBinder() : null);
                    obtain.writeInt(i);
                    this.zzrk.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaqz
            public void zza(zzabb zzabbVar, int i, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.instantapps.internal.IInstantAppsService");
                    obtain.writeStrongBinder(zzabbVar != null ? zzabbVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    this.zzrk.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaqz
            public void zza(zzabb zzabbVar, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.instantapps.internal.IInstantAppsService");
                    obtain.writeStrongBinder(zzabbVar != null ? zzabbVar.asBinder() : null);
                    obtain.writeString(str);
                    this.zzrk.transact(22, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaqz
            public void zza(zzabb zzabbVar, String str, String str2, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.instantapps.internal.IInstantAppsService");
                    obtain.writeStrongBinder(zzabbVar != null ? zzabbVar.asBinder() : null);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeInt(i);
                    this.zzrk.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaqz
            public void zza(zzabb zzabbVar, String str, String str2, String str3) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.instantapps.internal.IInstantAppsService");
                    obtain.writeStrongBinder(zzabbVar != null ? zzabbVar.asBinder() : null);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    this.zzrk.transact(25, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaqz
            public void zza(zzabb zzabbVar, String str, boolean z) throws RemoteException {
                int i = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.instantapps.internal.IInstantAppsService");
                    obtain.writeStrongBinder(zzabbVar != null ? zzabbVar.asBinder() : null);
                    obtain.writeString(str);
                    if (z) {
                        i = 1;
                    }
                    obtain.writeInt(i);
                    this.zzrk.transact(24, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaqz
            public void zza(zzabb zzabbVar, boolean z) throws RemoteException {
                int i = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.instantapps.internal.IInstantAppsService");
                    obtain.writeStrongBinder(zzabbVar != null ? zzabbVar.asBinder() : null);
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

            @Override // com.google.android.gms.internal.zzaqz
            public void zza(zzaqy zzaqyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.instantapps.internal.IInstantAppsService");
                    obtain.writeStrongBinder(zzaqyVar != null ? zzaqyVar.asBinder() : null);
                    this.zzrk.transact(13, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaqz
            public void zza(zzaqy zzaqyVar, Intent intent) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.instantapps.internal.IInstantAppsService");
                    obtain.writeStrongBinder(zzaqyVar != null ? zzaqyVar.asBinder() : null);
                    if (intent != null) {
                        obtain.writeInt(1);
                        intent.writeToParcel(obtain, 0);
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

            @Override // com.google.android.gms.internal.zzaqz
            public void zza(zzaqy zzaqyVar, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.instantapps.internal.IInstantAppsService");
                    obtain.writeStrongBinder(zzaqyVar != null ? zzaqyVar.asBinder() : null);
                    obtain.writeString(str);
                    this.zzrk.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaqz
            public void zza(zzaqy zzaqyVar, String str, LaunchSettings launchSettings) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.instantapps.internal.IInstantAppsService");
                    obtain.writeStrongBinder(zzaqyVar != null ? zzaqyVar.asBinder() : null);
                    obtain.writeString(str);
                    if (launchSettings != null) {
                        obtain.writeInt(1);
                        launchSettings.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(19, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaqz
            public void zza(zzaqy zzaqyVar, String str, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.instantapps.internal.IInstantAppsService");
                    obtain.writeStrongBinder(zzaqyVar != null ? zzaqyVar.asBinder() : null);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.zzrk.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaqz
            public void zza(zzaqy zzaqyVar, String str, byte[] bArr) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.instantapps.internal.IInstantAppsService");
                    obtain.writeStrongBinder(zzaqyVar != null ? zzaqyVar.asBinder() : null);
                    obtain.writeString(str);
                    obtain.writeByteArray(bArr);
                    this.zzrk.transact(18, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaqz
            public void zza(zzaqy zzaqyVar, List<String> list, boolean z) throws RemoteException {
                int i = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.instantapps.internal.IInstantAppsService");
                    obtain.writeStrongBinder(zzaqyVar != null ? zzaqyVar.asBinder() : null);
                    obtain.writeStringList(list);
                    if (z) {
                        i = 1;
                    }
                    obtain.writeInt(i);
                    this.zzrk.transact(21, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaqz
            public void zzb(zzabb zzabbVar, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.instantapps.internal.IInstantAppsService");
                    obtain.writeStrongBinder(zzabbVar != null ? zzabbVar.asBinder() : null);
                    obtain.writeString(str);
                    this.zzrk.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaqz
            public void zzb(zzabb zzabbVar, String str, String str2, String str3) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.instantapps.internal.IInstantAppsService");
                    obtain.writeStrongBinder(zzabbVar != null ? zzabbVar.asBinder() : null);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    this.zzrk.transact(26, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaqz
            public void zzb(zzaqy zzaqyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.instantapps.internal.IInstantAppsService");
                    obtain.writeStrongBinder(zzaqyVar != null ? zzaqyVar.asBinder() : null);
                    this.zzrk.transact(12, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaqz
            public void zzc(zzabb zzabbVar, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.instantapps.internal.IInstantAppsService");
                    obtain.writeStrongBinder(zzabbVar != null ? zzabbVar.asBinder() : null);
                    obtain.writeString(str);
                    this.zzrk.transact(23, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaqz
            public void zzd(zzabb zzabbVar, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.instantapps.internal.IInstantAppsService");
                    obtain.writeStrongBinder(zzabbVar != null ? zzabbVar.asBinder() : null);
                    obtain.writeString(str);
                    this.zzrk.transact(20, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzaqz zzdb(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.instantapps.internal.IInstantAppsService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzaqz)) ? new C0258zza(iBinder) : (zzaqz) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            LaunchSettings launchSettings = null;
            Intent intent = null;
            boolean z = false;
            switch (i) {
                case 2:
                    parcel.enforceInterface("com.google.android.gms.instantapps.internal.IInstantAppsService");
                    zzaqy zzda = zzaqy.zza.zzda(parcel.readStrongBinder());
                    if (parcel.readInt() != 0) {
                        intent = (Intent) Intent.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzda, intent);
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.instantapps.internal.IInstantAppsService");
                    zzb(zzabb.zza.zzbp(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface("com.google.android.gms.instantapps.internal.IInstantAppsService");
                    zza(zzabb.zza.zzbp(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface("com.google.android.gms.instantapps.internal.IInstantAppsService");
                    zza(zzabb.zza.zzbp(parcel.readStrongBinder()), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface("com.google.android.gms.instantapps.internal.IInstantAppsService");
                    zza(zzaqy.zza.zzda(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface("com.google.android.gms.instantapps.internal.IInstantAppsService");
                    zza(zzaqy.zza.zzda(parcel.readStrongBinder()), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface("com.google.android.gms.instantapps.internal.IInstantAppsService");
                    zza(zzabb.zza.zzbp(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface("com.google.android.gms.instantapps.internal.IInstantAppsService");
                    zzb(zzaqy.zza.zzda(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface("com.google.android.gms.instantapps.internal.IInstantAppsService");
                    zza(zzaqy.zza.zzda(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface("com.google.android.gms.instantapps.internal.IInstantAppsService");
                    zza(zzabb.zza.zzbp(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 15:
                    parcel.enforceInterface("com.google.android.gms.instantapps.internal.IInstantAppsService");
                    zzabb zzbp = zzabb.zza.zzbp(parcel.readStrongBinder());
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    zza(zzbp, z);
                    parcel2.writeNoException();
                    return true;
                case 18:
                    parcel.enforceInterface("com.google.android.gms.instantapps.internal.IInstantAppsService");
                    zza(zzaqy.zza.zzda(parcel.readStrongBinder()), parcel.readString(), parcel.createByteArray());
                    parcel2.writeNoException();
                    return true;
                case 19:
                    parcel.enforceInterface("com.google.android.gms.instantapps.internal.IInstantAppsService");
                    zzaqy zzda2 = zzaqy.zza.zzda(parcel.readStrongBinder());
                    String readString = parcel.readString();
                    if (parcel.readInt() != 0) {
                        launchSettings = LaunchSettings.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzda2, readString, launchSettings);
                    parcel2.writeNoException();
                    return true;
                case 20:
                    parcel.enforceInterface("com.google.android.gms.instantapps.internal.IInstantAppsService");
                    zzd(zzabb.zza.zzbp(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 21:
                    parcel.enforceInterface("com.google.android.gms.instantapps.internal.IInstantAppsService");
                    zzaqy zzda3 = zzaqy.zza.zzda(parcel.readStrongBinder());
                    ArrayList<String> createStringArrayList = parcel.createStringArrayList();
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    zza(zzda3, createStringArrayList, z);
                    parcel2.writeNoException();
                    return true;
                case 22:
                    parcel.enforceInterface("com.google.android.gms.instantapps.internal.IInstantAppsService");
                    zza(zzabb.zza.zzbp(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 23:
                    parcel.enforceInterface("com.google.android.gms.instantapps.internal.IInstantAppsService");
                    zzc(zzabb.zza.zzbp(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 24:
                    parcel.enforceInterface("com.google.android.gms.instantapps.internal.IInstantAppsService");
                    zza(zzabb.zza.zzbp(parcel.readStrongBinder()), parcel.readString(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 25:
                    parcel.enforceInterface("com.google.android.gms.instantapps.internal.IInstantAppsService");
                    zza(zzabb.zza.zzbp(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 26:
                    parcel.enforceInterface("com.google.android.gms.instantapps.internal.IInstantAppsService");
                    zzb(zzabb.zza.zzbp(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.instantapps.internal.IInstantAppsService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(zzabb zzabbVar) throws RemoteException;

    void zza(zzabb zzabbVar, int i) throws RemoteException;

    void zza(zzabb zzabbVar, int i, String str) throws RemoteException;

    void zza(zzabb zzabbVar, String str) throws RemoteException;

    void zza(zzabb zzabbVar, String str, String str2, int i) throws RemoteException;

    void zza(zzabb zzabbVar, String str, String str2, String str3) throws RemoteException;

    void zza(zzabb zzabbVar, String str, boolean z) throws RemoteException;

    void zza(zzabb zzabbVar, boolean z) throws RemoteException;

    void zza(zzaqy zzaqyVar) throws RemoteException;

    void zza(zzaqy zzaqyVar, Intent intent) throws RemoteException;

    void zza(zzaqy zzaqyVar, String str) throws RemoteException;

    void zza(zzaqy zzaqyVar, String str, LaunchSettings launchSettings) throws RemoteException;

    void zza(zzaqy zzaqyVar, String str, String str2) throws RemoteException;

    void zza(zzaqy zzaqyVar, String str, byte[] bArr) throws RemoteException;

    void zza(zzaqy zzaqyVar, List<String> list, boolean z) throws RemoteException;

    void zzb(zzabb zzabbVar, String str) throws RemoteException;

    void zzb(zzabb zzabbVar, String str, String str2, String str3) throws RemoteException;

    void zzb(zzaqy zzaqyVar) throws RemoteException;

    void zzc(zzabb zzabbVar, String str) throws RemoteException;

    void zzd(zzabb zzabbVar, String str) throws RemoteException;
}
