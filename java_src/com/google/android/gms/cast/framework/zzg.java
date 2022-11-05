package com.google.android.gms.cast.framework;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.cast.framework.zze;
import com.google.android.gms.cast.framework.zzj;
import com.google.android.gms.cast.framework.zzn;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2.dex */
public interface zzg extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzg {

        /* renamed from: com.google.android.gms.cast.framework.zzg$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0163zza implements zzg {
            private IBinder zzrk;

            C0163zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.cast.framework.zzg
            public void destroy() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.ICastContext");
                    this.zzrk.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.cast.framework.zzg
            public boolean isAppVisible() throws RemoteException {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.ICastContext");
                    this.zzrk.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.cast.framework.zzg
            public void zza(zze zzeVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.ICastContext");
                    obtain.writeStrongBinder(zzeVar != null ? zzeVar.asBinder() : null);
                    this.zzrk.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.cast.framework.zzg
            public void zzb(zze zzeVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.ICastContext");
                    obtain.writeStrongBinder(zzeVar != null ? zzeVar.asBinder() : null);
                    this.zzrk.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.cast.framework.zzg
            public Bundle zzsG() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.ICastContext");
                    this.zzrk.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.cast.framework.zzg
            public zzn zzsH() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.ICastContext");
                    this.zzrk.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    return zzn.zza.zzaW(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.cast.framework.zzg
            public zzj zzsI() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.ICastContext");
                    this.zzrk.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                    return zzj.zza.zzaS(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.cast.framework.zzg
            public IObjectWrapper zzsJ() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.ICastContext");
                    this.zzrk.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                    return IObjectWrapper.zza.zzcd(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.cast.framework.zzg
            public void zzy(IObjectWrapper iObjectWrapper) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.ICastContext");
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    this.zzrk.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.cast.framework.zzg
            public void zzz(IObjectWrapper iObjectWrapper) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.ICastContext");
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    this.zzrk.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzg zzaP(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.framework.ICastContext");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzg)) ? new C0163zza(iBinder) : (zzg) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            int i3 = 0;
            IBinder iBinder = null;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.ICastContext");
                    Bundle zzsG = zzsG();
                    parcel2.writeNoException();
                    if (zzsG == null) {
                        parcel2.writeInt(0);
                        return true;
                    }
                    parcel2.writeInt(1);
                    zzsG.writeToParcel(parcel2, 1);
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.ICastContext");
                    boolean isAppVisible = isAppVisible();
                    parcel2.writeNoException();
                    if (isAppVisible) {
                        i3 = 1;
                    }
                    parcel2.writeInt(i3);
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.ICastContext");
                    zza(zze.zza.zzaN(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.ICastContext");
                    zzb(zze.zza.zzaN(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.ICastContext");
                    zzn zzsH = zzsH();
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(zzsH != null ? zzsH.asBinder() : null);
                    return true;
                case 6:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.ICastContext");
                    zzj zzsI = zzsI();
                    parcel2.writeNoException();
                    if (zzsI != null) {
                        iBinder = zzsI.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case 7:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.ICastContext");
                    destroy();
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.ICastContext");
                    zzy(IObjectWrapper.zza.zzcd(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.ICastContext");
                    zzz(IObjectWrapper.zza.zzcd(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.ICastContext");
                    IObjectWrapper zzsJ = zzsJ();
                    parcel2.writeNoException();
                    if (zzsJ != null) {
                        iBinder = zzsJ.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.cast.framework.ICastContext");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void destroy() throws RemoteException;

    boolean isAppVisible() throws RemoteException;

    void zza(zze zzeVar) throws RemoteException;

    void zzb(zze zzeVar) throws RemoteException;

    Bundle zzsG() throws RemoteException;

    zzn zzsH() throws RemoteException;

    zzj zzsI() throws RemoteException;

    IObjectWrapper zzsJ() throws RemoteException;

    void zzy(IObjectWrapper iObjectWrapper) throws RemoteException;

    void zzz(IObjectWrapper iObjectWrapper) throws RemoteException;
}
