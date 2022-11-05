package com.google.android.gms.location.places.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.location.places.PlacePhotoMetadataResult;
import com.google.android.gms.location.places.PlacePhotoResult;
/* loaded from: classes2.dex */
public interface zzk extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzk {

        /* renamed from: com.google.android.gms.location.places.internal.zzk$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0416zza implements zzk {
            private IBinder zzrk;

            C0416zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.location.places.internal.zzk
            public void zza(PlacePhotoMetadataResult placePhotoMetadataResult) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.places.internal.IPhotosCallbacks");
                    if (placePhotoMetadataResult != null) {
                        obtain.writeInt(1);
                        placePhotoMetadataResult.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.location.places.internal.zzk
            public void zza(PlacePhotoResult placePhotoResult) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.places.internal.IPhotosCallbacks");
                    if (placePhotoResult != null) {
                        obtain.writeInt(1);
                        placePhotoResult.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public zza() {
            attachInterface(this, "com.google.android.gms.location.places.internal.IPhotosCallbacks");
        }

        public static zzk zzdn(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.places.internal.IPhotosCallbacks");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzk)) ? new C0416zza(iBinder) : (zzk) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            PlacePhotoResult placePhotoResult = null;
            PlacePhotoMetadataResult placePhotoMetadataResult = null;
            switch (i) {
                case 2:
                    parcel.enforceInterface("com.google.android.gms.location.places.internal.IPhotosCallbacks");
                    if (parcel.readInt() != 0) {
                        placePhotoResult = PlacePhotoResult.CREATOR.createFromParcel(parcel);
                    }
                    zza(placePhotoResult);
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.location.places.internal.IPhotosCallbacks");
                    if (parcel.readInt() != 0) {
                        placePhotoMetadataResult = PlacePhotoMetadataResult.CREATOR.createFromParcel(parcel);
                    }
                    zza(placePhotoMetadataResult);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.location.places.internal.IPhotosCallbacks");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(PlacePhotoMetadataResult placePhotoMetadataResult) throws RemoteException;

    void zza(PlacePhotoResult placePhotoResult) throws RemoteException;
}
