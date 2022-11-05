package com.google.android.gms.dynamic;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2.dex */
public interface IObjectWrapper extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements IObjectWrapper {

        /* renamed from: com.google.android.gms.dynamic.IObjectWrapper$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0183zza implements IObjectWrapper {
            private IBinder zzrk;

            C0183zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }
        }

        public zza() {
            attachInterface(this, "com.google.android.gms.dynamic.IObjectWrapper");
        }

        public static IObjectWrapper zzcd(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamic.IObjectWrapper");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof IObjectWrapper)) ? new C0183zza(iBinder) : (IObjectWrapper) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.dynamic.IObjectWrapper");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }
}
