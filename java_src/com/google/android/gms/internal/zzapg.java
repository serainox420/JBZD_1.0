package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2.dex */
public interface zzapg extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzapg {

        /* renamed from: com.google.android.gms.internal.zzapg$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0248zza implements zzapg {
            private IBinder zzrk;

            C0248zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzapg
            public void zza(com.google.android.gms.fitness.result.zzt zztVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.fitness.internal.ISyncInfoCallback");
                    if (zztVar != null) {
                        obtain.writeInt(1);
                        zztVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public static zzapg zzcK(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.fitness.internal.ISyncInfoCallback");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzapg)) ? new C0248zza(iBinder) : (zzapg) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.ISyncInfoCallback");
                    zza(parcel.readInt() != 0 ? com.google.android.gms.fitness.result.zzt.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.fitness.internal.ISyncInfoCallback");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(com.google.android.gms.fitness.result.zzt zztVar) throws RemoteException;
}
