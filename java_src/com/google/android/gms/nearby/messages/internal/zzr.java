package com.google.android.gms.nearby.messages.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2.dex */
public interface zzr extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzr {

        /* renamed from: com.google.android.gms.nearby.messages.internal.zzr$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0479zza implements zzr {
            private IBinder zzrk;

            C0479zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.nearby.messages.internal.zzr
            public void onExpired() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.messages.internal.ISubscribeCallback");
                    this.zzrk.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public zza() {
            attachInterface(this, "com.google.android.gms.nearby.messages.internal.ISubscribeCallback");
        }

        public static zzr zzeO(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.nearby.messages.internal.ISubscribeCallback");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzr)) ? new C0479zza(iBinder) : (zzr) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.nearby.messages.internal.ISubscribeCallback");
                    onExpired();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.nearby.messages.internal.ISubscribeCallback");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void onExpired() throws RemoteException;
}
