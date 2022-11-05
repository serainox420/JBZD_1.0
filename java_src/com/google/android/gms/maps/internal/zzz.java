package com.google.android.gms.maps.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.maps.model.internal.zzg;
/* loaded from: classes2.dex */
public interface zzz extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzz {

        /* renamed from: com.google.android.gms.maps.internal.zzz$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0462zza implements zzz {
            private IBinder zzrk;

            C0462zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.maps.internal.zzz
            public void zza(com.google.android.gms.maps.model.internal.zzg zzgVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.maps.internal.IOnPolygonClickListener");
                    obtain.writeStrongBinder(zzgVar != null ? zzgVar.asBinder() : null);
                    this.zzrk.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public zza() {
            attachInterface(this, "com.google.android.gms.maps.internal.IOnPolygonClickListener");
        }

        public static zzz zzdU(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.internal.IOnPolygonClickListener");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzz)) ? new C0462zza(iBinder) : (zzz) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.maps.internal.IOnPolygonClickListener");
                    zza(zzg.zza.zzeo(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.maps.internal.IOnPolygonClickListener");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(com.google.android.gms.maps.model.internal.zzg zzgVar) throws RemoteException;
}
