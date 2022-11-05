package android.support.customtabs;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.support.customtabs.g;
/* compiled from: IPostMessageService.java */
/* loaded from: classes.dex */
public interface i extends IInterface {
    void a(g gVar, Bundle bundle) throws RemoteException;

    void a(g gVar, String str, Bundle bundle) throws RemoteException;

    /* compiled from: IPostMessageService.java */
    /* loaded from: classes.dex */
    public static abstract class a extends Binder implements i {
        public a() {
            attachInterface(this, "android.support.customtabs.IPostMessageService");
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            Bundle bundle = null;
            switch (i) {
                case 2:
                    parcel.enforceInterface("android.support.customtabs.IPostMessageService");
                    g a2 = g.a.a(parcel.readStrongBinder());
                    if (parcel.readInt() != 0) {
                        bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    a(a2, bundle);
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("android.support.customtabs.IPostMessageService");
                    g a3 = g.a.a(parcel.readStrongBinder());
                    String readString = parcel.readString();
                    if (parcel.readInt() != 0) {
                        bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    a(a3, readString, bundle);
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("android.support.customtabs.IPostMessageService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }
}
