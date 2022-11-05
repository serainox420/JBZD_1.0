package com.google.android.gms.location.places.internal;

import android.app.PendingIntent;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.location.places.PlaceFilter;
import com.google.android.gms.location.places.PlaceReport;
import com.google.android.gms.location.places.internal.zzl;
/* loaded from: classes2.dex */
public interface zzi extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzi {

        /* renamed from: com.google.android.gms.location.places.internal.zzi$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0414zza implements zzi {
            private IBinder zzrk;

            C0414zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.location.places.internal.zzi
            public void zza(PlaceFilter placeFilter, zzz zzzVar, zzl zzlVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.places.internal.IGooglePlaceDetectionService");
                    if (placeFilter != null) {
                        obtain.writeInt(1);
                        placeFilter.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (zzzVar != null) {
                        obtain.writeInt(1);
                        zzzVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzlVar != null ? zzlVar.asBinder() : null);
                    this.zzrk.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.location.places.internal.zzi
            public void zza(PlaceReport placeReport, zzz zzzVar, zzl zzlVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.places.internal.IGooglePlaceDetectionService");
                    if (placeReport != null) {
                        obtain.writeInt(1);
                        placeReport.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (zzzVar != null) {
                        obtain.writeInt(1);
                        zzzVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzlVar != null ? zzlVar.asBinder() : null);
                    this.zzrk.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.location.places.internal.zzi
            public void zza(zzz zzzVar, PendingIntent pendingIntent, zzl zzlVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.places.internal.IGooglePlaceDetectionService");
                    if (zzzVar != null) {
                        obtain.writeInt(1);
                        zzzVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (pendingIntent != null) {
                        obtain.writeInt(1);
                        pendingIntent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzlVar != null ? zzlVar.asBinder() : null);
                    this.zzrk.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.location.places.internal.zzi
            public void zza(com.google.android.gms.location.places.zzf zzfVar, zzz zzzVar, PendingIntent pendingIntent, zzl zzlVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.places.internal.IGooglePlaceDetectionService");
                    if (zzfVar != null) {
                        obtain.writeInt(1);
                        zzfVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (zzzVar != null) {
                        obtain.writeInt(1);
                        zzzVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (pendingIntent != null) {
                        obtain.writeInt(1);
                        pendingIntent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzlVar != null ? zzlVar.asBinder() : null);
                    this.zzrk.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.location.places.internal.zzi
            public void zza(com.google.android.gms.location.places.zzm zzmVar, zzz zzzVar, PendingIntent pendingIntent, zzl zzlVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.places.internal.IGooglePlaceDetectionService");
                    if (zzmVar != null) {
                        obtain.writeInt(1);
                        zzmVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (zzzVar != null) {
                        obtain.writeInt(1);
                        zzzVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (pendingIntent != null) {
                        obtain.writeInt(1);
                        pendingIntent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzlVar != null ? zzlVar.asBinder() : null);
                    this.zzrk.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.location.places.internal.zzi
            public void zzb(zzz zzzVar, PendingIntent pendingIntent, zzl zzlVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.places.internal.IGooglePlaceDetectionService");
                    if (zzzVar != null) {
                        obtain.writeInt(1);
                        zzzVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (pendingIntent != null) {
                        obtain.writeInt(1);
                        pendingIntent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzlVar != null ? zzlVar.asBinder() : null);
                    this.zzrk.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzi zzdl(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.places.internal.IGooglePlaceDetectionService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzi)) ? new C0414zza(iBinder) : (zzi) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 2:
                    parcel.enforceInterface("com.google.android.gms.location.places.internal.IGooglePlaceDetectionService");
                    zza(parcel.readInt() != 0 ? com.google.android.gms.location.places.zzm.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? zzz.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (PendingIntent) PendingIntent.CREATOR.createFromParcel(parcel) : null, zzl.zza.zzdo(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.location.places.internal.IGooglePlaceDetectionService");
                    zza(parcel.readInt() != 0 ? zzz.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (PendingIntent) PendingIntent.CREATOR.createFromParcel(parcel) : null, zzl.zza.zzdo(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.location.places.internal.IGooglePlaceDetectionService");
                    zza(parcel.readInt() != 0 ? com.google.android.gms.location.places.zzf.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? zzz.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (PendingIntent) PendingIntent.CREATOR.createFromParcel(parcel) : null, zzl.zza.zzdo(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface("com.google.android.gms.location.places.internal.IGooglePlaceDetectionService");
                    zzb(parcel.readInt() != 0 ? zzz.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (PendingIntent) PendingIntent.CREATOR.createFromParcel(parcel) : null, zzl.zza.zzdo(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface("com.google.android.gms.location.places.internal.IGooglePlaceDetectionService");
                    zza(parcel.readInt() != 0 ? PlaceFilter.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? zzz.CREATOR.createFromParcel(parcel) : null, zzl.zza.zzdo(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface("com.google.android.gms.location.places.internal.IGooglePlaceDetectionService");
                    zza(parcel.readInt() != 0 ? PlaceReport.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? zzz.CREATOR.createFromParcel(parcel) : null, zzl.zza.zzdo(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.location.places.internal.IGooglePlaceDetectionService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(PlaceFilter placeFilter, zzz zzzVar, zzl zzlVar) throws RemoteException;

    void zza(PlaceReport placeReport, zzz zzzVar, zzl zzlVar) throws RemoteException;

    void zza(zzz zzzVar, PendingIntent pendingIntent, zzl zzlVar) throws RemoteException;

    void zza(com.google.android.gms.location.places.zzf zzfVar, zzz zzzVar, PendingIntent pendingIntent, zzl zzlVar) throws RemoteException;

    void zza(com.google.android.gms.location.places.zzm zzmVar, zzz zzzVar, PendingIntent pendingIntent, zzl zzlVar) throws RemoteException;

    void zzb(zzz zzzVar, PendingIntent pendingIntent, zzl zzlVar) throws RemoteException;
}
