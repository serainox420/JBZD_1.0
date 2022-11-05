package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import java.util.Map;
/* loaded from: classes2.dex */
public interface zzady extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzady {

        /* renamed from: com.google.android.gms.internal.zzady$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0203zza implements zzady {
            private IBinder zzrk;

            C0203zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzady
            public void zzJ(Status status) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.config.internal.IConfigCallbacks");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzady
            public void zza(Status status, zzadw zzadwVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.config.internal.IConfigCallbacks");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (zzadwVar != null) {
                        obtain.writeInt(1);
                        zzadwVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(4, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzady
            public void zza(Status status, Map map) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.config.internal.IConfigCallbacks");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeMap(map);
                    this.zzrk.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzady
            public void zza(Status status, byte[] bArr) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.config.internal.IConfigCallbacks");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeByteArray(bArr);
                    this.zzrk.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public zza() {
            attachInterface(this, "com.google.android.gms.config.internal.IConfigCallbacks");
        }

        public static zzady zzbD(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.config.internal.IConfigCallbacks");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzady)) ? new C0203zza(iBinder) : (zzady) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.config.internal.IConfigCallbacks");
                    zza(parcel.readInt() != 0 ? Status.CREATOR.createFromParcel(parcel) : null, parcel.createByteArray());
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.config.internal.IConfigCallbacks");
                    zza(parcel.readInt() != 0 ? Status.CREATOR.createFromParcel(parcel) : null, parcel.readHashMap(getClass().getClassLoader()));
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.config.internal.IConfigCallbacks");
                    zzJ(parcel.readInt() != 0 ? Status.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.config.internal.IConfigCallbacks");
                    zza(parcel.readInt() != 0 ? Status.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? zzadw.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.config.internal.IConfigCallbacks");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zzJ(Status status) throws RemoteException;

    void zza(Status status, zzadw zzadwVar) throws RemoteException;

    void zza(Status status, Map map) throws RemoteException;

    void zza(Status status, byte[] bArr) throws RemoteException;
}
