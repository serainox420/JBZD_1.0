package com.google.android.gms.location;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2.dex */
public interface zzj extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzj {

        /* renamed from: com.google.android.gms.location.zzj$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0419zza implements zzj {
            private IBinder zzrk;

            C0419zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.location.zzj
            public void onLocationAvailability(LocationAvailability locationAvailability) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.ILocationCallback");
                    if (locationAvailability != null) {
                        obtain.writeInt(1);
                        locationAvailability.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.location.zzj
            public void onLocationResult(LocationResult locationResult) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.ILocationCallback");
                    if (locationResult != null) {
                        obtain.writeInt(1);
                        locationResult.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public zza() {
            attachInterface(this, "com.google.android.gms.location.ILocationCallback");
        }

        public static zzj zzdd(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.ILocationCallback");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzj)) ? new C0419zza(iBinder) : (zzj) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            LocationAvailability locationAvailability = null;
            LocationResult locationResult = null;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.location.ILocationCallback");
                    if (parcel.readInt() != 0) {
                        locationResult = LocationResult.CREATOR.createFromParcel(parcel);
                    }
                    onLocationResult(locationResult);
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.location.ILocationCallback");
                    if (parcel.readInt() != 0) {
                        locationAvailability = LocationAvailability.CREATOR.createFromParcel(parcel);
                    }
                    onLocationAvailability(locationAvailability);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.location.ILocationCallback");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void onLocationAvailability(LocationAvailability locationAvailability) throws RemoteException;

    void onLocationResult(LocationResult locationResult) throws RemoteException;
}
