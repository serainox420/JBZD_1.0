package com.google.android.gms.maps.model.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;
/* loaded from: classes2.dex */
public interface zzd extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzd {

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: com.google.android.gms.maps.model.internal.zzd$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static class C0468zza implements zzd {
            private IBinder zzrk;

            C0468zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.maps.model.internal.zzd
            public int getActiveLevelIndex() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate");
                    this.zzrk.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.maps.model.internal.zzd
            public int getDefaultLevelIndex() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate");
                    this.zzrk.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.maps.model.internal.zzd
            public List<IBinder> getLevels() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate");
                    this.zzrk.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.createBinderArrayList();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.maps.model.internal.zzd
            public int hashCodeRemote() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate");
                    this.zzrk.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.maps.model.internal.zzd
            public boolean isUnderground() throws RemoteException {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate");
                    this.zzrk.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.maps.model.internal.zzd
            public boolean zzb(zzd zzdVar) throws RemoteException {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate");
                    obtain.writeStrongBinder(zzdVar != null ? zzdVar.asBinder() : null);
                    this.zzrk.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzd zzel(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzd)) ? new C0468zza(iBinder) : (zzd) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            int i3 = 0;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate");
                    int activeLevelIndex = getActiveLevelIndex();
                    parcel2.writeNoException();
                    parcel2.writeInt(activeLevelIndex);
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate");
                    int defaultLevelIndex = getDefaultLevelIndex();
                    parcel2.writeNoException();
                    parcel2.writeInt(defaultLevelIndex);
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate");
                    List<IBinder> levels = getLevels();
                    parcel2.writeNoException();
                    parcel2.writeBinderList(levels);
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate");
                    boolean isUnderground = isUnderground();
                    parcel2.writeNoException();
                    if (isUnderground) {
                        i3 = 1;
                    }
                    parcel2.writeInt(i3);
                    return true;
                case 5:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate");
                    boolean zzb = zzb(zzel(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    if (zzb) {
                        i3 = 1;
                    }
                    parcel2.writeInt(i3);
                    return true;
                case 6:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate");
                    int hashCodeRemote = hashCodeRemote();
                    parcel2.writeNoException();
                    parcel2.writeInt(hashCodeRemote);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    int getActiveLevelIndex() throws RemoteException;

    int getDefaultLevelIndex() throws RemoteException;

    List<IBinder> getLevels() throws RemoteException;

    int hashCodeRemote() throws RemoteException;

    boolean isUnderground() throws RemoteException;

    boolean zzb(zzd zzdVar) throws RemoteException;
}
