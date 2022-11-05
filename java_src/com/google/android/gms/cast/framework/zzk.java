package com.google.android.gms.cast.framework;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2.dex */
public interface zzk extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzk {

        /* renamed from: com.google.android.gms.cast.framework.zzk$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0167zza implements zzk {
            private IBinder zzrk;

            C0167zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.cast.framework.zzk
            public void onDeviceAvailabilityChanged(boolean z) throws RemoteException {
                int i = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.IDiscoveryManagerListener");
                    if (z) {
                        i = 1;
                    }
                    obtain.writeInt(i);
                    this.zzrk.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.cast.framework.zzk
            public int zzsB() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.IDiscoveryManagerListener");
                    this.zzrk.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.cast.framework.zzk
            public IObjectWrapper zzsC() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.IDiscoveryManagerListener");
                    this.zzrk.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return IObjectWrapper.zza.zzcd(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzk zzaT(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.framework.IDiscoveryManagerListener");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzk)) ? new C0167zza(iBinder) : (zzk) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.IDiscoveryManagerListener");
                    IObjectWrapper zzsC = zzsC();
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(zzsC != null ? zzsC.asBinder() : null);
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.IDiscoveryManagerListener");
                    onDeviceAvailabilityChanged(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.IDiscoveryManagerListener");
                    int zzsB = zzsB();
                    parcel2.writeNoException();
                    parcel2.writeInt(zzsB);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.cast.framework.IDiscoveryManagerListener");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void onDeviceAvailabilityChanged(boolean z) throws RemoteException;

    int zzsB() throws RemoteException;

    IObjectWrapper zzsC() throws RemoteException;
}
