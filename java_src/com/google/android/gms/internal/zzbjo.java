package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.vision.barcode.Barcode;
/* loaded from: classes2.dex */
public interface zzbjo extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzbjo {

        /* renamed from: com.google.android.gms.internal.zzbjo$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0291zza implements zzbjo {
            private IBinder zzrk;

            C0291zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzbjo
            public void zzTQ() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.vision.barcode.internal.client.INativeBarcodeDetector");
                    this.zzrk.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbjo
            public Barcode[] zza(IObjectWrapper iObjectWrapper, zzbka zzbkaVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.vision.barcode.internal.client.INativeBarcodeDetector");
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    if (zzbkaVar != null) {
                        obtain.writeInt(1);
                        zzbkaVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return (Barcode[]) obtain2.createTypedArray(Barcode.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbjo
            public Barcode[] zzb(IObjectWrapper iObjectWrapper, zzbka zzbkaVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.vision.barcode.internal.client.INativeBarcodeDetector");
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    if (zzbkaVar != null) {
                        obtain.writeInt(1);
                        zzbkaVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return (Barcode[]) obtain2.createTypedArray(Barcode.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzbjo zzfn(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.vision.barcode.internal.client.INativeBarcodeDetector");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzbjo)) ? new C0291zza(iBinder) : (zzbjo) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            zzbka zzbkaVar = null;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.vision.barcode.internal.client.INativeBarcodeDetector");
                    IObjectWrapper zzcd = IObjectWrapper.zza.zzcd(parcel.readStrongBinder());
                    if (parcel.readInt() != 0) {
                        zzbkaVar = zzbka.CREATOR.createFromParcel(parcel);
                    }
                    Barcode[] zza = zza(zzcd, zzbkaVar);
                    parcel2.writeNoException();
                    parcel2.writeTypedArray(zza, 1);
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.vision.barcode.internal.client.INativeBarcodeDetector");
                    IObjectWrapper zzcd2 = IObjectWrapper.zza.zzcd(parcel.readStrongBinder());
                    if (parcel.readInt() != 0) {
                        zzbkaVar = zzbka.CREATOR.createFromParcel(parcel);
                    }
                    Barcode[] zzb = zzb(zzcd2, zzbkaVar);
                    parcel2.writeNoException();
                    parcel2.writeTypedArray(zzb, 1);
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.vision.barcode.internal.client.INativeBarcodeDetector");
                    zzTQ();
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.vision.barcode.internal.client.INativeBarcodeDetector");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zzTQ() throws RemoteException;

    Barcode[] zza(IObjectWrapper iObjectWrapper, zzbka zzbkaVar) throws RemoteException;

    Barcode[] zzb(IObjectWrapper iObjectWrapper, zzbka zzbkaVar) throws RemoteException;
}
