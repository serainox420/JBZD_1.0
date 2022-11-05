package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2.dex */
public interface zzapc extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzapc {

        /* renamed from: com.google.android.gms.internal.zzapc$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0244zza implements zzapc {
            private IBinder zzrk;

            C0244zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzapc
            public void zza(com.google.android.gms.fitness.result.zzg zzgVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.fitness.internal.IReadStatsCallback");
                    if (zzgVar != null) {
                        obtain.writeInt(1);
                        zzgVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public static zzapc zzcG(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.fitness.internal.IReadStatsCallback");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzapc)) ? new C0244zza(iBinder) : (zzapc) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IReadStatsCallback");
                    zza(parcel.readInt() != 0 ? com.google.android.gms.fitness.result.zzg.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.fitness.internal.IReadStatsCallback");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(com.google.android.gms.fitness.result.zzg zzgVar) throws RemoteException;
}
