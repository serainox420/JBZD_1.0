package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2.dex */
public interface zzbkf extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzbkf {

        /* renamed from: com.google.android.gms.internal.zzbkf$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0295zza implements zzbkf {
            private IBinder zzrk;

            C0295zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzbkf
            public void zzTW() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.vision.text.internal.client.INativeTextRecognizer");
                    this.zzrk.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbkf
            public zzbkh[] zza(IObjectWrapper iObjectWrapper, zzbka zzbkaVar, zzbkj zzbkjVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.vision.text.internal.client.INativeTextRecognizer");
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    if (zzbkaVar != null) {
                        obtain.writeInt(1);
                        zzbkaVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (zzbkjVar != null) {
                        obtain.writeInt(1);
                        zzbkjVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return (zzbkh[]) obtain2.createTypedArray(zzbkh.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbkf
            public zzbkh[] zzd(IObjectWrapper iObjectWrapper, zzbka zzbkaVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.vision.text.internal.client.INativeTextRecognizer");
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    if (zzbkaVar != null) {
                        obtain.writeInt(1);
                        zzbkaVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return (zzbkh[]) obtain2.createTypedArray(zzbkh.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzbkf zzfr(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.vision.text.internal.client.INativeTextRecognizer");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzbkf)) ? new C0295zza(iBinder) : (zzbkf) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.vision.text.internal.client.INativeTextRecognizer");
                    zzbkh[] zzd = zzd(IObjectWrapper.zza.zzcd(parcel.readStrongBinder()), parcel.readInt() != 0 ? zzbka.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeTypedArray(zzd, 1);
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.vision.text.internal.client.INativeTextRecognizer");
                    zzTW();
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.vision.text.internal.client.INativeTextRecognizer");
                    zzbkh[] zza = zza(IObjectWrapper.zza.zzcd(parcel.readStrongBinder()), parcel.readInt() != 0 ? zzbka.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? zzbkj.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeTypedArray(zza, 1);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.vision.text.internal.client.INativeTextRecognizer");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zzTW() throws RemoteException;

    zzbkh[] zza(IObjectWrapper iObjectWrapper, zzbka zzbkaVar, zzbkj zzbkjVar) throws RemoteException;

    zzbkh[] zzd(IObjectWrapper iObjectWrapper, zzbka zzbkaVar) throws RemoteException;
}
