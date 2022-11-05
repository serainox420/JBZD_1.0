package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.safetynet.SafeBrowsingData;
/* loaded from: classes2.dex */
public interface zzazt extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzazt {

        /* renamed from: com.google.android.gms.internal.zzazt$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0283zza implements zzazt {
            private IBinder zzrk;

            C0283zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzazt
            public void zza(Status status, SafeBrowsingData safeBrowsingData) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.safetynet.internal.ISafetyNetCallbacks");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (safeBrowsingData != null) {
                        obtain.writeInt(1);
                        safeBrowsingData.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzazt
            public void zza(Status status, com.google.android.gms.safetynet.zza zzaVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.safetynet.internal.ISafetyNetCallbacks");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (zzaVar != null) {
                        obtain.writeInt(1);
                        zzaVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzazt
            public void zza(Status status, com.google.android.gms.safetynet.zze zzeVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.safetynet.internal.ISafetyNetCallbacks");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (zzeVar != null) {
                        obtain.writeInt(1);
                        zzeVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(8, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzazt
            public void zza(Status status, com.google.android.gms.safetynet.zzg zzgVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.safetynet.internal.ISafetyNetCallbacks");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (zzgVar != null) {
                        obtain.writeInt(1);
                        zzgVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(6, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzazt
            public void zzb(Status status, boolean z) throws RemoteException {
                int i = 1;
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.safetynet.internal.ISafetyNetCallbacks");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!z) {
                        i = 0;
                    }
                    obtain.writeInt(i);
                    this.zzrk.transact(7, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzazt
            public void zzbC(Status status) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.safetynet.internal.ISafetyNetCallbacks");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(11, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzazt
            public void zzbD(Status status) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.safetynet.internal.ISafetyNetCallbacks");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(9, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzazt
            public void zzc(Status status, boolean z) throws RemoteException {
                int i = 1;
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.safetynet.internal.ISafetyNetCallbacks");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!z) {
                        i = 0;
                    }
                    obtain.writeInt(i);
                    this.zzrk.transact(4, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzazt
            public void zzd(Status status, boolean z) throws RemoteException {
                int i = 1;
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.safetynet.internal.ISafetyNetCallbacks");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!z) {
                        i = 0;
                    }
                    obtain.writeInt(i);
                    this.zzrk.transact(10, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzazt
            public void zzgt(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.safetynet.internal.ISafetyNetCallbacks");
                    obtain.writeString(str);
                    this.zzrk.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public zza() {
            attachInterface(this, "com.google.android.gms.safetynet.internal.ISafetyNetCallbacks");
        }

        public static zzazt zzeY(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.safetynet.internal.ISafetyNetCallbacks");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzazt)) ? new C0283zza(iBinder) : (zzazt) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            boolean z = false;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.safetynet.internal.ISafetyNetCallbacks");
                    zza(parcel.readInt() != 0 ? Status.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? com.google.android.gms.safetynet.zza.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.safetynet.internal.ISafetyNetCallbacks");
                    zzgt(parcel.readString());
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.safetynet.internal.ISafetyNetCallbacks");
                    zza(parcel.readInt() != 0 ? Status.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? SafeBrowsingData.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.safetynet.internal.ISafetyNetCallbacks");
                    Status createFromParcel = parcel.readInt() != 0 ? Status.CREATOR.createFromParcel(parcel) : null;
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    zzc(createFromParcel, z);
                    return true;
                case 6:
                    parcel.enforceInterface("com.google.android.gms.safetynet.internal.ISafetyNetCallbacks");
                    zza(parcel.readInt() != 0 ? Status.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? com.google.android.gms.safetynet.zzg.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 7:
                    parcel.enforceInterface("com.google.android.gms.safetynet.internal.ISafetyNetCallbacks");
                    Status createFromParcel2 = parcel.readInt() != 0 ? Status.CREATOR.createFromParcel(parcel) : null;
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    zzb(createFromParcel2, z);
                    return true;
                case 8:
                    parcel.enforceInterface("com.google.android.gms.safetynet.internal.ISafetyNetCallbacks");
                    zza(parcel.readInt() != 0 ? Status.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? com.google.android.gms.safetynet.zze.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 9:
                    parcel.enforceInterface("com.google.android.gms.safetynet.internal.ISafetyNetCallbacks");
                    zzbD(parcel.readInt() != 0 ? Status.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 10:
                    parcel.enforceInterface("com.google.android.gms.safetynet.internal.ISafetyNetCallbacks");
                    Status createFromParcel3 = parcel.readInt() != 0 ? Status.CREATOR.createFromParcel(parcel) : null;
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    zzd(createFromParcel3, z);
                    return true;
                case 11:
                    parcel.enforceInterface("com.google.android.gms.safetynet.internal.ISafetyNetCallbacks");
                    zzbC(parcel.readInt() != 0 ? Status.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.safetynet.internal.ISafetyNetCallbacks");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(Status status, SafeBrowsingData safeBrowsingData) throws RemoteException;

    void zza(Status status, com.google.android.gms.safetynet.zza zzaVar) throws RemoteException;

    void zza(Status status, com.google.android.gms.safetynet.zze zzeVar) throws RemoteException;

    void zza(Status status, com.google.android.gms.safetynet.zzg zzgVar) throws RemoteException;

    void zzb(Status status, boolean z) throws RemoteException;

    void zzbC(Status status) throws RemoteException;

    void zzbD(Status status) throws RemoteException;

    void zzc(Status status, boolean z) throws RemoteException;

    void zzd(Status status, boolean z) throws RemoteException;

    void zzgt(String str) throws RemoteException;
}
