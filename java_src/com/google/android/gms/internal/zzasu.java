package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2.dex */
public interface zzasu extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzasu {

        /* renamed from: com.google.android.gms.internal.zzasu$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0264zza implements zzasu {
            private IBinder zzrk;

            C0264zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzasu
            public void zza(zzass zzassVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.places.personalized.IAliasedPlacesCallbacks");
                    if (zzassVar != null) {
                        obtain.writeInt(1);
                        zzassVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzasu
            public void zzb(zzass zzassVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.places.personalized.IAliasedPlacesCallbacks");
                    if (zzassVar != null) {
                        obtain.writeInt(1);
                        zzassVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzasu
            public void zzc(zzass zzassVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.location.places.personalized.IAliasedPlacesCallbacks");
                    if (zzassVar != null) {
                        obtain.writeInt(1);
                        zzassVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(4, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public static zzasu zzdq(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.places.personalized.IAliasedPlacesCallbacks");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzasu)) ? new C0264zza(iBinder) : (zzasu) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            zzass zzassVar = null;
            switch (i) {
                case 2:
                    parcel.enforceInterface("com.google.android.gms.location.places.personalized.IAliasedPlacesCallbacks");
                    if (parcel.readInt() != 0) {
                        zzassVar = zzass.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzassVar);
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.location.places.personalized.IAliasedPlacesCallbacks");
                    if (parcel.readInt() != 0) {
                        zzassVar = zzass.CREATOR.createFromParcel(parcel);
                    }
                    zzb(zzassVar);
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.location.places.personalized.IAliasedPlacesCallbacks");
                    if (parcel.readInt() != 0) {
                        zzassVar = zzass.CREATOR.createFromParcel(parcel);
                    }
                    zzc(zzassVar);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.location.places.personalized.IAliasedPlacesCallbacks");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(zzass zzassVar) throws RemoteException;

    void zzb(zzass zzassVar) throws RemoteException;

    void zzc(zzass zzassVar) throws RemoteException;
}
