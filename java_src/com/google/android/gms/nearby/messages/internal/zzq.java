package com.google.android.gms.nearby.messages.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2.dex */
public interface zzq extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzq {

        /* renamed from: com.google.android.gms.nearby.messages.internal.zzq$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0478zza implements zzq {
            private IBinder zzrk;

            C0478zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.nearby.messages.internal.zzq
            public void onPermissionChanged(boolean z) throws RemoteException {
                int i = 1;
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.messages.internal.IStatusCallback");
                    if (!z) {
                        i = 0;
                    }
                    obtain.writeInt(i);
                    this.zzrk.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public zza() {
            attachInterface(this, "com.google.android.gms.nearby.messages.internal.IStatusCallback");
        }

        public static zzq zzeN(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.nearby.messages.internal.IStatusCallback");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzq)) ? new C0478zza(iBinder) : (zzq) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.nearby.messages.internal.IStatusCallback");
                    onPermissionChanged(parcel.readInt() != 0);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.nearby.messages.internal.IStatusCallback");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void onPermissionChanged(boolean z) throws RemoteException;
}
