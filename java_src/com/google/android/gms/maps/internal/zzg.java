package com.google.android.gms.maps.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2.dex */
public interface zzg extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzg {

        /* renamed from: com.google.android.gms.maps.internal.zzg$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0443zza implements zzg {
            private IBinder zzrk;

            C0443zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.maps.internal.zzg
            public void onCameraMoveCanceled() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IOnCameraMoveCanceledListener");
                    this.zzrk.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public zza() {
            attachInterface(this, "com.google.android.gms.maps.internal.IOnCameraMoveCanceledListener");
        }

        public static zzg zzdB(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.internal.IOnCameraMoveCanceledListener");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzg)) ? new C0443zza(iBinder) : (zzg) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IOnCameraMoveCanceledListener");
                    onCameraMoveCanceled();
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.maps.internal.IOnCameraMoveCanceledListener");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void onCameraMoveCanceled() throws RemoteException;
}
