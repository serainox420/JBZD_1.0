package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2.dex */
public interface zzld extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzld {

        /* renamed from: com.google.android.gms.internal.zzld$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0363zza implements zzld {
            private IBinder zzrk;

            C0363zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzld
            public String getProductId() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.purchase.client.IInAppPurchase");
                    this.zzrk.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzld
            public void recordPlayBillingResolution(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.purchase.client.IInAppPurchase");
                    obtain.writeInt(i);
                    this.zzrk.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzld
            public void recordResolution(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.purchase.client.IInAppPurchase");
                    obtain.writeInt(i);
                    this.zzrk.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public zza() {
            attachInterface(this, "com.google.android.gms.ads.internal.purchase.client.IInAppPurchase");
        }

        public static zzld zzW(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.purchase.client.IInAppPurchase");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzld)) ? new C0363zza(iBinder) : (zzld) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.purchase.client.IInAppPurchase");
                    String productId = getProductId();
                    parcel2.writeNoException();
                    parcel2.writeString(productId);
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.purchase.client.IInAppPurchase");
                    recordResolution(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.purchase.client.IInAppPurchase");
                    recordPlayBillingResolution(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.ads.internal.purchase.client.IInAppPurchase");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    String getProductId() throws RemoteException;

    void recordPlayBillingResolution(int i) throws RemoteException;

    void recordResolution(int i) throws RemoteException;
}
