package com.google.android.gms.cast.framework;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2.dex */
public interface zzp extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzp {
        public zza() {
            attachInterface(this, "com.google.android.gms.cast.framework.ISessionProvider");
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.ISessionProvider");
                    IObjectWrapper zzcL = zzcL(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(zzcL != null ? zzcL.asBinder() : null);
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.ISessionProvider");
                    boolean isSessionRecoverable = isSessionRecoverable();
                    parcel2.writeNoException();
                    parcel2.writeInt(isSessionRecoverable ? 1 : 0);
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.ISessionProvider");
                    String category = getCategory();
                    parcel2.writeNoException();
                    parcel2.writeString(category);
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.ISessionProvider");
                    parcel2.writeNoException();
                    parcel2.writeInt(10298208);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.cast.framework.ISessionProvider");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    String getCategory() throws RemoteException;

    boolean isSessionRecoverable() throws RemoteException;

    IObjectWrapper zzcL(String str) throws RemoteException;
}
