package com.google.android.gms.tagmanager;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.tagmanager.zzaz;
import com.google.android.gms.tagmanager.zzba;
import java.util.Map;
/* loaded from: classes2.dex */
public interface zzbb extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzbb {

        /* renamed from: com.google.android.gms.tagmanager.zzbb$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0489zza implements zzbb {
            private IBinder zzrk;

            C0489zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.tagmanager.zzbb
            public Map zzQI() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tagmanager.IMeasurementProxy");
                    this.zzrk.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readHashMap(getClass().getClassLoader());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.tagmanager.zzbb
            public void zza(zzaz zzazVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tagmanager.IMeasurementProxy");
                    obtain.writeStrongBinder(zzazVar != null ? zzazVar.asBinder() : null);
                    this.zzrk.transact(22, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.tagmanager.zzbb
            public void zza(zzba zzbaVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tagmanager.IMeasurementProxy");
                    obtain.writeStrongBinder(zzbaVar != null ? zzbaVar.asBinder() : null);
                    this.zzrk.transact(21, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.tagmanager.zzbb
            public void zza(String str, String str2, Bundle bundle, long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tagmanager.IMeasurementProxy");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeLong(j);
                    this.zzrk.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public zza() {
            attachInterface(this, "com.google.android.gms.tagmanager.IMeasurementProxy");
        }

        public static zzbb zzfk(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.tagmanager.IMeasurementProxy");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzbb)) ? new C0489zza(iBinder) : (zzbb) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 2:
                    parcel.enforceInterface("com.google.android.gms.tagmanager.IMeasurementProxy");
                    zza(parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null, parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface("com.google.android.gms.tagmanager.IMeasurementProxy");
                    Map zzQI = zzQI();
                    parcel2.writeNoException();
                    parcel2.writeMap(zzQI);
                    return true;
                case 21:
                    parcel.enforceInterface("com.google.android.gms.tagmanager.IMeasurementProxy");
                    zza(zzba.zza.zzfj(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 22:
                    parcel.enforceInterface("com.google.android.gms.tagmanager.IMeasurementProxy");
                    zza(zzaz.zza.zzfi(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.tagmanager.IMeasurementProxy");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    Map zzQI() throws RemoteException;

    void zza(zzaz zzazVar) throws RemoteException;

    void zza(zzba zzbaVar) throws RemoteException;

    void zza(String str, String str2, Bundle bundle, long j) throws RemoteException;
}
