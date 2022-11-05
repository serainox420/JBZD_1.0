package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzbjv;
/* loaded from: classes2.dex */
public interface zzbjw extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzbjw {

        /* renamed from: com.google.android.gms.internal.zzbjw$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0294zza implements zzbjw {
            private IBinder zzrk;

            C0294zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzbjw
            public zzbjv zza(IObjectWrapper iObjectWrapper, zzbjt zzbjtVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.vision.face.internal.client.INativeFaceDetectorCreator");
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    if (zzbjtVar != null) {
                        obtain.writeInt(1);
                        zzbjtVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return zzbjv.zza.zzfp(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzbjw zzfq(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.vision.face.internal.client.INativeFaceDetectorCreator");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzbjw)) ? new C0294zza(iBinder) : (zzbjw) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            IBinder iBinder = null;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.vision.face.internal.client.INativeFaceDetectorCreator");
                    zzbjv zza = zza(IObjectWrapper.zza.zzcd(parcel.readStrongBinder()), parcel.readInt() != 0 ? zzbjt.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    if (zza != null) {
                        iBinder = zza.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.vision.face.internal.client.INativeFaceDetectorCreator");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    zzbjv zza(IObjectWrapper iObjectWrapper, zzbjt zzbjtVar) throws RemoteException;
}
