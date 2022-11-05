package com.google.android.gms.cast.framework;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2.dex */
public interface zzm extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzm {

        /* renamed from: com.google.android.gms.cast.framework.zzm$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0169zza implements zzm {
            private IBinder zzrk;

            C0169zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.cast.framework.zzm
            public String getCategory() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.ISession");
                    this.zzrk.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.cast.framework.zzm
            public String getSessionId() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.ISession");
                    this.zzrk.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.cast.framework.zzm
            public boolean isConnected() throws RemoteException {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.ISession");
                    this.zzrk.transact(5, obtain, obtain2, 0);
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

            @Override // com.google.android.gms.cast.framework.zzm
            public boolean isConnecting() throws RemoteException {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.ISession");
                    this.zzrk.transact(6, obtain, obtain2, 0);
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

            @Override // com.google.android.gms.cast.framework.zzm
            public boolean isDisconnected() throws RemoteException {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.ISession");
                    this.zzrk.transact(8, obtain, obtain2, 0);
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

            @Override // com.google.android.gms.cast.framework.zzm
            public boolean isDisconnecting() throws RemoteException {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.ISession");
                    this.zzrk.transact(7, obtain, obtain2, 0);
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

            @Override // com.google.android.gms.cast.framework.zzm
            public boolean isResuming() throws RemoteException {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.ISession");
                    this.zzrk.transact(9, obtain, obtain2, 0);
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

            @Override // com.google.android.gms.cast.framework.zzm
            public boolean isSuspended() throws RemoteException {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.ISession");
                    this.zzrk.transact(10, obtain, obtain2, 0);
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

            @Override // com.google.android.gms.cast.framework.zzm
            public void notifyFailedToResumeSession(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.ISession");
                    obtain.writeInt(i);
                    this.zzrk.transact(15, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.cast.framework.zzm
            public void notifyFailedToStartSession(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.ISession");
                    obtain.writeInt(i);
                    this.zzrk.transact(12, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.cast.framework.zzm
            public void notifySessionEnded(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.ISession");
                    obtain.writeInt(i);
                    this.zzrk.transact(13, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.cast.framework.zzm
            public void notifySessionResumed(boolean z) throws RemoteException {
                int i = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.ISession");
                    if (z) {
                        i = 1;
                    }
                    obtain.writeInt(i);
                    this.zzrk.transact(14, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.cast.framework.zzm
            public void notifySessionStarted(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.ISession");
                    obtain.writeString(str);
                    this.zzrk.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.cast.framework.zzm
            public void notifySessionSuspended(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.ISession");
                    obtain.writeInt(i);
                    this.zzrk.transact(16, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.cast.framework.zzm
            public IObjectWrapper zzsN() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.ISession");
                    this.zzrk.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return IObjectWrapper.zza.zzcd(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.cast.framework.zzm
            public String zzsO() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.ISession");
                    this.zzrk.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzm zzaV(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.framework.ISession");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzm)) ? new C0169zza(iBinder) : (zzm) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            boolean z = false;
            int i3 = 0;
            int i4 = 0;
            int i5 = 0;
            int i6 = 0;
            int i7 = 0;
            int i8 = 0;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.ISession");
                    IObjectWrapper zzsN = zzsN();
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(zzsN != null ? zzsN.asBinder() : null);
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.ISession");
                    String category = getCategory();
                    parcel2.writeNoException();
                    parcel2.writeString(category);
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.ISession");
                    String sessionId = getSessionId();
                    parcel2.writeNoException();
                    parcel2.writeString(sessionId);
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.ISession");
                    String zzsO = zzsO();
                    parcel2.writeNoException();
                    parcel2.writeString(zzsO);
                    return true;
                case 5:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.ISession");
                    boolean isConnected = isConnected();
                    parcel2.writeNoException();
                    if (isConnected) {
                        i3 = 1;
                    }
                    parcel2.writeInt(i3);
                    return true;
                case 6:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.ISession");
                    boolean isConnecting = isConnecting();
                    parcel2.writeNoException();
                    if (isConnecting) {
                        i4 = 1;
                    }
                    parcel2.writeInt(i4);
                    return true;
                case 7:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.ISession");
                    boolean isDisconnecting = isDisconnecting();
                    parcel2.writeNoException();
                    if (isDisconnecting) {
                        i5 = 1;
                    }
                    parcel2.writeInt(i5);
                    return true;
                case 8:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.ISession");
                    boolean isDisconnected = isDisconnected();
                    parcel2.writeNoException();
                    if (isDisconnected) {
                        i6 = 1;
                    }
                    parcel2.writeInt(i6);
                    return true;
                case 9:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.ISession");
                    boolean isResuming = isResuming();
                    parcel2.writeNoException();
                    if (isResuming) {
                        i7 = 1;
                    }
                    parcel2.writeInt(i7);
                    return true;
                case 10:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.ISession");
                    boolean isSuspended = isSuspended();
                    parcel2.writeNoException();
                    if (isSuspended) {
                        i8 = 1;
                    }
                    parcel2.writeInt(i8);
                    return true;
                case 11:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.ISession");
                    notifySessionStarted(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.ISession");
                    notifyFailedToStartSession(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.ISession");
                    notifySessionEnded(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.ISession");
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    notifySessionResumed(z);
                    parcel2.writeNoException();
                    return true;
                case 15:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.ISession");
                    notifyFailedToResumeSession(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 16:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.ISession");
                    notifySessionSuspended(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.cast.framework.ISession");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    String getCategory() throws RemoteException;

    String getSessionId() throws RemoteException;

    boolean isConnected() throws RemoteException;

    boolean isConnecting() throws RemoteException;

    boolean isDisconnected() throws RemoteException;

    boolean isDisconnecting() throws RemoteException;

    boolean isResuming() throws RemoteException;

    boolean isSuspended() throws RemoteException;

    void notifyFailedToResumeSession(int i) throws RemoteException;

    void notifyFailedToStartSession(int i) throws RemoteException;

    void notifySessionEnded(int i) throws RemoteException;

    void notifySessionResumed(boolean z) throws RemoteException;

    void notifySessionStarted(String str) throws RemoteException;

    void notifySessionSuspended(int i) throws RemoteException;

    IObjectWrapper zzsN() throws RemoteException;

    String zzsO() throws RemoteException;
}
