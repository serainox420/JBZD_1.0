package com.google.android.gms.tagmanager;

import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.tagmanager.zzay;
import com.google.android.gms.tagmanager.zzbb;
/* loaded from: classes2.dex */
public interface zzbc extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzbc {

        /* renamed from: com.google.android.gms.tagmanager.zzbc$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0490zza implements zzbc {
            private IBinder zzrk;

            C0490zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.tagmanager.zzbc
            public void initialize(IObjectWrapper iObjectWrapper, zzbb zzbbVar, zzay zzayVar) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tagmanager.ITagManagerApi");
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    obtain.writeStrongBinder(zzbbVar != null ? zzbbVar.asBinder() : null);
                    if (zzayVar != null) {
                        iBinder = zzayVar.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    this.zzrk.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.tagmanager.zzbc
            public void preview(Intent intent, IObjectWrapper iObjectWrapper) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tagmanager.ITagManagerApi");
                    if (intent != null) {
                        obtain.writeInt(1);
                        intent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    this.zzrk.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.tagmanager.zzbc
            public void previewIntent(Intent intent, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, zzbb zzbbVar, zzay zzayVar) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tagmanager.ITagManagerApi");
                    if (intent != null) {
                        obtain.writeInt(1);
                        intent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    obtain.writeStrongBinder(iObjectWrapper2 != null ? iObjectWrapper2.asBinder() : null);
                    obtain.writeStrongBinder(zzbbVar != null ? zzbbVar.asBinder() : null);
                    if (zzayVar != null) {
                        iBinder = zzayVar.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    this.zzrk.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public zza() {
            attachInterface(this, "com.google.android.gms.tagmanager.ITagManagerApi");
        }

        public static zzbc asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.tagmanager.ITagManagerApi");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzbc)) ? new C0490zza(iBinder) : (zzbc) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            Intent intent = null;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.tagmanager.ITagManagerApi");
                    initialize(IObjectWrapper.zza.zzcd(parcel.readStrongBinder()), zzbb.zza.zzfk(parcel.readStrongBinder()), zzay.zza.zzfh(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.tagmanager.ITagManagerApi");
                    if (parcel.readInt() != 0) {
                        intent = (Intent) Intent.CREATOR.createFromParcel(parcel);
                    }
                    preview(intent, IObjectWrapper.zza.zzcd(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.tagmanager.ITagManagerApi");
                    previewIntent(parcel.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(parcel) : null, IObjectWrapper.zza.zzcd(parcel.readStrongBinder()), IObjectWrapper.zza.zzcd(parcel.readStrongBinder()), zzbb.zza.zzfk(parcel.readStrongBinder()), zzay.zza.zzfh(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.tagmanager.ITagManagerApi");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void initialize(IObjectWrapper iObjectWrapper, zzbb zzbbVar, zzay zzayVar) throws RemoteException;

    void preview(Intent intent, IObjectWrapper iObjectWrapper) throws RemoteException;

    void previewIntent(Intent intent, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, zzbb zzbbVar, zzay zzayVar) throws RemoteException;
}
