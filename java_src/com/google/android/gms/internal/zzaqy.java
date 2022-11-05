package com.google.android.gms.internal;

import android.content.pm.PackageInfo;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.instantapps.LaunchData;
import java.util.List;
/* loaded from: classes2.dex */
public interface zzaqy extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzaqy {

        /* renamed from: com.google.android.gms.internal.zzaqy$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0257zza implements zzaqy {
            private IBinder zzrk;

            C0257zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzaqy
            public void zza(Status status, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.instantapps.internal.IInstantAppsCallbacks");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(i);
                    this.zzrk.transact(12, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaqy
            public void zza(Status status, PackageInfo packageInfo) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.instantapps.internal.IInstantAppsCallbacks");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (packageInfo != null) {
                        obtain.writeInt(1);
                        packageInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(18, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaqy
            public void zza(Status status, LaunchData launchData) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.instantapps.internal.IInstantAppsCallbacks");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (launchData != null) {
                        obtain.writeInt(1);
                        launchData.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(19, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaqy
            public void zza(Status status, zzara zzaraVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.instantapps.internal.IInstantAppsCallbacks");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (zzaraVar != null) {
                        obtain.writeInt(1);
                        zzaraVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaqy
            public void zza(Status status, zzarh zzarhVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.instantapps.internal.IInstantAppsCallbacks");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (zzarhVar != null) {
                        obtain.writeInt(1);
                        zzarhVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(13, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaqy
            public void zza(Status status, zzarl zzarlVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.instantapps.internal.IInstantAppsCallbacks");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (zzarlVar != null) {
                        obtain.writeInt(1);
                        zzarlVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(9, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaqy
            public void zza(Status status, List<zzars> list) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.instantapps.internal.IInstantAppsCallbacks");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeTypedList(list);
                    this.zzrk.transact(20, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaqy
            public void zzjQ(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.instantapps.internal.IInstantAppsCallbacks");
                    obtain.writeInt(i);
                    this.zzrk.transact(10, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public zza() {
            attachInterface(this, "com.google.android.gms.instantapps.internal.IInstantAppsCallbacks");
        }

        public static zzaqy zzda(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.instantapps.internal.IInstantAppsCallbacks");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzaqy)) ? new C0257zza(iBinder) : (zzaqy) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 2:
                    parcel.enforceInterface("com.google.android.gms.instantapps.internal.IInstantAppsCallbacks");
                    zza(parcel.readInt() != 0 ? Status.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? zzara.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 9:
                    parcel.enforceInterface("com.google.android.gms.instantapps.internal.IInstantAppsCallbacks");
                    zza(parcel.readInt() != 0 ? Status.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? zzarl.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 10:
                    parcel.enforceInterface("com.google.android.gms.instantapps.internal.IInstantAppsCallbacks");
                    zzjQ(parcel.readInt());
                    return true;
                case 12:
                    parcel.enforceInterface("com.google.android.gms.instantapps.internal.IInstantAppsCallbacks");
                    zza(parcel.readInt() != 0 ? Status.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                    return true;
                case 13:
                    parcel.enforceInterface("com.google.android.gms.instantapps.internal.IInstantAppsCallbacks");
                    zza(parcel.readInt() != 0 ? Status.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? zzarh.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 18:
                    parcel.enforceInterface("com.google.android.gms.instantapps.internal.IInstantAppsCallbacks");
                    zza(parcel.readInt() != 0 ? Status.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (PackageInfo) PackageInfo.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 19:
                    parcel.enforceInterface("com.google.android.gms.instantapps.internal.IInstantAppsCallbacks");
                    zza(parcel.readInt() != 0 ? Status.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? LaunchData.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 20:
                    parcel.enforceInterface("com.google.android.gms.instantapps.internal.IInstantAppsCallbacks");
                    zza(parcel.readInt() != 0 ? Status.CREATOR.createFromParcel(parcel) : null, parcel.createTypedArrayList(zzars.CREATOR));
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.instantapps.internal.IInstantAppsCallbacks");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(Status status, int i) throws RemoteException;

    void zza(Status status, PackageInfo packageInfo) throws RemoteException;

    void zza(Status status, LaunchData launchData) throws RemoteException;

    void zza(Status status, zzara zzaraVar) throws RemoteException;

    void zza(Status status, zzarh zzarhVar) throws RemoteException;

    void zza(Status status, zzarl zzarlVar) throws RemoteException;

    void zza(Status status, List<zzars> list) throws RemoteException;

    void zzjQ(int i) throws RemoteException;
}
