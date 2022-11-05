package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2.dex */
public interface zzawi extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzawi {

        /* renamed from: com.google.android.gms.internal.zzawi$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0275zza implements zzawi {
            private IBinder zzrk;

            C0275zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzawi
            public void zza(zzawt zzawtVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.internal.connection.IDiscoveryCallback");
                    if (zzawtVar != null) {
                        obtain.writeInt(1);
                        zzawtVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzawi
            public void zza(zzawv zzawvVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.internal.connection.IDiscoveryCallback");
                    if (zzawvVar != null) {
                        obtain.writeInt(1);
                        zzawvVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzawi
            public void zza(zzaxf zzaxfVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.internal.connection.IDiscoveryCallback");
                    if (zzaxfVar != null) {
                        obtain.writeInt(1);
                        zzaxfVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(4, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public zza() {
            attachInterface(this, "com.google.android.gms.nearby.internal.connection.IDiscoveryCallback");
        }

        public static zzawi zzeE(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.nearby.internal.connection.IDiscoveryCallback");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzawi)) ? new C0275zza(iBinder) : (zzawi) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            zzaxf zzaxfVar = null;
            zzawt zzawtVar = null;
            zzawv zzawvVar = null;
            switch (i) {
                case 2:
                    parcel.enforceInterface("com.google.android.gms.nearby.internal.connection.IDiscoveryCallback");
                    if (parcel.readInt() != 0) {
                        zzawtVar = zzawt.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzawtVar);
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.nearby.internal.connection.IDiscoveryCallback");
                    if (parcel.readInt() != 0) {
                        zzawvVar = zzawv.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzawvVar);
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.nearby.internal.connection.IDiscoveryCallback");
                    if (parcel.readInt() != 0) {
                        zzaxfVar = zzaxf.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzaxfVar);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.nearby.internal.connection.IDiscoveryCallback");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(zzawt zzawtVar) throws RemoteException;

    void zza(zzawv zzawvVar) throws RemoteException;

    void zza(zzaxf zzaxfVar) throws RemoteException;
}
