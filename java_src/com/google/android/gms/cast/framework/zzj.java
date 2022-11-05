package com.google.android.gms.cast.framework;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.cast.framework.zzk;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2.dex */
public interface zzj extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzj {

        /* renamed from: com.google.android.gms.cast.framework.zzj$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0166zza implements zzj {
            private IBinder zzrk;

            C0166zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.cast.framework.zzj
            public void zza(zzk zzkVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.IDiscoveryManager");
                    obtain.writeStrongBinder(zzkVar != null ? zzkVar.asBinder() : null);
                    this.zzrk.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.cast.framework.zzj
            public void zzb(zzk zzkVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.IDiscoveryManager");
                    obtain.writeStrongBinder(zzkVar != null ? zzkVar.asBinder() : null);
                    this.zzrk.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.cast.framework.zzj
            public IObjectWrapper zzsJ() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.IDiscoveryManager");
                    this.zzrk.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    return IObjectWrapper.zza.zzcd(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.cast.framework.zzj
            public void zzsK() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.IDiscoveryManager");
                    this.zzrk.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.cast.framework.zzj
            public void zzsL() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.IDiscoveryManager");
                    this.zzrk.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzj zzaS(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.framework.IDiscoveryManager");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzj)) ? new C0166zza(iBinder) : (zzj) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.IDiscoveryManager");
                    zzsK();
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.IDiscoveryManager");
                    zzsL();
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.IDiscoveryManager");
                    zza(zzk.zza.zzaT(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.IDiscoveryManager");
                    zzb(zzk.zza.zzaT(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.IDiscoveryManager");
                    IObjectWrapper zzsJ = zzsJ();
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(zzsJ != null ? zzsJ.asBinder() : null);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.cast.framework.IDiscoveryManager");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(zzk zzkVar) throws RemoteException;

    void zzb(zzk zzkVar) throws RemoteException;

    IObjectWrapper zzsJ() throws RemoteException;

    void zzsK() throws RemoteException;

    void zzsL() throws RemoteException;
}
