package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzka;
/* loaded from: classes2.dex */
public interface zzeu extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzeu {

        /* renamed from: com.google.android.gms.internal.zzeu$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0327zza implements zzeu {
            private IBinder zzrk;

            C0327zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzeu
            public IBinder zza(IObjectWrapper iObjectWrapper, zzeg zzegVar, String str, zzka zzkaVar, int i) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdManagerCreator");
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    if (zzegVar != null) {
                        obtain.writeInt(1);
                        zzegVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeString(str);
                    if (zzkaVar != null) {
                        iBinder = zzkaVar.asBinder();
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

            @Override // com.google.android.gms.internal.zzeu
            public IBinder zza(IObjectWrapper iObjectWrapper, zzeg zzegVar, String str, zzka zzkaVar, int i, int i2) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdManagerCreator");
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    if (zzegVar != null) {
                        obtain.writeInt(1);
                        zzegVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeString(str);
                    if (zzkaVar != null) {
                        iBinder = zzkaVar.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    this.zzrk.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readStrongBinder();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzeu zzr(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManagerCreator");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzeu)) ? new C0327zza(iBinder) : (zzeu) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            zzeg zzegVar = null;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManagerCreator");
                    IObjectWrapper zzcd = IObjectWrapper.zza.zzcd(parcel.readStrongBinder());
                    if (parcel.readInt() != 0) {
                        zzegVar = zzeg.CREATOR.createFromParcel(parcel);
                    }
                    IBinder zza = zza(zzcd, zzegVar, parcel.readString(), zzka.zza.zzM(parcel.readStrongBinder()), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(zza);
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IAdManagerCreator");
                    IObjectWrapper zzcd2 = IObjectWrapper.zza.zzcd(parcel.readStrongBinder());
                    if (parcel.readInt() != 0) {
                        zzegVar = zzeg.CREATOR.createFromParcel(parcel);
                    }
                    IBinder zza2 = zza(zzcd2, zzegVar, parcel.readString(), zzka.zza.zzM(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(zza2);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.ads.internal.client.IAdManagerCreator");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    IBinder zza(IObjectWrapper iObjectWrapper, zzeg zzegVar, String str, zzka zzkaVar, int i) throws RemoteException;

    IBinder zza(IObjectWrapper iObjectWrapper, zzeg zzegVar, String str, zzka zzkaVar, int i, int i2) throws RemoteException;
}
