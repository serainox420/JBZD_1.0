package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.zzc;
import com.google.android.gms.internal.zzbks;
import com.google.android.gms.internal.zzbkt;
import com.google.android.gms.wallet.fragment.WalletFragmentOptions;
/* loaded from: classes2.dex */
public interface zzbkv extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzbkv {

        /* renamed from: com.google.android.gms.internal.zzbkv$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0300zza implements zzbkv {
            private IBinder zzrk;

            C0300zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzbkv
            public zzbks zza(IObjectWrapper iObjectWrapper, com.google.android.gms.dynamic.zzc zzcVar, WalletFragmentOptions walletFragmentOptions, zzbkt zzbktVar) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wallet.internal.IWalletDynamiteCreator");
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    obtain.writeStrongBinder(zzcVar != null ? zzcVar.asBinder() : null);
                    if (walletFragmentOptions != null) {
                        obtain.writeInt(1);
                        walletFragmentOptions.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (zzbktVar != null) {
                        iBinder = zzbktVar.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    this.zzrk.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return zzbks.zza.zzft(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzbkv zzfw(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.wallet.internal.IWalletDynamiteCreator");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzbkv)) ? new C0300zza(iBinder) : (zzbkv) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            IBinder iBinder = null;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.wallet.internal.IWalletDynamiteCreator");
                    zzbks zza = zza(IObjectWrapper.zza.zzcd(parcel.readStrongBinder()), zzc.zza.zzcc(parcel.readStrongBinder()), parcel.readInt() != 0 ? WalletFragmentOptions.CREATOR.createFromParcel(parcel) : null, zzbkt.zza.zzfu(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    if (zza != null) {
                        iBinder = zza.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.wallet.internal.IWalletDynamiteCreator");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    zzbks zza(IObjectWrapper iObjectWrapper, com.google.android.gms.dynamic.zzc zzcVar, WalletFragmentOptions walletFragmentOptions, zzbkt zzbktVar) throws RemoteException;
}
