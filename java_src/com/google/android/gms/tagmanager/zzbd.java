package com.google.android.gms.tagmanager;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzbbs;
import com.google.android.gms.tagmanager.zzay;
import com.google.android.gms.tagmanager.zzbb;
/* loaded from: classes2.dex */
public interface zzbd extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzbd {

        /* renamed from: com.google.android.gms.tagmanager.zzbd$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0491zza implements zzbd {
            private IBinder zzrk;

            C0491zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.tagmanager.zzbd
            public zzbbs getService(IObjectWrapper iObjectWrapper, zzbb zzbbVar, zzay zzayVar) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tagmanager.ITagManagerServiceProvider");
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    obtain.writeStrongBinder(zzbbVar != null ? zzbbVar.asBinder() : null);
                    if (zzayVar != null) {
                        iBinder = zzayVar.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    this.zzrk.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return zzbbs.zza.zzfm(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public zza() {
            attachInterface(this, "com.google.android.gms.tagmanager.ITagManagerServiceProvider");
        }

        public static zzbd asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.tagmanager.ITagManagerServiceProvider");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzbd)) ? new C0491zza(iBinder) : (zzbd) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.tagmanager.ITagManagerServiceProvider");
                    zzbbs service = getService(IObjectWrapper.zza.zzcd(parcel.readStrongBinder()), zzbb.zza.zzfk(parcel.readStrongBinder()), zzay.zza.zzfh(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(service != null ? service.asBinder() : null);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.tagmanager.ITagManagerServiceProvider");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    zzbbs getService(IObjectWrapper iObjectWrapper, zzbb zzbbVar, zzay zzayVar) throws RemoteException;
}
