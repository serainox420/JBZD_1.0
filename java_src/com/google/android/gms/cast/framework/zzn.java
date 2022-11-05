package com.google.android.gms.cast.framework;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.cast.framework.zzi;
import com.google.android.gms.cast.framework.zzo;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2.dex */
public interface zzn extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzn {

        /* renamed from: com.google.android.gms.cast.framework.zzn$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0170zza implements zzn {
            private IBinder zzrk;

            C0170zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.cast.framework.zzn
            public int getCastState() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.ISessionManager");
                    this.zzrk.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.cast.framework.zzn
            public void zza(zzi zziVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.ISessionManager");
                    obtain.writeStrongBinder(zziVar != null ? zziVar.asBinder() : null);
                    this.zzrk.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.cast.framework.zzn
            public void zza(zzo zzoVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.ISessionManager");
                    obtain.writeStrongBinder(zzoVar != null ? zzoVar.asBinder() : null);
                    this.zzrk.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.cast.framework.zzn
            public void zzb(zzi zziVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.ISessionManager");
                    obtain.writeStrongBinder(zziVar != null ? zziVar.asBinder() : null);
                    this.zzrk.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.cast.framework.zzn
            public void zzb(zzo zzoVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.ISessionManager");
                    obtain.writeStrongBinder(zzoVar != null ? zzoVar.asBinder() : null);
                    this.zzrk.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.cast.framework.zzn
            public void zzb(boolean z, boolean z2) throws RemoteException {
                int i = 1;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.ISessionManager");
                    obtain.writeInt(z ? 1 : 0);
                    if (!z2) {
                        i = 0;
                    }
                    obtain.writeInt(i);
                    this.zzrk.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.cast.framework.zzn
            public IObjectWrapper zzsJ() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.ISessionManager");
                    this.zzrk.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                    return IObjectWrapper.zza.zzcd(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.cast.framework.zzn
            public IObjectWrapper zzsP() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.ISessionManager");
                    this.zzrk.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return IObjectWrapper.zza.zzcd(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzn zzaW(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.framework.ISessionManager");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzn)) ? new C0170zza(iBinder) : (zzn) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            IBinder iBinder = null;
            boolean z = false;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.ISessionManager");
                    IObjectWrapper zzsP = zzsP();
                    parcel2.writeNoException();
                    if (zzsP != null) {
                        iBinder = zzsP.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.ISessionManager");
                    zza(zzo.zza.zzaX(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.ISessionManager");
                    zzb(zzo.zza.zzaX(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.ISessionManager");
                    zza(zzi.zza.zzaR(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.ISessionManager");
                    zzb(zzi.zza.zzaR(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.ISessionManager");
                    boolean z2 = parcel.readInt() != 0;
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    zzb(z2, z);
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.ISessionManager");
                    IObjectWrapper zzsJ = zzsJ();
                    parcel2.writeNoException();
                    if (zzsJ != null) {
                        iBinder = zzsJ.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case 8:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.ISessionManager");
                    int castState = getCastState();
                    parcel2.writeNoException();
                    parcel2.writeInt(castState);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.cast.framework.ISessionManager");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    int getCastState() throws RemoteException;

    void zza(zzi zziVar) throws RemoteException;

    void zza(zzo zzoVar) throws RemoteException;

    void zzb(zzi zziVar) throws RemoteException;

    void zzb(zzo zzoVar) throws RemoteException;

    void zzb(boolean z, boolean z2) throws RemoteException;

    IObjectWrapper zzsJ() throws RemoteException;

    IObjectWrapper zzsP() throws RemoteException;
}
