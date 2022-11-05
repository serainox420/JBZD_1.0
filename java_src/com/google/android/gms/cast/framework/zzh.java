package com.google.android.gms.cast.framework;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.common.ConnectionResult;
/* loaded from: classes2.dex */
public interface zzh extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzh {

        /* renamed from: com.google.android.gms.cast.framework.zzh$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0164zza implements zzh {
            private IBinder zzrk;

            C0164zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.cast.framework.zzh
            public void onConnected(Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.ICastSession");
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.cast.framework.zzh
            public void onConnectionFailed(ConnectionResult connectionResult) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.ICastSession");
                    if (connectionResult != null) {
                        obtain.writeInt(1);
                        connectionResult.writeToParcel(obtain, 0);
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

            @Override // com.google.android.gms.cast.framework.zzh
            public void onConnectionSuspended(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.ICastSession");
                    obtain.writeInt(i);
                    this.zzrk.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.cast.framework.zzh
            public void zza(ApplicationMetadata applicationMetadata, String str, String str2, boolean z) throws RemoteException {
                int i = 1;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.ICastSession");
                    if (applicationMetadata != null) {
                        obtain.writeInt(1);
                        applicationMetadata.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    if (!z) {
                        i = 0;
                    }
                    obtain.writeInt(i);
                    this.zzrk.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.cast.framework.zzh
            public void zzb(boolean z, int i) throws RemoteException {
                int i2 = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.ICastSession");
                    if (z) {
                        i2 = 1;
                    }
                    obtain.writeInt(i2);
                    obtain.writeInt(i);
                    this.zzrk.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.cast.framework.zzh
            public void zzbZ(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.ICastSession");
                    obtain.writeInt(i);
                    this.zzrk.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzh zzaQ(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.framework.ICastSession");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzh)) ? new C0164zza(iBinder) : (zzh) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            boolean z = false;
            ApplicationMetadata applicationMetadata = null;
            Bundle bundle = null;
            ConnectionResult connectionResult = null;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.ICastSession");
                    if (parcel.readInt() != 0) {
                        bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    onConnected(bundle);
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.ICastSession");
                    onConnectionSuspended(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.ICastSession");
                    if (parcel.readInt() != 0) {
                        connectionResult = ConnectionResult.CREATOR.createFromParcel(parcel);
                    }
                    onConnectionFailed(connectionResult);
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.ICastSession");
                    if (parcel.readInt() != 0) {
                        applicationMetadata = ApplicationMetadata.CREATOR.createFromParcel(parcel);
                    }
                    String readString = parcel.readString();
                    String readString2 = parcel.readString();
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    zza(applicationMetadata, readString, readString2, z);
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.ICastSession");
                    zzbZ(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.ICastSession");
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    zzb(z, parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.cast.framework.ICastSession");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void onConnected(Bundle bundle) throws RemoteException;

    void onConnectionFailed(ConnectionResult connectionResult) throws RemoteException;

    void onConnectionSuspended(int i) throws RemoteException;

    void zza(ApplicationMetadata applicationMetadata, String str, String str2, boolean z) throws RemoteException;

    void zzb(boolean z, int i) throws RemoteException;

    void zzbZ(int i) throws RemoteException;
}
