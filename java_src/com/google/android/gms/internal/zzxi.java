package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2.dex */
public interface zzxi extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzxi {

        /* renamed from: com.google.android.gms.internal.zzxi$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0404zza implements zzxi {
            private IBinder zzrk;

            C0404zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzxi
            public void zzb(long j, long j2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.media.internal.IFetchBitmapTaskProgressPublisher");
                    obtain.writeLong(j);
                    obtain.writeLong(j2);
                    this.zzrk.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzxi
            public int zzsB() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.media.internal.IFetchBitmapTaskProgressPublisher");
                    this.zzrk.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public zza() {
            attachInterface(this, "com.google.android.gms.cast.framework.media.internal.IFetchBitmapTaskProgressPublisher");
        }

        public static zzxi zzbf(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.framework.media.internal.IFetchBitmapTaskProgressPublisher");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzxi)) ? new C0404zza(iBinder) : (zzxi) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.media.internal.IFetchBitmapTaskProgressPublisher");
                    zzb(parcel.readLong(), parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.media.internal.IFetchBitmapTaskProgressPublisher");
                    int zzsB = zzsB();
                    parcel2.writeNoException();
                    parcel2.writeInt(zzsB);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.cast.framework.media.internal.IFetchBitmapTaskProgressPublisher");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zzb(long j, long j2) throws RemoteException;

    int zzsB() throws RemoteException;
}
