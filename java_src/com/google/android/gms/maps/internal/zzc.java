package com.google.android.gms.maps.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.maps.GoogleMapOptions;
import com.google.android.gms.maps.StreetViewPanoramaOptions;
import com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate;
import com.google.android.gms.maps.internal.IMapFragmentDelegate;
import com.google.android.gms.maps.internal.IMapViewDelegate;
import com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate;
import com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate;
import com.google.android.gms.maps.model.internal.zza;
/* loaded from: classes2.dex */
public interface zzc extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzc {

        /* renamed from: com.google.android.gms.maps.internal.zzc$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0439zza implements zzc {
            private IBinder zzrk;

            C0439zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.maps.internal.zzc
            public void init(IObjectWrapper iObjectWrapper) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.maps.internal.ICreator");
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    this.zzrk.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.maps.internal.zzc
            public IMapFragmentDelegate zzI(IObjectWrapper iObjectWrapper) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.maps.internal.ICreator");
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    this.zzrk.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return IMapFragmentDelegate.zza.zzdx(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.maps.internal.zzc
            public IStreetViewPanoramaFragmentDelegate zzJ(IObjectWrapper iObjectWrapper) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.maps.internal.ICreator");
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    this.zzrk.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                    return IStreetViewPanoramaFragmentDelegate.zza.zzee(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.maps.internal.zzc
            public ICameraUpdateFactoryDelegate zzJE() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.maps.internal.ICreator");
                    this.zzrk.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    return ICameraUpdateFactoryDelegate.zza.zzdr(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.maps.internal.zzc
            public com.google.android.gms.maps.model.internal.zza zzJF() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.maps.internal.ICreator");
                    this.zzrk.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    return zza.AbstractBinderC0464zza.zzei(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.maps.internal.zzc
            public IMapViewDelegate zza(IObjectWrapper iObjectWrapper, GoogleMapOptions googleMapOptions) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.maps.internal.ICreator");
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    if (googleMapOptions != null) {
                        obtain.writeInt(1);
                        googleMapOptions.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return IMapViewDelegate.zza.zzdy(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.maps.internal.zzc
            public IStreetViewPanoramaViewDelegate zza(IObjectWrapper iObjectWrapper, StreetViewPanoramaOptions streetViewPanoramaOptions) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.maps.internal.ICreator");
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    if (streetViewPanoramaOptions != null) {
                        obtain.writeInt(1);
                        streetViewPanoramaOptions.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                    return IStreetViewPanoramaViewDelegate.zza.zzef(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.maps.internal.zzc
            public void zzi(IObjectWrapper iObjectWrapper, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.maps.internal.ICreator");
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    obtain.writeInt(i);
                    this.zzrk.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzc zzdt(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.internal.ICreator");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzc)) ? new C0439zza(iBinder) : (zzc) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            IBinder iBinder = null;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.ICreator");
                    init(IObjectWrapper.zza.zzcd(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.ICreator");
                    IMapFragmentDelegate zzI = zzI(IObjectWrapper.zza.zzcd(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(zzI != null ? zzI.asBinder() : null);
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.ICreator");
                    IMapViewDelegate zza = zza(IObjectWrapper.zza.zzcd(parcel.readStrongBinder()), parcel.readInt() != 0 ? GoogleMapOptions.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    if (zza != null) {
                        iBinder = zza.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.ICreator");
                    ICameraUpdateFactoryDelegate zzJE = zzJE();
                    parcel2.writeNoException();
                    if (zzJE != null) {
                        iBinder = zzJE.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case 5:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.ICreator");
                    com.google.android.gms.maps.model.internal.zza zzJF = zzJF();
                    parcel2.writeNoException();
                    if (zzJF != null) {
                        iBinder = zzJF.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case 6:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.ICreator");
                    zzi(IObjectWrapper.zza.zzcd(parcel.readStrongBinder()), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.ICreator");
                    IStreetViewPanoramaViewDelegate zza2 = zza(IObjectWrapper.zza.zzcd(parcel.readStrongBinder()), parcel.readInt() != 0 ? StreetViewPanoramaOptions.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    if (zza2 != null) {
                        iBinder = zza2.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case 8:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.ICreator");
                    IStreetViewPanoramaFragmentDelegate zzJ = zzJ(IObjectWrapper.zza.zzcd(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    if (zzJ != null) {
                        iBinder = zzJ.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.maps.internal.ICreator");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void init(IObjectWrapper iObjectWrapper) throws RemoteException;

    IMapFragmentDelegate zzI(IObjectWrapper iObjectWrapper) throws RemoteException;

    IStreetViewPanoramaFragmentDelegate zzJ(IObjectWrapper iObjectWrapper) throws RemoteException;

    ICameraUpdateFactoryDelegate zzJE() throws RemoteException;

    com.google.android.gms.maps.model.internal.zza zzJF() throws RemoteException;

    IMapViewDelegate zza(IObjectWrapper iObjectWrapper, GoogleMapOptions googleMapOptions) throws RemoteException;

    IStreetViewPanoramaViewDelegate zza(IObjectWrapper iObjectWrapper, StreetViewPanoramaOptions streetViewPanoramaOptions) throws RemoteException;

    void zzi(IObjectWrapper iObjectWrapper, int i) throws RemoteException;
}
