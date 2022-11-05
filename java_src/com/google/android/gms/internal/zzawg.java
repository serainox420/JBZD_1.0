package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2.dex */
public interface zzawg extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzawg {

        /* renamed from: com.google.android.gms.internal.zzawg$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0273zza implements zzawg {
            private IBinder zzrk;

            C0273zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzawg
            public void zza(zzawr zzawrVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.internal.connection.IConnectionEventListener");
                    if (zzawrVar != null) {
                        obtain.writeInt(1);
                        zzawrVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzawg
            public void zza(zzawx zzawxVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.internal.connection.IConnectionEventListener");
                    if (zzawxVar != null) {
                        obtain.writeInt(1);
                        zzawxVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzawg
            public void zza(zzawz zzawzVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.internal.connection.IConnectionEventListener");
                    if (zzawzVar != null) {
                        obtain.writeInt(1);
                        zzawzVar.writeToParcel(obtain, 0);
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
            attachInterface(this, "com.google.android.gms.nearby.internal.connection.IConnectionEventListener");
        }

        public static zzawg zzeC(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.nearby.internal.connection.IConnectionEventListener");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzawg)) ? new C0273zza(iBinder) : (zzawg) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            zzawz zzawzVar = null;
            zzawx zzawxVar = null;
            zzawr zzawrVar = null;
            switch (i) {
                case 2:
                    parcel.enforceInterface("com.google.android.gms.nearby.internal.connection.IConnectionEventListener");
                    if (parcel.readInt() != 0) {
                        zzawxVar = zzawx.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzawxVar);
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.nearby.internal.connection.IConnectionEventListener");
                    if (parcel.readInt() != 0) {
                        zzawrVar = zzawr.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzawrVar);
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.nearby.internal.connection.IConnectionEventListener");
                    if (parcel.readInt() != 0) {
                        zzawzVar = zzawz.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzawzVar);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.nearby.internal.connection.IConnectionEventListener");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(zzawr zzawrVar) throws RemoteException;

    void zza(zzawx zzawxVar) throws RemoteException;

    void zza(zzawz zzawzVar) throws RemoteException;
}
