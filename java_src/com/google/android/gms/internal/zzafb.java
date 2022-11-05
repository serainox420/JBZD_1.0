package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2.dex */
public interface zzafb extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzafb {

        /* renamed from: com.google.android.gms.internal.zzafb$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0205zza implements zzafb {
            private IBinder zzrk;

            C0205zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzafb
            public void zza(zzaet zzaetVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.contextmanager.fence.internal.IContextFenceListener");
                    if (zzaetVar != null) {
                        obtain.writeInt(1);
                        zzaetVar.writeToParcel(obtain, 0);
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

            @Override // com.google.android.gms.internal.zzafb
            public void zza(zzaex zzaexVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.contextmanager.fence.internal.IContextFenceListener");
                    if (zzaexVar != null) {
                        obtain.writeInt(1);
                        zzaexVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public zza() {
            attachInterface(this, "com.google.android.gms.contextmanager.fence.internal.IContextFenceListener");
        }

        public static zzafb zzbF(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.contextmanager.fence.internal.IContextFenceListener");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzafb)) ? new C0205zza(iBinder) : (zzafb) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            zzaet zzaetVar = null;
            zzaex zzaexVar = null;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.contextmanager.fence.internal.IContextFenceListener");
                    if (parcel.readInt() != 0) {
                        zzaexVar = zzaex.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzaexVar);
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.contextmanager.fence.internal.IContextFenceListener");
                    if (parcel.readInt() != 0) {
                        zzaetVar = zzaet.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzaetVar);
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.contextmanager.fence.internal.IContextFenceListener");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(zzaet zzaetVar) throws RemoteException;

    void zza(zzaex zzaexVar) throws RemoteException;
}
