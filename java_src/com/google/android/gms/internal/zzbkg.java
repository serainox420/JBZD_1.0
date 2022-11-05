package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzbkf;
/* loaded from: classes2.dex */
public interface zzbkg extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzbkg {

        /* renamed from: com.google.android.gms.internal.zzbkg$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0296zza implements zzbkg {
            private IBinder zzrk;

            C0296zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzbkg
            public zzbkf zza(IObjectWrapper iObjectWrapper, zzbko zzbkoVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.vision.text.internal.client.INativeTextRecognizerCreator");
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    if (zzbkoVar != null) {
                        obtain.writeInt(1);
                        zzbkoVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return zzbkf.zza.zzfr(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzbkg zzfs(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.vision.text.internal.client.INativeTextRecognizerCreator");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzbkg)) ? new C0296zza(iBinder) : (zzbkg) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            IBinder iBinder = null;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.vision.text.internal.client.INativeTextRecognizerCreator");
                    zzbkf zza = zza(IObjectWrapper.zza.zzcd(parcel.readStrongBinder()), parcel.readInt() != 0 ? zzbko.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    if (zza != null) {
                        iBinder = zza.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.vision.text.internal.client.INativeTextRecognizerCreator");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    zzbkf zza(IObjectWrapper iObjectWrapper, zzbko zzbkoVar) throws RemoteException;
}
