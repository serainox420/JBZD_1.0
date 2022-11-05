package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2.dex */
public interface zzhi extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzhi {

        /* renamed from: com.google.android.gms.internal.zzhi$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0340zza implements zzhi {
            private IBinder zzrk;

            C0340zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzhi
            public IBinder zza(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3, int i) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegateCreator");
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    obtain.writeStrongBinder(iObjectWrapper2 != null ? iObjectWrapper2.asBinder() : null);
                    if (iObjectWrapper3 != null) {
                        iBinder = iObjectWrapper3.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    obtain.writeInt(i);
                    this.zzrk.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readStrongBinder();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzhi zzD(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegateCreator");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzhi)) ? new C0340zza(iBinder) : (zzhi) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegateCreator");
                    IBinder zza = zza(IObjectWrapper.zza.zzcd(parcel.readStrongBinder()), IObjectWrapper.zza.zzcd(parcel.readStrongBinder()), IObjectWrapper.zza.zzcd(parcel.readStrongBinder()), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(zza);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegateCreator");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    IBinder zza(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3, int i) throws RemoteException;
}
