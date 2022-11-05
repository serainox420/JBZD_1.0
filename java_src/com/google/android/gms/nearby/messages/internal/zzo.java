package com.google.android.gms.nearby.messages.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2.dex */
public interface zzo extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzo {

        /* renamed from: com.google.android.gms.nearby.messages.internal.zzo$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0476zza implements zzo {
            private IBinder zzrk;

            C0476zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.nearby.messages.internal.zzo
            public void zza(SubscribeRequest subscribeRequest) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.messages.internal.INearbyMessagesService");
                    if (subscribeRequest != null) {
                        obtain.writeInt(1);
                        subscribeRequest.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.nearby.messages.internal.zzo
            public void zza(zzaa zzaaVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.messages.internal.INearbyMessagesService");
                    if (zzaaVar != null) {
                        obtain.writeInt(1);
                        zzaaVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.nearby.messages.internal.zzo
            public void zza(zzac zzacVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.messages.internal.INearbyMessagesService");
                    if (zzacVar != null) {
                        obtain.writeInt(1);
                        zzacVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(8, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.nearby.messages.internal.zzo
            public void zza(zzaf zzafVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.messages.internal.INearbyMessagesService");
                    if (zzafVar != null) {
                        obtain.writeInt(1);
                        zzafVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.nearby.messages.internal.zzo
            public void zza(zzah zzahVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.messages.internal.INearbyMessagesService");
                    if (zzahVar != null) {
                        obtain.writeInt(1);
                        zzahVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(4, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.nearby.messages.internal.zzo
            public void zza(zzh zzhVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.messages.internal.INearbyMessagesService");
                    if (zzhVar != null) {
                        obtain.writeInt(1);
                        zzhVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(7, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.nearby.messages.internal.zzo
            public void zza(zzj zzjVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.messages.internal.INearbyMessagesService");
                    if (zzjVar != null) {
                        obtain.writeInt(1);
                        zzjVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(9, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public static zzo zzeL(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.nearby.messages.internal.INearbyMessagesService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzo)) ? new C0476zza(iBinder) : (zzo) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            zzj zzjVar = null;
            zzaa zzaaVar = null;
            zzaf zzafVar = null;
            SubscribeRequest subscribeRequest = null;
            zzah zzahVar = null;
            zzh zzhVar = null;
            zzac zzacVar = null;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.nearby.messages.internal.INearbyMessagesService");
                    if (parcel.readInt() != 0) {
                        zzaaVar = zzaa.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzaaVar);
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.nearby.messages.internal.INearbyMessagesService");
                    if (parcel.readInt() != 0) {
                        zzafVar = zzaf.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzafVar);
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.nearby.messages.internal.INearbyMessagesService");
                    if (parcel.readInt() != 0) {
                        subscribeRequest = SubscribeRequest.CREATOR.createFromParcel(parcel);
                    }
                    zza(subscribeRequest);
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.nearby.messages.internal.INearbyMessagesService");
                    if (parcel.readInt() != 0) {
                        zzahVar = zzah.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzahVar);
                    return true;
                case 7:
                    parcel.enforceInterface("com.google.android.gms.nearby.messages.internal.INearbyMessagesService");
                    if (parcel.readInt() != 0) {
                        zzhVar = zzh.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzhVar);
                    return true;
                case 8:
                    parcel.enforceInterface("com.google.android.gms.nearby.messages.internal.INearbyMessagesService");
                    if (parcel.readInt() != 0) {
                        zzacVar = zzac.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzacVar);
                    return true;
                case 9:
                    parcel.enforceInterface("com.google.android.gms.nearby.messages.internal.INearbyMessagesService");
                    if (parcel.readInt() != 0) {
                        zzjVar = zzj.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzjVar);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.nearby.messages.internal.INearbyMessagesService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(SubscribeRequest subscribeRequest) throws RemoteException;

    void zza(zzaa zzaaVar) throws RemoteException;

    void zza(zzac zzacVar) throws RemoteException;

    void zza(zzaf zzafVar) throws RemoteException;

    void zza(zzah zzahVar) throws RemoteException;

    void zza(zzh zzhVar) throws RemoteException;

    void zza(zzj zzjVar) throws RemoteException;
}
