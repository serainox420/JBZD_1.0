package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2.dex */
public interface zzco extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzco {

        /* renamed from: com.google.android.gms.internal.zzco$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0317zza implements zzco {
            private IBinder zzrk;

            C0317zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzco
            public IObjectWrapper zza(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.adshield.internal.IAdShieldClient");
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    if (iObjectWrapper2 != null) {
                        iBinder = iObjectWrapper2.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    this.zzrk.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                    return IObjectWrapper.zza.zzcd(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzco
            public String zza(IObjectWrapper iObjectWrapper, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.adshield.internal.IAdShieldClient");
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    obtain.writeString(str);
                    this.zzrk.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzco
            public String zza(IObjectWrapper iObjectWrapper, byte[] bArr) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.adshield.internal.IAdShieldClient");
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    obtain.writeByteArray(bArr);
                    this.zzrk.transact(12, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzco
            public boolean zza(IObjectWrapper iObjectWrapper) throws RemoteException {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.adshield.internal.IAdShieldClient");
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    this.zzrk.transact(3, obtain, obtain2, 0);
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

            @Override // com.google.android.gms.internal.zzco
            public IObjectWrapper zzb(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.adshield.internal.IAdShieldClient");
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    if (iObjectWrapper2 != null) {
                        iBinder = iObjectWrapper2.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    this.zzrk.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                    return IObjectWrapper.zza.zzcd(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzco
            public void zzb(String str, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.adshield.internal.IAdShieldClient");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.zzrk.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzco
            public boolean zzb(IObjectWrapper iObjectWrapper) throws RemoteException {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.adshield.internal.IAdShieldClient");
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    this.zzrk.transact(4, obtain, obtain2, 0);
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

            @Override // com.google.android.gms.internal.zzco
            public boolean zzb(String str, boolean z) throws RemoteException {
                boolean z2 = true;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.adshield.internal.IAdShieldClient");
                    obtain.writeString(str);
                    obtain.writeInt(z ? 1 : 0);
                    this.zzrk.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() == 0) {
                        z2 = false;
                    }
                    return z2;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzco
            public String zzbt() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.adshield.internal.IAdShieldClient");
                    this.zzrk.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzco
            public String zzc(IObjectWrapper iObjectWrapper) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.adshield.internal.IAdShieldClient");
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    this.zzrk.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzco
            public void zzd(IObjectWrapper iObjectWrapper) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.adshield.internal.IAdShieldClient");
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    this.zzrk.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzco
            public void zzm(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.adshield.internal.IAdShieldClient");
                    obtain.writeString(str);
                    this.zzrk.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public zza() {
            attachInterface(this, "com.google.android.gms.ads.adshield.internal.IAdShieldClient");
        }

        public static zzco zzd(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.adshield.internal.IAdShieldClient");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzco)) ? new C0317zza(iBinder) : (zzco) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            IBinder iBinder = null;
            int i3 = 0;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.ads.adshield.internal.IAdShieldClient");
                    String zzbt = zzbt();
                    parcel2.writeNoException();
                    parcel2.writeString(zzbt);
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.ads.adshield.internal.IAdShieldClient");
                    zzb(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.ads.adshield.internal.IAdShieldClient");
                    boolean zza = zza(IObjectWrapper.zza.zzcd(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    if (zza) {
                        i3 = 1;
                    }
                    parcel2.writeInt(i3);
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.ads.adshield.internal.IAdShieldClient");
                    boolean zzb = zzb(IObjectWrapper.zza.zzcd(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    if (zzb) {
                        i3 = 1;
                    }
                    parcel2.writeInt(i3);
                    return true;
                case 5:
                    parcel.enforceInterface("com.google.android.gms.ads.adshield.internal.IAdShieldClient");
                    zzm(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface("com.google.android.gms.ads.adshield.internal.IAdShieldClient");
                    IObjectWrapper zza2 = zza(IObjectWrapper.zza.zzcd(parcel.readStrongBinder()), IObjectWrapper.zza.zzcd(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(zza2 != null ? zza2.asBinder() : null);
                    return true;
                case 7:
                    parcel.enforceInterface("com.google.android.gms.ads.adshield.internal.IAdShieldClient");
                    String zzc = zzc(IObjectWrapper.zza.zzcd(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeString(zzc);
                    return true;
                case 8:
                    parcel.enforceInterface("com.google.android.gms.ads.adshield.internal.IAdShieldClient");
                    String zza3 = zza(IObjectWrapper.zza.zzcd(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(zza3);
                    return true;
                case 9:
                    parcel.enforceInterface("com.google.android.gms.ads.adshield.internal.IAdShieldClient");
                    zzd(IObjectWrapper.zza.zzcd(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface("com.google.android.gms.ads.adshield.internal.IAdShieldClient");
                    IObjectWrapper zzb2 = zzb(IObjectWrapper.zza.zzcd(parcel.readStrongBinder()), IObjectWrapper.zza.zzcd(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    if (zzb2 != null) {
                        iBinder = zzb2.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case 11:
                    parcel.enforceInterface("com.google.android.gms.ads.adshield.internal.IAdShieldClient");
                    boolean zzb3 = zzb(parcel.readString(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    if (zzb3) {
                        i3 = 1;
                    }
                    parcel2.writeInt(i3);
                    return true;
                case 12:
                    parcel.enforceInterface("com.google.android.gms.ads.adshield.internal.IAdShieldClient");
                    String zza4 = zza(IObjectWrapper.zza.zzcd(parcel.readStrongBinder()), parcel.createByteArray());
                    parcel2.writeNoException();
                    parcel2.writeString(zza4);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.ads.adshield.internal.IAdShieldClient");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    IObjectWrapper zza(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) throws RemoteException;

    String zza(IObjectWrapper iObjectWrapper, String str) throws RemoteException;

    String zza(IObjectWrapper iObjectWrapper, byte[] bArr) throws RemoteException;

    boolean zza(IObjectWrapper iObjectWrapper) throws RemoteException;

    IObjectWrapper zzb(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) throws RemoteException;

    void zzb(String str, String str2) throws RemoteException;

    boolean zzb(IObjectWrapper iObjectWrapper) throws RemoteException;

    boolean zzb(String str, boolean z) throws RemoteException;

    String zzbt() throws RemoteException;

    String zzc(IObjectWrapper iObjectWrapper) throws RemoteException;

    void zzd(IObjectWrapper iObjectWrapper) throws RemoteException;

    void zzm(String str) throws RemoteException;
}
