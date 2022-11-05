package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.cast.LaunchOptions;
/* loaded from: classes2.dex */
public interface zzyw extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzyw {

        /* renamed from: com.google.android.gms.internal.zzyw$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0406zza implements zzyw {
            private IBinder zzrk;

            C0406zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzyw
            public void disconnect() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
                    this.zzrk.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzyw
            public void requestStatus() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
                    this.zzrk.transact(6, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzyw
            public void zza(double d, double d2, boolean z) throws RemoteException {
                int i = 1;
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
                    obtain.writeDouble(d);
                    obtain.writeDouble(d2);
                    if (!z) {
                        i = 0;
                    }
                    obtain.writeInt(i);
                    this.zzrk.transact(7, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzyw
            public void zza(String str, String str2, com.google.android.gms.cast.zzf zzfVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    if (zzfVar != null) {
                        obtain.writeInt(1);
                        zzfVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(14, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzyw
            public void zza(String str, byte[] bArr, long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
                    obtain.writeString(str);
                    obtain.writeByteArray(bArr);
                    obtain.writeLong(j);
                    this.zzrk.transact(10, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzyw
            public void zza(boolean z, double d, boolean z2) throws RemoteException {
                int i = 1;
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
                    obtain.writeInt(z ? 1 : 0);
                    obtain.writeDouble(d);
                    if (!z2) {
                        i = 0;
                    }
                    obtain.writeInt(i);
                    this.zzrk.transact(8, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzyw
            public void zzb(String str, LaunchOptions launchOptions) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
                    obtain.writeString(str);
                    if (launchOptions != null) {
                        obtain.writeInt(1);
                        launchOptions.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(13, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzyw
            public void zzb(String str, String str2, long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeLong(j);
                    this.zzrk.transact(9, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzyw
            public void zzb(String str, String str2, long j, String str3) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeLong(j);
                    obtain.writeString(str3);
                    this.zzrk.transact(15, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzyw
            public void zzcK(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
                    obtain.writeString(str);
                    this.zzrk.transact(5, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzyw
            public void zzcT(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
                    obtain.writeString(str);
                    this.zzrk.transact(11, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzyw
            public void zzcU(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
                    obtain.writeString(str);
                    this.zzrk.transact(12, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzyw
            public void zzi(String str, boolean z) throws RemoteException {
                int i = 1;
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
                    obtain.writeString(str);
                    if (!z) {
                        i = 0;
                    }
                    obtain.writeInt(i);
                    this.zzrk.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzyw
            public void zzuL() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
                    this.zzrk.transact(4, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzyw
            public void zzz(String str, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.zzrk.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public static zzyw zzbh(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.internal.ICastDeviceController");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzyw)) ? new C0406zza(iBinder) : (zzyw) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            boolean z = false;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceController");
                    disconnect();
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceController");
                    String readString = parcel.readString();
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    zzi(readString, z);
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceController");
                    zzz(parcel.readString(), parcel.readString());
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceController");
                    zzuL();
                    return true;
                case 5:
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceController");
                    zzcK(parcel.readString());
                    return true;
                case 6:
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceController");
                    requestStatus();
                    return true;
                case 7:
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceController");
                    zza(parcel.readDouble(), parcel.readDouble(), parcel.readInt() != 0);
                    return true;
                case 8:
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceController");
                    boolean z2 = parcel.readInt() != 0;
                    double readDouble = parcel.readDouble();
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    zza(z2, readDouble, z);
                    return true;
                case 9:
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceController");
                    zzb(parcel.readString(), parcel.readString(), parcel.readLong());
                    return true;
                case 10:
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceController");
                    zza(parcel.readString(), parcel.createByteArray(), parcel.readLong());
                    return true;
                case 11:
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceController");
                    zzcT(parcel.readString());
                    return true;
                case 12:
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceController");
                    zzcU(parcel.readString());
                    return true;
                case 13:
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceController");
                    zzb(parcel.readString(), parcel.readInt() != 0 ? LaunchOptions.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 14:
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceController");
                    zza(parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? com.google.android.gms.cast.zzf.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 15:
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceController");
                    zzb(parcel.readString(), parcel.readString(), parcel.readLong(), parcel.readString());
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.cast.internal.ICastDeviceController");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void disconnect() throws RemoteException;

    void requestStatus() throws RemoteException;

    void zza(double d, double d2, boolean z) throws RemoteException;

    void zza(String str, String str2, com.google.android.gms.cast.zzf zzfVar) throws RemoteException;

    void zza(String str, byte[] bArr, long j) throws RemoteException;

    void zza(boolean z, double d, boolean z2) throws RemoteException;

    void zzb(String str, LaunchOptions launchOptions) throws RemoteException;

    void zzb(String str, String str2, long j) throws RemoteException;

    void zzb(String str, String str2, long j, String str3) throws RemoteException;

    void zzcK(String str) throws RemoteException;

    void zzcT(String str) throws RemoteException;

    void zzcU(String str) throws RemoteException;

    void zzi(String str, boolean z) throws RemoteException;

    void zzuL() throws RemoteException;

    void zzz(String str, String str2) throws RemoteException;
}
