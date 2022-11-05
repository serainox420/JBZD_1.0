package com.google.android.gms.maps.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.maps.model.internal.zzb;
/* loaded from: classes2.dex */
public interface zzj extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzj {

        /* renamed from: com.google.android.gms.maps.internal.zzj$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0446zza implements zzj {
            private IBinder zzrk;

            C0446zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.maps.internal.zzj
            public void zza(com.google.android.gms.maps.model.internal.zzb zzbVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IOnCircleClickListener");
                    obtain.writeStrongBinder(zzbVar != null ? zzbVar.asBinder() : null);
                    this.zzrk.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public zza() {
            attachInterface(this, "com.google.android.gms.maps.internal.IOnCircleClickListener");
        }

        public static zzj zzdE(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.internal.IOnCircleClickListener");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzj)) ? new C0446zza(iBinder) : (zzj) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IOnCircleClickListener");
                    zza(zzb.zza.zzej(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.maps.internal.IOnCircleClickListener");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(com.google.android.gms.maps.model.internal.zzb zzbVar) throws RemoteException;
}
