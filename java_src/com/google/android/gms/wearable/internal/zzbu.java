package com.google.android.gms.wearable.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
/* loaded from: classes2.dex */
public interface zzbu extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzbu {

        /* renamed from: com.google.android.gms.wearable.internal.zzbu$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0493zza implements zzbu {
            private IBinder zzrk;

            C0493zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.wearable.internal.zzbu
            public void zza(Status status) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
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

            @Override // com.google.android.gms.wearable.internal.zzbu
            public void zza(zzaa zzaaVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (zzaaVar != null) {
                        obtain.writeInt(1);
                        zzaaVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(20, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbu
            public void zza(zzae zzaeVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (zzaeVar != null) {
                        obtain.writeInt(1);
                        zzaeVar.writeToParcel(obtain, 0);
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

            @Override // com.google.android.gms.wearable.internal.zzbu
            public void zza(zzar zzarVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (zzarVar != null) {
                        obtain.writeInt(1);
                        zzarVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbu
            public void zza(zzat zzatVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (zzatVar != null) {
                        obtain.writeInt(1);
                        zzatVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(23, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbu
            public void zza(zzav zzavVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (zzavVar != null) {
                        obtain.writeInt(1);
                        zzavVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(22, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbu
            public void zza(zzax zzaxVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (zzaxVar != null) {
                        obtain.writeInt(1);
                        zzaxVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(17, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbu
            public void zza(zzaz zzazVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (zzazVar != null) {
                        obtain.writeInt(1);
                        zzazVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(18, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbu
            public void zza(zzbc zzbcVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (zzbcVar != null) {
                        obtain.writeInt(1);
                        zzbcVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(28, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbu
            public void zza(zzbe zzbeVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (zzbeVar != null) {
                        obtain.writeInt(1);
                        zzbeVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(30, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbu
            public void zza(zzbg zzbgVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (zzbgVar != null) {
                        obtain.writeInt(1);
                        zzbgVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(29, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbu
            public void zza(zzbh zzbhVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (zzbhVar != null) {
                        obtain.writeInt(1);
                        zzbhVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbu
            public void zza(zzbj zzbjVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (zzbjVar != null) {
                        obtain.writeInt(1);
                        zzbjVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(13, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbu
            public void zza(zzbl zzblVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (zzblVar != null) {
                        obtain.writeInt(1);
                        zzblVar.writeToParcel(obtain, 0);
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

            @Override // com.google.android.gms.wearable.internal.zzbu
            public void zza(zzbn zzbnVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (zzbnVar != null) {
                        obtain.writeInt(1);
                        zzbnVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbu
            public void zza(zzbp zzbpVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (zzbpVar != null) {
                        obtain.writeInt(1);
                        zzbpVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbu
            public void zza(zzbr zzbrVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (zzbrVar != null) {
                        obtain.writeInt(1);
                        zzbrVar.writeToParcel(obtain, 0);
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

            @Override // com.google.android.gms.wearable.internal.zzbu
            public void zza(zzce zzceVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (zzceVar != null) {
                        obtain.writeInt(1);
                        zzceVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(14, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbu
            public void zza(zzci zzciVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (zzciVar != null) {
                        obtain.writeInt(1);
                        zzciVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbu
            public void zza(zzcm zzcmVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (zzcmVar != null) {
                        obtain.writeInt(1);
                        zzcmVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(27, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbu
            public void zza(zzco zzcoVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (zzcoVar != null) {
                        obtain.writeInt(1);
                        zzcoVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbu
            public void zza(zzcs zzcsVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (zzcsVar != null) {
                        obtain.writeInt(1);
                        zzcsVar.writeToParcel(obtain, 0);
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

            @Override // com.google.android.gms.wearable.internal.zzbu
            public void zza(zze zzeVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (zzeVar != null) {
                        obtain.writeInt(1);
                        zzeVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(26, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbu
            public void zza(zzy zzyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (zzyVar != null) {
                        obtain.writeInt(1);
                        zzyVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(19, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbu
            public void zzar(DataHolder dataHolder) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (dataHolder != null) {
                        obtain.writeInt(1);
                        dataHolder.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbu
            public void zzb(zzae zzaeVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (zzaeVar != null) {
                        obtain.writeInt(1);
                        zzaeVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(16, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public zza() {
            attachInterface(this, "com.google.android.gms.wearable.internal.IWearableCallbacks");
        }

        public static zzbu zzfB(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.wearable.internal.IWearableCallbacks");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzbu)) ? new C0493zza(iBinder) : (zzbu) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            zzcm zzcmVar = null;
            zzbh zzbhVar = null;
            zzbj zzbjVar = null;
            zzbc zzbcVar = null;
            zzbg zzbgVar = null;
            zzbe zzbeVar = null;
            zzci zzciVar = null;
            zzbn zzbnVar = null;
            DataHolder dataHolder = null;
            zzar zzarVar = null;
            zzco zzcoVar = null;
            zzbp zzbpVar = null;
            zzbr zzbrVar = null;
            zzbl zzblVar = null;
            zzce zzceVar = null;
            zzae zzaeVar = null;
            zzae zzaeVar2 = null;
            zzax zzaxVar = null;
            zzaz zzazVar = null;
            zzy zzyVar = null;
            zzaa zzaaVar = null;
            Status status = null;
            zzcs zzcsVar = null;
            zzav zzavVar = null;
            zzat zzatVar = null;
            zze zzeVar = null;
            switch (i) {
                case 2:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (parcel.readInt() != 0) {
                        zzbhVar = zzbh.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzbhVar);
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (parcel.readInt() != 0) {
                        zzciVar = zzci.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzciVar);
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (parcel.readInt() != 0) {
                        zzbnVar = zzbn.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzbnVar);
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (parcel.readInt() != 0) {
                        dataHolder = DataHolder.CREATOR.createFromParcel(parcel);
                    }
                    zzar(dataHolder);
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (parcel.readInt() != 0) {
                        zzarVar = zzar.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzarVar);
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (parcel.readInt() != 0) {
                        zzcoVar = zzco.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzcoVar);
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (parcel.readInt() != 0) {
                        zzbpVar = zzbp.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzbpVar);
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (parcel.readInt() != 0) {
                        zzbrVar = zzbr.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzbrVar);
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (parcel.readInt() != 0) {
                        zzblVar = zzbl.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzblVar);
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (parcel.readInt() != 0) {
                        status = Status.CREATOR.createFromParcel(parcel);
                    }
                    zza(status);
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (parcel.readInt() != 0) {
                        zzcsVar = zzcs.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzcsVar);
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (parcel.readInt() != 0) {
                        zzbjVar = zzbj.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzbjVar);
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (parcel.readInt() != 0) {
                        zzceVar = zzce.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzceVar);
                    parcel2.writeNoException();
                    return true;
                case 15:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (parcel.readInt() != 0) {
                        zzaeVar = zzae.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzaeVar);
                    parcel2.writeNoException();
                    return true;
                case 16:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (parcel.readInt() != 0) {
                        zzaeVar2 = zzae.CREATOR.createFromParcel(parcel);
                    }
                    zzb(zzaeVar2);
                    parcel2.writeNoException();
                    return true;
                case 17:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (parcel.readInt() != 0) {
                        zzaxVar = zzax.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzaxVar);
                    parcel2.writeNoException();
                    return true;
                case 18:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (parcel.readInt() != 0) {
                        zzazVar = zzaz.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzazVar);
                    parcel2.writeNoException();
                    return true;
                case 19:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (parcel.readInt() != 0) {
                        zzyVar = zzy.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzyVar);
                    parcel2.writeNoException();
                    return true;
                case 20:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (parcel.readInt() != 0) {
                        zzaaVar = zzaa.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzaaVar);
                    parcel2.writeNoException();
                    return true;
                case 22:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (parcel.readInt() != 0) {
                        zzavVar = zzav.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzavVar);
                    parcel2.writeNoException();
                    return true;
                case 23:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (parcel.readInt() != 0) {
                        zzatVar = zzat.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzatVar);
                    parcel2.writeNoException();
                    return true;
                case 26:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (parcel.readInt() != 0) {
                        zzeVar = zze.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzeVar);
                    parcel2.writeNoException();
                    return true;
                case 27:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (parcel.readInt() != 0) {
                        zzcmVar = zzcm.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzcmVar);
                    parcel2.writeNoException();
                    return true;
                case 28:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (parcel.readInt() != 0) {
                        zzbcVar = zzbc.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzbcVar);
                    parcel2.writeNoException();
                    return true;
                case 29:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (parcel.readInt() != 0) {
                        zzbgVar = zzbg.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzbgVar);
                    parcel2.writeNoException();
                    return true;
                case 30:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    if (parcel.readInt() != 0) {
                        zzbeVar = zzbe.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzbeVar);
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.wearable.internal.IWearableCallbacks");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(Status status) throws RemoteException;

    void zza(zzaa zzaaVar) throws RemoteException;

    void zza(zzae zzaeVar) throws RemoteException;

    void zza(zzar zzarVar) throws RemoteException;

    void zza(zzat zzatVar) throws RemoteException;

    void zza(zzav zzavVar) throws RemoteException;

    void zza(zzax zzaxVar) throws RemoteException;

    void zza(zzaz zzazVar) throws RemoteException;

    void zza(zzbc zzbcVar) throws RemoteException;

    void zza(zzbe zzbeVar) throws RemoteException;

    void zza(zzbg zzbgVar) throws RemoteException;

    void zza(zzbh zzbhVar) throws RemoteException;

    void zza(zzbj zzbjVar) throws RemoteException;

    void zza(zzbl zzblVar) throws RemoteException;

    void zza(zzbn zzbnVar) throws RemoteException;

    void zza(zzbp zzbpVar) throws RemoteException;

    void zza(zzbr zzbrVar) throws RemoteException;

    void zza(zzce zzceVar) throws RemoteException;

    void zza(zzci zzciVar) throws RemoteException;

    void zza(zzcm zzcmVar) throws RemoteException;

    void zza(zzco zzcoVar) throws RemoteException;

    void zza(zzcs zzcsVar) throws RemoteException;

    void zza(zze zzeVar) throws RemoteException;

    void zza(zzy zzyVar) throws RemoteException;

    void zzar(DataHolder dataHolder) throws RemoteException;

    void zzb(zzae zzaeVar) throws RemoteException;
}
