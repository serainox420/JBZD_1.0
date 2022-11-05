package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzbjo;
/* loaded from: classes2.dex */
public interface zzbjp extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzbjp {

        /* renamed from: com.google.android.gms.internal.zzbjp$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0292zza implements zzbjp {
            private IBinder zzrk;

            C0292zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzbjp
            public zzbjo zza(IObjectWrapper iObjectWrapper, zzbjl zzbjlVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.vision.barcode.internal.client.INativeBarcodeDetectorCreator");
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    if (zzbjlVar != null) {
                        obtain.writeInt(1);
                        zzbjlVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return zzbjo.zza.zzfn(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzbjp zzfo(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.vision.barcode.internal.client.INativeBarcodeDetectorCreator");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzbjp)) ? new C0292zza(iBinder) : (zzbjp) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            IBinder iBinder = null;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.vision.barcode.internal.client.INativeBarcodeDetectorCreator");
                    zzbjo zza = zza(IObjectWrapper.zza.zzcd(parcel.readStrongBinder()), parcel.readInt() != 0 ? zzbjl.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    if (zza != null) {
                        iBinder = zza.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.vision.barcode.internal.client.INativeBarcodeDetectorCreator");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    zzbjo zza(IObjectWrapper iObjectWrapper, zzbjl zzbjlVar) throws RemoteException;
}
