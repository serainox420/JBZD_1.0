package com.google.android.gms.gcm;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2.dex */
public interface zzb extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzb {

        /* renamed from: com.google.android.gms.gcm.zzb$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0196zza implements zzb {
            private IBinder zzrk;

            C0196zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.gcm.zzb
            public void zzjD(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.gcm.INetworkTaskCallback");
                    obtain.writeInt(i);
                    this.zzrk.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzb zzcV(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.gcm.INetworkTaskCallback");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzb)) ? new C0196zza(iBinder) : (zzb) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 2:
                    parcel.enforceInterface("com.google.android.gms.gcm.INetworkTaskCallback");
                    zzjD(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.gcm.INetworkTaskCallback");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zzjD(int i) throws RemoteException;
}
