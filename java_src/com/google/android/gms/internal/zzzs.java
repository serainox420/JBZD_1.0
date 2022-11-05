package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.zzzr;
/* loaded from: classes2.dex */
public interface zzzs extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzzs {

        /* renamed from: com.google.android.gms.internal.zzzs$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0412zza implements zzzs {
            private IBinder zzrk;

            C0412zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzzs
            public void zza(zzzr zzzrVar) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.clearcut.internal.IClearcutLoggerService");
                    if (zzzrVar != null) {
                        iBinder = zzzrVar.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    this.zzrk.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzzs
            public void zza(zzzr zzzrVar, zzzm zzzmVar) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.clearcut.internal.IClearcutLoggerService");
                    if (zzzrVar != null) {
                        iBinder = zzzrVar.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    if (zzzmVar != null) {
                        obtain.writeInt(1);
                        zzzmVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzzs
            public void zzb(zzzr zzzrVar) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.clearcut.internal.IClearcutLoggerService");
                    if (zzzrVar != null) {
                        iBinder = zzzrVar.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    this.zzrk.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzzs
            public void zzc(zzzr zzzrVar) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.clearcut.internal.IClearcutLoggerService");
                    if (zzzrVar != null) {
                        iBinder = zzzrVar.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    this.zzrk.transact(4, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzzs
            public void zzd(zzzr zzzrVar) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.clearcut.internal.IClearcutLoggerService");
                    if (zzzrVar != null) {
                        iBinder = zzzrVar.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    this.zzrk.transact(5, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public static zzzs zzbo(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.clearcut.internal.IClearcutLoggerService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzzs)) ? new C0412zza(iBinder) : (zzzs) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.clearcut.internal.IClearcutLoggerService");
                    zza(zzzr.zza.zzbn(parcel.readStrongBinder()), parcel.readInt() != 0 ? zzzm.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.clearcut.internal.IClearcutLoggerService");
                    zza(zzzr.zza.zzbn(parcel.readStrongBinder()));
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.clearcut.internal.IClearcutLoggerService");
                    zzb(zzzr.zza.zzbn(parcel.readStrongBinder()));
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.clearcut.internal.IClearcutLoggerService");
                    zzc(zzzr.zza.zzbn(parcel.readStrongBinder()));
                    return true;
                case 5:
                    parcel.enforceInterface("com.google.android.gms.clearcut.internal.IClearcutLoggerService");
                    zzd(zzzr.zza.zzbn(parcel.readStrongBinder()));
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.clearcut.internal.IClearcutLoggerService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(zzzr zzzrVar) throws RemoteException;

    void zza(zzzr zzzrVar, zzzm zzzmVar) throws RemoteException;

    void zzb(zzzr zzzrVar) throws RemoteException;

    void zzc(zzzr zzzrVar) throws RemoteException;

    void zzd(zzzr zzzrVar) throws RemoteException;
}
