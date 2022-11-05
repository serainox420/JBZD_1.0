package android.support.v4.os;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: IResultReceiver.java */
/* loaded from: classes.dex */
public interface d extends IInterface {
    void a(int i, Bundle bundle) throws RemoteException;

    /* compiled from: IResultReceiver.java */
    /* loaded from: classes.dex */
    public static abstract class a extends Binder implements d {
        public a() {
            attachInterface(this, "android.support.v4.os.IResultReceiver");
        }

        public static d a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("android.support.v4.os.IResultReceiver");
            if (queryLocalInterface != null && (queryLocalInterface instanceof d)) {
                return (d) queryLocalInterface;
            }
            return new C0027a(iBinder);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            Bundle bundle;
            switch (i) {
                case 1:
                    parcel.enforceInterface("android.support.v4.os.IResultReceiver");
                    int readInt = parcel.readInt();
                    if (parcel.readInt() != 0) {
                        bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    } else {
                        bundle = null;
                    }
                    a(readInt, bundle);
                    return true;
                case 1598968902:
                    parcel2.writeString("android.support.v4.os.IResultReceiver");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* compiled from: IResultReceiver.java */
        /* renamed from: android.support.v4.os.d$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        private static class C0027a implements d {

            /* renamed from: a  reason: collision with root package name */
            private IBinder f403a;

            C0027a(IBinder iBinder) {
                this.f403a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f403a;
            }

            @Override // android.support.v4.os.d
            public void a(int i, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.os.IResultReceiver");
                    obtain.writeInt(i);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f403a.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }
    }
}
