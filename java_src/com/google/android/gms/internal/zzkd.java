package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2.dex */
public interface zzkd extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzkd {

        /* renamed from: com.google.android.gms.internal.zzkd$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0358zza implements zzkd {
            private IBinder zzrk;

            C0358zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzkd
            public int zzha() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.mediation.client.IMediationResponseMetadata");
                    this.zzrk.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public zza() {
            attachInterface(this, "com.google.android.gms.ads.internal.mediation.client.IMediationResponseMetadata");
        }

        public static zzkd zzP(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationResponseMetadata");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzkd)) ? new C0358zza(iBinder) : (zzkd) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationResponseMetadata");
                    int zzha = zzha();
                    parcel2.writeNoException();
                    parcel2.writeInt(zzha);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.ads.internal.mediation.client.IMediationResponseMetadata");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    int zzha() throws RemoteException;
}
