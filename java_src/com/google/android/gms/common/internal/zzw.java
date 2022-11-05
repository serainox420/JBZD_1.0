package com.google.android.gms.common.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2.dex */
public interface zzw extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzw {

        /* renamed from: com.google.android.gms.common.internal.zzw$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0180zza implements zzw {
            private IBinder zzrk;

            C0180zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.common.internal.zzw
            public boolean zze(String str, IObjectWrapper iObjectWrapper) throws RemoteException {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGoogleCertificatesApi");
                    obtain.writeString(str);
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

            @Override // com.google.android.gms.common.internal.zzw
            public boolean zzf(String str, IObjectWrapper iObjectWrapper) throws RemoteException {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGoogleCertificatesApi");
                    obtain.writeString(str);
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

            @Override // com.google.android.gms.common.internal.zzw
            public IObjectWrapper zzyc() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGoogleCertificatesApi");
                    this.zzrk.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return IObjectWrapper.zza.zzcd(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.common.internal.zzw
            public IObjectWrapper zzyd() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGoogleCertificatesApi");
                    this.zzrk.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return IObjectWrapper.zza.zzcd(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzw zzbv(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGoogleCertificatesApi");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzw)) ? new C0180zza(iBinder) : (zzw) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            IBinder iBinder = null;
            int i3 = 0;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGoogleCertificatesApi");
                    IObjectWrapper zzyc = zzyc();
                    parcel2.writeNoException();
                    if (zzyc != null) {
                        iBinder = zzyc.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGoogleCertificatesApi");
                    IObjectWrapper zzyd = zzyd();
                    parcel2.writeNoException();
                    if (zzyd != null) {
                        iBinder = zzyd.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGoogleCertificatesApi");
                    boolean zze = zze(parcel.readString(), IObjectWrapper.zza.zzcd(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(zze ? 1 : 0);
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGoogleCertificatesApi");
                    boolean zzf = zzf(parcel.readString(), IObjectWrapper.zza.zzcd(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    if (zzf) {
                        i3 = 1;
                    }
                    parcel2.writeInt(i3);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.common.internal.IGoogleCertificatesApi");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    boolean zze(String str, IObjectWrapper iObjectWrapper) throws RemoteException;

    boolean zzf(String str, IObjectWrapper iObjectWrapper) throws RemoteException;

    IObjectWrapper zzyc() throws RemoteException;

    IObjectWrapper zzyd() throws RemoteException;
}
