package com.google.android.gms.cast.framework.media;

import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2.dex */
public interface zzc extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzc {

        /* renamed from: com.google.android.gms.cast.framework.media.zzc$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0160zza implements zzc {
            private IBinder zzrk;

            C0160zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.cast.framework.media.zzc
            public IBinder onBind(Intent intent) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.media.IMediaNotificationService");
                    if (intent != null) {
                        obtain.writeInt(1);
                        intent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readStrongBinder();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.cast.framework.media.zzc
            public void onCreate() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.media.IMediaNotificationService");
                    this.zzrk.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.cast.framework.media.zzc
            public void onDestroy() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.media.IMediaNotificationService");
                    this.zzrk.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.cast.framework.media.zzc
            public int onStartCommand(Intent intent, int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.media.IMediaNotificationService");
                    if (intent != null) {
                        obtain.writeInt(1);
                        intent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    this.zzrk.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzc zzbd(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.framework.media.IMediaNotificationService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzc)) ? new C0160zza(iBinder) : (zzc) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            Intent intent = null;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.media.IMediaNotificationService");
                    onCreate();
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.media.IMediaNotificationService");
                    if (parcel.readInt() != 0) {
                        intent = (Intent) Intent.CREATOR.createFromParcel(parcel);
                    }
                    int onStartCommand = onStartCommand(intent, parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(onStartCommand);
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.media.IMediaNotificationService");
                    if (parcel.readInt() != 0) {
                        intent = (Intent) Intent.CREATOR.createFromParcel(parcel);
                    }
                    IBinder onBind = onBind(intent);
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(onBind);
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.media.IMediaNotificationService");
                    onDestroy();
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.cast.framework.media.IMediaNotificationService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    IBinder onBind(Intent intent) throws RemoteException;

    void onCreate() throws RemoteException;

    void onDestroy() throws RemoteException;

    int onStartCommand(Intent intent, int i, int i2) throws RemoteException;
}
