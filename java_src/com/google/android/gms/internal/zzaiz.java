package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2.dex */
public interface zzaiz extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzaiz {

        /* renamed from: com.google.android.gms.internal.zzaiz$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0212zza implements zzaiz {
            private IBinder zzrk;

            C0212zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzaiz
            public void zzc(zzajp zzajpVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IEventCallback");
                    if (zzajpVar != null) {
                        obtain.writeInt(1);
                        zzajpVar.writeToParcel(obtain, 0);
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
            attachInterface(this, "com.google.android.gms.drive.internal.IEventCallback");
        }

        public static zzaiz zzbN(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.drive.internal.IEventCallback");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzaiz)) ? new C0212zza(iBinder) : (zzaiz) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IEventCallback");
                    zzc(parcel.readInt() != 0 ? zzajp.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.drive.internal.IEventCallback");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zzc(zzajp zzajpVar) throws RemoteException;
}
