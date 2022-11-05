package com.google.android.gms.cast.framework.media;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2.dex */
public interface zzb extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzb {

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: com.google.android.gms.cast.framework.media.zzb$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static class C0159zza implements zzb {
            private IBinder zzrk;

            C0159zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.cast.framework.media.zzb
            public WebImage onPickImage(MediaMetadata mediaMetadata, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.media.IImagePicker");
                    if (mediaMetadata != null) {
                        obtain.writeInt(1);
                        mediaMetadata.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(i);
                    this.zzrk.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? WebImage.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.cast.framework.media.zzb
            public WebImage zza(MediaMetadata mediaMetadata, ImageHints imageHints) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.media.IImagePicker");
                    if (mediaMetadata != null) {
                        obtain.writeInt(1);
                        mediaMetadata.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (imageHints != null) {
                        obtain.writeInt(1);
                        imageHints.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? WebImage.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.cast.framework.media.zzb
            public int zzsB() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.media.IImagePicker");
                    this.zzrk.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.cast.framework.media.zzb
            public IObjectWrapper zztp() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.media.IImagePicker");
                    this.zzrk.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return IObjectWrapper.zza.zzcd(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public zza() {
            attachInterface(this, "com.google.android.gms.cast.framework.media.IImagePicker");
        }

        public static zzb zzbc(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.framework.media.IImagePicker");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzb)) ? new C0159zza(iBinder) : (zzb) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            IBinder iBinder = null;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.media.IImagePicker");
                    WebImage onPickImage = onPickImage(parcel.readInt() != 0 ? MediaMetadata.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                    parcel2.writeNoException();
                    if (onPickImage != null) {
                        parcel2.writeInt(1);
                        onPickImage.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.media.IImagePicker");
                    IObjectWrapper zztp = zztp();
                    parcel2.writeNoException();
                    if (zztp != null) {
                        iBinder = zztp.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.media.IImagePicker");
                    int zzsB = zzsB();
                    parcel2.writeNoException();
                    parcel2.writeInt(zzsB);
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.media.IImagePicker");
                    WebImage zza = zza(parcel.readInt() != 0 ? MediaMetadata.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? ImageHints.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    if (zza != null) {
                        parcel2.writeInt(1);
                        zza.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.cast.framework.media.IImagePicker");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    WebImage onPickImage(MediaMetadata mediaMetadata, int i) throws RemoteException;

    WebImage zza(MediaMetadata mediaMetadata, ImageHints imageHints) throws RemoteException;

    int zzsB() throws RemoteException;

    IObjectWrapper zztp() throws RemoteException;
}
