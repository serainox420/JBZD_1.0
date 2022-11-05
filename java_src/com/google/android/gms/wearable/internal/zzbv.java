package com.google.android.gms.wearable.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.data.DataHolder;
import java.util.List;
/* loaded from: classes2.dex */
public interface zzbv extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzbv {

        /* renamed from: com.google.android.gms.wearable.internal.zzbv$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0494zza implements zzbv {
            private IBinder zzrk;

            C0494zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.wearable.internal.zzbv
            public void onConnectedNodes(List<zzcc> list) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableListener");
                    obtain.writeTypedList(list);
                    this.zzrk.transact(5, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbv
            public void zza(zzbz zzbzVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableListener");
                    if (zzbzVar != null) {
                        obtain.writeInt(1);
                        zzbzVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbv
            public void zza(zzcc zzccVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableListener");
                    if (zzccVar != null) {
                        obtain.writeInt(1);
                        zzccVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbv
            public void zza(zzh zzhVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableListener");
                    if (zzhVar != null) {
                        obtain.writeInt(1);
                        zzhVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(9, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbv
            public void zza(zzk zzkVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableListener");
                    if (zzkVar != null) {
                        obtain.writeInt(1);
                        zzkVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(6, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbv
            public void zza(zzo zzoVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableListener");
                    if (zzoVar != null) {
                        obtain.writeInt(1);
                        zzoVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(8, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbv
            public void zza(zzs zzsVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableListener");
                    if (zzsVar != null) {
                        obtain.writeInt(1);
                        zzsVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(7, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbv
            public void zzaq(DataHolder dataHolder) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableListener");
                    if (dataHolder != null) {
                        obtain.writeInt(1);
                        dataHolder.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbv
            public void zzb(zzcc zzccVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableListener");
                    if (zzccVar != null) {
                        obtain.writeInt(1);
                        zzccVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(4, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public zza() {
            attachInterface(this, "com.google.android.gms.wearable.internal.IWearableListener");
        }

        public static zzbv zzfC(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.wearable.internal.IWearableListener");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzbv)) ? new C0494zza(iBinder) : (zzbv) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            zzh zzhVar = null;
            DataHolder dataHolder = null;
            zzbz zzbzVar = null;
            zzcc zzccVar = null;
            zzcc zzccVar2 = null;
            zzk zzkVar = null;
            zzs zzsVar = null;
            zzo zzoVar = null;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableListener");
                    if (parcel.readInt() != 0) {
                        dataHolder = DataHolder.CREATOR.createFromParcel(parcel);
                    }
                    zzaq(dataHolder);
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableListener");
                    if (parcel.readInt() != 0) {
                        zzbzVar = zzbz.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzbzVar);
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableListener");
                    if (parcel.readInt() != 0) {
                        zzccVar = zzcc.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzccVar);
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableListener");
                    if (parcel.readInt() != 0) {
                        zzccVar2 = zzcc.CREATOR.createFromParcel(parcel);
                    }
                    zzb(zzccVar2);
                    return true;
                case 5:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableListener");
                    onConnectedNodes(parcel.createTypedArrayList(zzcc.CREATOR));
                    return true;
                case 6:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableListener");
                    if (parcel.readInt() != 0) {
                        zzkVar = zzk.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzkVar);
                    return true;
                case 7:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableListener");
                    if (parcel.readInt() != 0) {
                        zzsVar = zzs.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzsVar);
                    return true;
                case 8:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableListener");
                    if (parcel.readInt() != 0) {
                        zzoVar = zzo.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzoVar);
                    return true;
                case 9:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableListener");
                    if (parcel.readInt() != 0) {
                        zzhVar = zzh.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzhVar);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.wearable.internal.IWearableListener");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void onConnectedNodes(List<zzcc> list) throws RemoteException;

    void zza(zzbz zzbzVar) throws RemoteException;

    void zza(zzcc zzccVar) throws RemoteException;

    void zza(zzh zzhVar) throws RemoteException;

    void zza(zzk zzkVar) throws RemoteException;

    void zza(zzo zzoVar) throws RemoteException;

    void zza(zzs zzsVar) throws RemoteException;

    void zzaq(DataHolder dataHolder) throws RemoteException;

    void zzb(zzcc zzccVar) throws RemoteException;
}
