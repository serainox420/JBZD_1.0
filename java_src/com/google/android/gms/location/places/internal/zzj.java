package com.google.android.gms.location.places.internal;

import android.app.PendingIntent;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.zzasu;
import com.google.android.gms.location.places.AddPlaceRequest;
import com.google.android.gms.location.places.AutocompleteFilter;
import com.google.android.gms.location.places.PlaceFilter;
import com.google.android.gms.location.places.PlaceReport;
import com.google.android.gms.location.places.internal.zzk;
import com.google.android.gms.location.places.internal.zzl;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import java.util.List;
/* loaded from: classes2.dex */
public interface zzj extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzj {

        /* renamed from: com.google.android.gms.location.places.internal.zzj$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0415zza implements zzj {
            private IBinder zzrk;

            C0415zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.location.places.internal.zzj
            public void zza(AddPlaceRequest addPlaceRequest, zzz zzzVar, zzl zzlVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.places.internal.IGooglePlacesService");
                    if (addPlaceRequest != null) {
                        obtain.writeInt(1);
                        addPlaceRequest.writeToParcel(obtain, 0);
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
                    this.zzrk.transact(14, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.location.places.internal.zzj
            public void zza(PlaceReport placeReport, zzz zzzVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.places.internal.IGooglePlacesService");
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
                    this.zzrk.transact(15, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.location.places.internal.zzj
            public void zza(zzz zzzVar, PendingIntent pendingIntent) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.places.internal.IGooglePlacesService");
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
                    this.zzrk.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.location.places.internal.zzj
            public void zza(zzz zzzVar, zzasu zzasuVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.places.internal.IGooglePlacesService");
                    if (zzzVar != null) {
                        obtain.writeInt(1);
                        zzzVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzasuVar != null ? zzasuVar.asBinder() : null);
                    this.zzrk.transact(24, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.location.places.internal.zzj
            public void zza(zzz zzzVar, zzl zzlVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.places.internal.IGooglePlacesService");
                    if (zzzVar != null) {
                        obtain.writeInt(1);
                        zzzVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzlVar != null ? zzlVar.asBinder() : null);
                    this.zzrk.transact(23, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.location.places.internal.zzj
            public void zza(com.google.android.gms.location.places.zzf zzfVar, zzz zzzVar, PendingIntent pendingIntent) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.places.internal.IGooglePlacesService");
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
                    this.zzrk.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.location.places.internal.zzj
            public void zza(com.google.android.gms.location.places.zzm zzmVar, zzz zzzVar, PendingIntent pendingIntent) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.places.internal.IGooglePlacesService");
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
                    this.zzrk.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.location.places.internal.zzj
            public void zza(com.google.android.gms.location.places.zzp zzpVar, LatLngBounds latLngBounds, List<String> list, zzz zzzVar, zzl zzlVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.places.internal.IGooglePlacesService");
                    if (zzpVar != null) {
                        obtain.writeInt(1);
                        zzpVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (latLngBounds != null) {
                        obtain.writeInt(1);
                        latLngBounds.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStringList(list);
                    if (zzzVar != null) {
                        obtain.writeInt(1);
                        zzzVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzlVar != null ? zzlVar.asBinder() : null);
                    this.zzrk.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.location.places.internal.zzj
            public void zza(LatLng latLng, PlaceFilter placeFilter, zzz zzzVar, zzl zzlVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.places.internal.IGooglePlacesService");
                    if (latLng != null) {
                        obtain.writeInt(1);
                        latLng.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
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
                    this.zzrk.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.location.places.internal.zzj
            public void zza(LatLng latLng, zzz zzzVar, zzl zzlVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.places.internal.IGooglePlacesService");
                    if (latLng != null) {
                        obtain.writeInt(1);
                        latLng.writeToParcel(obtain, 0);
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
                    this.zzrk.transact(22, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.location.places.internal.zzj
            public void zza(LatLngBounds latLngBounds, int i, String str, PlaceFilter placeFilter, zzz zzzVar, zzl zzlVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.places.internal.IGooglePlacesService");
                    if (latLngBounds != null) {
                        obtain.writeInt(1);
                        latLngBounds.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(i);
                    obtain.writeString(str);
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
                    this.zzrk.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.location.places.internal.zzj
            public void zza(String str, int i, int i2, int i3, zzz zzzVar, zzk zzkVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.places.internal.IGooglePlacesService");
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    if (zzzVar != null) {
                        obtain.writeInt(1);
                        zzzVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzkVar != null ? zzkVar.asBinder() : null);
                    this.zzrk.transact(20, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.location.places.internal.zzj
            public void zza(String str, int i, zzz zzzVar, zzl zzlVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.places.internal.IGooglePlacesService");
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    if (zzzVar != null) {
                        obtain.writeInt(1);
                        zzzVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzlVar != null ? zzlVar.asBinder() : null);
                    this.zzrk.transact(18, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.location.places.internal.zzj
            public void zza(String str, zzz zzzVar, zzk zzkVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.places.internal.IGooglePlacesService");
                    obtain.writeString(str);
                    if (zzzVar != null) {
                        obtain.writeInt(1);
                        zzzVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzkVar != null ? zzkVar.asBinder() : null);
                    this.zzrk.transact(19, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.location.places.internal.zzj
            public void zza(String str, zzz zzzVar, zzl zzlVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.places.internal.IGooglePlacesService");
                    obtain.writeString(str);
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

            @Override // com.google.android.gms.location.places.internal.zzj
            public void zza(String str, LatLngBounds latLngBounds, AutocompleteFilter autocompleteFilter, zzz zzzVar, zzl zzlVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.places.internal.IGooglePlacesService");
                    obtain.writeString(str);
                    if (latLngBounds != null) {
                        obtain.writeInt(1);
                        latLngBounds.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (autocompleteFilter != null) {
                        obtain.writeInt(1);
                        autocompleteFilter.writeToParcel(obtain, 0);
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
                    this.zzrk.transact(13, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.location.places.internal.zzj
            public void zza(String str, String str2, zzz zzzVar, zzasu zzasuVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.places.internal.IGooglePlacesService");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    if (zzzVar != null) {
                        obtain.writeInt(1);
                        zzzVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzasuVar != null ? zzasuVar.asBinder() : null);
                    this.zzrk.transact(21, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.location.places.internal.zzj
            public void zza(String str, String str2, String str3, zzz zzzVar, zzasu zzasuVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.places.internal.IGooglePlacesService");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    if (zzzVar != null) {
                        obtain.writeInt(1);
                        zzzVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzasuVar != null ? zzasuVar.asBinder() : null);
                    this.zzrk.transact(16, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.location.places.internal.zzj
            public void zza(List<String> list, zzz zzzVar, zzl zzlVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.places.internal.IGooglePlacesService");
                    obtain.writeStringList(list);
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

            @Override // com.google.android.gms.location.places.internal.zzj
            public void zzb(PlaceFilter placeFilter, zzz zzzVar, zzl zzlVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.places.internal.IGooglePlacesService");
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
                    this.zzrk.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.location.places.internal.zzj
            public void zzb(zzz zzzVar, PendingIntent pendingIntent) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.places.internal.IGooglePlacesService");
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
                    this.zzrk.transact(12, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.location.places.internal.zzj
            public void zzb(zzz zzzVar, zzasu zzasuVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.places.internal.IGooglePlacesService");
                    if (zzzVar != null) {
                        obtain.writeInt(1);
                        zzzVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzasuVar != null ? zzasuVar.asBinder() : null);
                    this.zzrk.transact(25, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.location.places.internal.zzj
            public void zzb(zzz zzzVar, zzl zzlVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.places.internal.IGooglePlacesService");
                    if (zzzVar != null) {
                        obtain.writeInt(1);
                        zzzVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzlVar != null ? zzlVar.asBinder() : null);
                    this.zzrk.transact(26, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.location.places.internal.zzj
            public void zzb(List<String> list, zzz zzzVar, zzl zzlVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.places.internal.IGooglePlacesService");
                    obtain.writeStringList(list);
                    if (zzzVar != null) {
                        obtain.writeInt(1);
                        zzzVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzlVar != null ? zzlVar.asBinder() : null);
                    this.zzrk.transact(17, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzj zzdm(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.places.internal.IGooglePlacesService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzj)) ? new C0415zza(iBinder) : (zzj) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            zzz zzzVar = null;
            switch (i) {
                case 2:
                    parcel.enforceInterface("com.google.android.gms.location.places.internal.IGooglePlacesService");
                    LatLngBounds createFromParcel = parcel.readInt() != 0 ? LatLngBounds.CREATOR.createFromParcel(parcel) : null;
                    int readInt = parcel.readInt();
                    String readString = parcel.readString();
                    PlaceFilter createFromParcel2 = parcel.readInt() != 0 ? PlaceFilter.CREATOR.createFromParcel(parcel) : null;
                    if (parcel.readInt() != 0) {
                        zzzVar = zzz.CREATOR.createFromParcel(parcel);
                    }
                    zza(createFromParcel, readInt, readString, createFromParcel2, zzzVar, zzl.zza.zzdo(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.location.places.internal.IGooglePlacesService");
                    zza(parcel.readInt() != 0 ? LatLng.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? PlaceFilter.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? zzz.CREATOR.createFromParcel(parcel) : null, zzl.zza.zzdo(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface("com.google.android.gms.location.places.internal.IGooglePlacesService");
                    zzb(parcel.readInt() != 0 ? PlaceFilter.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? zzz.CREATOR.createFromParcel(parcel) : null, zzl.zza.zzdo(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface("com.google.android.gms.location.places.internal.IGooglePlacesService");
                    zza(parcel.readString(), parcel.readInt() != 0 ? zzz.CREATOR.createFromParcel(parcel) : null, zzl.zza.zzdo(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface("com.google.android.gms.location.places.internal.IGooglePlacesService");
                    zza(parcel.createStringArrayList(), parcel.readInt() != 0 ? zzz.CREATOR.createFromParcel(parcel) : null, zzl.zza.zzdo(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface("com.google.android.gms.location.places.internal.IGooglePlacesService");
                    zza(parcel.readInt() != 0 ? com.google.android.gms.location.places.zzp.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? LatLngBounds.CREATOR.createFromParcel(parcel) : null, parcel.createStringArrayList(), parcel.readInt() != 0 ? zzz.CREATOR.createFromParcel(parcel) : null, zzl.zza.zzdo(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface("com.google.android.gms.location.places.internal.IGooglePlacesService");
                    zza(parcel.readInt() != 0 ? com.google.android.gms.location.places.zzm.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? zzz.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (PendingIntent) PendingIntent.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface("com.google.android.gms.location.places.internal.IGooglePlacesService");
                    zza(parcel.readInt() != 0 ? zzz.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (PendingIntent) PendingIntent.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface("com.google.android.gms.location.places.internal.IGooglePlacesService");
                    zza(parcel.readInt() != 0 ? com.google.android.gms.location.places.zzf.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? zzz.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (PendingIntent) PendingIntent.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface("com.google.android.gms.location.places.internal.IGooglePlacesService");
                    zzb(parcel.readInt() != 0 ? zzz.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (PendingIntent) PendingIntent.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface("com.google.android.gms.location.places.internal.IGooglePlacesService");
                    zza(parcel.readString(), parcel.readInt() != 0 ? LatLngBounds.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? AutocompleteFilter.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? zzz.CREATOR.createFromParcel(parcel) : null, zzl.zza.zzdo(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface("com.google.android.gms.location.places.internal.IGooglePlacesService");
                    zza(parcel.readInt() != 0 ? AddPlaceRequest.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? zzz.CREATOR.createFromParcel(parcel) : null, zzl.zza.zzdo(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 15:
                    parcel.enforceInterface("com.google.android.gms.location.places.internal.IGooglePlacesService");
                    zza(parcel.readInt() != 0 ? PlaceReport.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? zzz.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 16:
                    parcel.enforceInterface("com.google.android.gms.location.places.internal.IGooglePlacesService");
                    zza(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? zzz.CREATOR.createFromParcel(parcel) : null, zzasu.zza.zzdq(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 17:
                    parcel.enforceInterface("com.google.android.gms.location.places.internal.IGooglePlacesService");
                    zzb(parcel.createStringArrayList(), parcel.readInt() != 0 ? zzz.CREATOR.createFromParcel(parcel) : null, zzl.zza.zzdo(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 18:
                    parcel.enforceInterface("com.google.android.gms.location.places.internal.IGooglePlacesService");
                    zza(parcel.readString(), parcel.readInt(), parcel.readInt() != 0 ? zzz.CREATOR.createFromParcel(parcel) : null, zzl.zza.zzdo(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 19:
                    parcel.enforceInterface("com.google.android.gms.location.places.internal.IGooglePlacesService");
                    zza(parcel.readString(), parcel.readInt() != 0 ? zzz.CREATOR.createFromParcel(parcel) : null, zzk.zza.zzdn(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 20:
                    parcel.enforceInterface("com.google.android.gms.location.places.internal.IGooglePlacesService");
                    String readString2 = parcel.readString();
                    int readInt2 = parcel.readInt();
                    int readInt3 = parcel.readInt();
                    int readInt4 = parcel.readInt();
                    if (parcel.readInt() != 0) {
                        zzzVar = zzz.CREATOR.createFromParcel(parcel);
                    }
                    zza(readString2, readInt2, readInt3, readInt4, zzzVar, zzk.zza.zzdn(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 21:
                    parcel.enforceInterface("com.google.android.gms.location.places.internal.IGooglePlacesService");
                    zza(parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? zzz.CREATOR.createFromParcel(parcel) : null, zzasu.zza.zzdq(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 22:
                    parcel.enforceInterface("com.google.android.gms.location.places.internal.IGooglePlacesService");
                    zza(parcel.readInt() != 0 ? LatLng.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? zzz.CREATOR.createFromParcel(parcel) : null, zzl.zza.zzdo(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 23:
                    parcel.enforceInterface("com.google.android.gms.location.places.internal.IGooglePlacesService");
                    zza(parcel.readInt() != 0 ? zzz.CREATOR.createFromParcel(parcel) : null, zzl.zza.zzdo(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 24:
                    parcel.enforceInterface("com.google.android.gms.location.places.internal.IGooglePlacesService");
                    zza(parcel.readInt() != 0 ? zzz.CREATOR.createFromParcel(parcel) : null, zzasu.zza.zzdq(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 25:
                    parcel.enforceInterface("com.google.android.gms.location.places.internal.IGooglePlacesService");
                    zzb(parcel.readInt() != 0 ? zzz.CREATOR.createFromParcel(parcel) : null, zzasu.zza.zzdq(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 26:
                    parcel.enforceInterface("com.google.android.gms.location.places.internal.IGooglePlacesService");
                    zzb(parcel.readInt() != 0 ? zzz.CREATOR.createFromParcel(parcel) : null, zzl.zza.zzdo(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.location.places.internal.IGooglePlacesService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(AddPlaceRequest addPlaceRequest, zzz zzzVar, zzl zzlVar) throws RemoteException;

    void zza(PlaceReport placeReport, zzz zzzVar) throws RemoteException;

    void zza(zzz zzzVar, PendingIntent pendingIntent) throws RemoteException;

    void zza(zzz zzzVar, zzasu zzasuVar) throws RemoteException;

    void zza(zzz zzzVar, zzl zzlVar) throws RemoteException;

    void zza(com.google.android.gms.location.places.zzf zzfVar, zzz zzzVar, PendingIntent pendingIntent) throws RemoteException;

    void zza(com.google.android.gms.location.places.zzm zzmVar, zzz zzzVar, PendingIntent pendingIntent) throws RemoteException;

    void zza(com.google.android.gms.location.places.zzp zzpVar, LatLngBounds latLngBounds, List<String> list, zzz zzzVar, zzl zzlVar) throws RemoteException;

    void zza(LatLng latLng, PlaceFilter placeFilter, zzz zzzVar, zzl zzlVar) throws RemoteException;

    void zza(LatLng latLng, zzz zzzVar, zzl zzlVar) throws RemoteException;

    void zza(LatLngBounds latLngBounds, int i, String str, PlaceFilter placeFilter, zzz zzzVar, zzl zzlVar) throws RemoteException;

    void zza(String str, int i, int i2, int i3, zzz zzzVar, zzk zzkVar) throws RemoteException;

    void zza(String str, int i, zzz zzzVar, zzl zzlVar) throws RemoteException;

    void zza(String str, zzz zzzVar, zzk zzkVar) throws RemoteException;

    void zza(String str, zzz zzzVar, zzl zzlVar) throws RemoteException;

    void zza(String str, LatLngBounds latLngBounds, AutocompleteFilter autocompleteFilter, zzz zzzVar, zzl zzlVar) throws RemoteException;

    void zza(String str, String str2, zzz zzzVar, zzasu zzasuVar) throws RemoteException;

    void zza(String str, String str2, String str3, zzz zzzVar, zzasu zzasuVar) throws RemoteException;

    void zza(List<String> list, zzz zzzVar, zzl zzlVar) throws RemoteException;

    void zzb(PlaceFilter placeFilter, zzz zzzVar, zzl zzlVar) throws RemoteException;

    void zzb(zzz zzzVar, PendingIntent pendingIntent) throws RemoteException;

    void zzb(zzz zzzVar, zzasu zzasuVar) throws RemoteException;

    void zzb(zzz zzzVar, zzl zzlVar) throws RemoteException;

    void zzb(List<String> list, zzz zzzVar, zzl zzlVar) throws RemoteException;
}
