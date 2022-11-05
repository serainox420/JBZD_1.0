package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2.dex */
public interface zzawf extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzawf {

        /* renamed from: com.google.android.gms.internal.zzawf$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0272zza implements zzawf {
            private IBinder zzrk;

            C0272zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzawf
            public void zza(zzawn zzawnVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.internal.connection.IAdvertisingCallback");
                    if (zzawnVar != null) {
                        obtain.writeInt(1);
                        zzawnVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzawf
            public void zza(zzaxd zzaxdVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.internal.connection.IAdvertisingCallback");
                    if (zzaxdVar != null) {
                        obtain.writeInt(1);
                        zzaxdVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public zza() {
            attachInterface(this, "com.google.android.gms.nearby.internal.connection.IAdvertisingCallback");
        }

        public static zzawf zzeB(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.nearby.internal.connection.IAdvertisingCallback");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzawf)) ? new C0272zza(iBinder) : (zzawf) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            zzaxd zzaxdVar = null;
            zzawn zzawnVar = null;
            switch (i) {
                case 2:
                    parcel.enforceInterface("com.google.android.gms.nearby.internal.connection.IAdvertisingCallback");
                    if (parcel.readInt() != 0) {
                        zzawnVar = zzawn.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzawnVar);
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.nearby.internal.connection.IAdvertisingCallback");
                    if (parcel.readInt() != 0) {
                        zzaxdVar = zzaxd.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzaxdVar);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.nearby.internal.connection.IAdvertisingCallback");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(zzawn zzawnVar) throws RemoteException;

    void zza(zzaxd zzaxdVar) throws RemoteException;
}
