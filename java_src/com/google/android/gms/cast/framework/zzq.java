package com.google.android.gms.cast.framework;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2.dex */
public interface zzq extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzq {

        /* renamed from: com.google.android.gms.cast.framework.zzq$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0172zza implements zzq {
            private IBinder zzrk;

            C0172zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.cast.framework.zzq
            public void end(boolean z) throws RemoteException {
                int i = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.ISessionProxy");
                    if (z) {
                        i = 1;
                    }
                    obtain.writeInt(i);
                    this.zzrk.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.cast.framework.zzq
            public long getSessionRemainingTimeMs() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.ISessionProxy");
                    this.zzrk.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readLong();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.cast.framework.zzq
            public void resume(Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.ISessionProxy");
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.cast.framework.zzq
            public void start(Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.ISessionProxy");
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.cast.framework.zzq
            public int zzsB() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.ISessionProxy");
                    this.zzrk.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.cast.framework.zzq
            public IObjectWrapper zzsQ() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.ISessionProxy");
                    this.zzrk.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return IObjectWrapper.zza.zzcd(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public zza() {
            attachInterface(this, "com.google.android.gms.cast.framework.ISessionProxy");
        }

        public static zzq zzaY(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.framework.ISessionProxy");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzq)) ? new C0172zza(iBinder) : (zzq) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            Bundle bundle = null;
            IBinder iBinder = null;
            Bundle bundle2 = null;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.ISessionProxy");
                    IObjectWrapper zzsQ = zzsQ();
                    parcel2.writeNoException();
                    if (zzsQ != null) {
                        iBinder = zzsQ.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.ISessionProxy");
                    if (parcel.readInt() != 0) {
                        bundle2 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    start(bundle2);
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.ISessionProxy");
                    if (parcel.readInt() != 0) {
                        bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    resume(bundle);
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.ISessionProxy");
                    end(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.ISessionProxy");
                    long sessionRemainingTimeMs = getSessionRemainingTimeMs();
                    parcel2.writeNoException();
                    parcel2.writeLong(sessionRemainingTimeMs);
                    return true;
                case 6:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.ISessionProxy");
                    int zzsB = zzsB();
                    parcel2.writeNoException();
                    parcel2.writeInt(zzsB);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.cast.framework.ISessionProxy");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void end(boolean z) throws RemoteException;

    long getSessionRemainingTimeMs() throws RemoteException;

    void resume(Bundle bundle) throws RemoteException;

    void start(Bundle bundle) throws RemoteException;

    int zzsB() throws RemoteException;

    IObjectWrapper zzsQ() throws RemoteException;
}
