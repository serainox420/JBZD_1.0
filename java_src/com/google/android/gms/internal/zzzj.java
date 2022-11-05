package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes.dex */
public interface zzzj extends IInterface {

    /* loaded from: classes.dex */
    public static abstract class zza extends Binder implements zzzj {

        /* renamed from: com.google.android.gms.internal.zzzj$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        private static class C0410zza implements zzzj {
            private IBinder zzrk;

            C0410zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzzj
            public void zzcp(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.remote_display.ICastRemoteDisplaySessionCallbacks");
                    obtain.writeInt(i);
                    this.zzrk.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public zza() {
            attachInterface(this, "com.google.android.gms.cast.remote_display.ICastRemoteDisplaySessionCallbacks");
        }

        public static zzzj zzbl(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.remote_display.ICastRemoteDisplaySessionCallbacks");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzzj)) ? new C0410zza(iBinder) : (zzzj) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.cast.remote_display.ICastRemoteDisplaySessionCallbacks");
                    zzcp(parcel.readInt());
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.cast.remote_display.ICastRemoteDisplaySessionCallbacks");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zzcp(int i) throws RemoteException;
}
