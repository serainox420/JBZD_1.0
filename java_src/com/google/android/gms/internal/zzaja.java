package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2.dex */
public interface zzaja extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzaja {

        /* renamed from: com.google.android.gms.internal.zzaja$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0213zza implements zzaja {
            private IBinder zzrk;

            C0213zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzaja
            public void zzy(boolean z) throws RemoteException {
                int i = 1;
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IEventReleaseCallback");
                    if (!z) {
                        i = 0;
                    }
                    obtain.writeInt(i);
                    this.zzrk.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public static zzaja zzbO(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.drive.internal.IEventReleaseCallback");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzaja)) ? new C0213zza(iBinder) : (zzaja) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IEventReleaseCallback");
                    zzy(parcel.readInt() != 0);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.drive.internal.IEventReleaseCallback");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zzy(boolean z) throws RemoteException;
}
