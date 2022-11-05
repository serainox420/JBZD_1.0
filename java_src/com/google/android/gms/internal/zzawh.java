package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2.dex */
public interface zzawh extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzawh {

        /* renamed from: com.google.android.gms.internal.zzawh$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0274zza implements zzawh {
            private IBinder zzrk;

            C0274zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzawh
            public void zza(zzawp zzawpVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.internal.connection.IConnectionResponseListener");
                    if (zzawpVar != null) {
                        obtain.writeInt(1);
                        zzawpVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public zza() {
            attachInterface(this, "com.google.android.gms.nearby.internal.connection.IConnectionResponseListener");
        }

        public static zzawh zzeD(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.nearby.internal.connection.IConnectionResponseListener");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzawh)) ? new C0274zza(iBinder) : (zzawh) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 2:
                    parcel.enforceInterface("com.google.android.gms.nearby.internal.connection.IConnectionResponseListener");
                    zza(parcel.readInt() != 0 ? zzawp.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.nearby.internal.connection.IConnectionResponseListener");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(zzawp zzawpVar) throws RemoteException;
}
