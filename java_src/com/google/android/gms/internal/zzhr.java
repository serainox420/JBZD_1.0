package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.zzhn;
/* loaded from: classes2.dex */
public interface zzhr extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzhr {

        /* renamed from: com.google.android.gms.internal.zzhr$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0346zza implements zzhr {
            private IBinder zzrk;

            C0346zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzhr
            public void zza(zzhn zzhnVar, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener");
                    obtain.writeStrongBinder(zzhnVar != null ? zzhnVar.asBinder() : null);
                    obtain.writeString(str);
                    this.zzrk.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public zza() {
            attachInterface(this, "com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener");
        }

        public static zzhr zzJ(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzhr)) ? new C0346zza(iBinder) : (zzhr) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener");
                    zza(zzhn.zza.zzG(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(zzhn zzhnVar, String str) throws RemoteException;
}
