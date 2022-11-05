package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2.dex */
public interface zzawl extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzawl {

        /* renamed from: com.google.android.gms.internal.zzawl$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0278zza implements zzawl {
            private IBinder zzrk;

            C0278zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzawl
            public void zzlW(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.internal.connection.IResultListener");
                    obtain.writeInt(i);
                    this.zzrk.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public zza() {
            attachInterface(this, "com.google.android.gms.nearby.internal.connection.IResultListener");
        }

        public static zzawl zzeH(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.nearby.internal.connection.IResultListener");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzawl)) ? new C0278zza(iBinder) : (zzawl) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 2:
                    parcel.enforceInterface("com.google.android.gms.nearby.internal.connection.IResultListener");
                    zzlW(parcel.readInt());
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.nearby.internal.connection.IResultListener");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zzlW(int i) throws RemoteException;
}
