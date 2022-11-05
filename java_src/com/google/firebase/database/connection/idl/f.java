package com.google.firebase.database.connection.idl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2.dex */
public interface f extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class a extends Binder implements f {

        /* renamed from: com.google.firebase.database.connection.idl.f$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0500a implements f {

            /* renamed from: a  reason: collision with root package name */
            private IBinder f3564a;

            C0500a(IBinder iBinder) {
                this.f3564a = iBinder;
            }

            @Override // com.google.firebase.database.connection.idl.f
            public void a(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.database.connection.idl.IGetTokenCallback");
                    obtain.writeString(str);
                    this.f3564a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f3564a;
            }

            @Override // com.google.firebase.database.connection.idl.f
            public void b(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.database.connection.idl.IGetTokenCallback");
                    obtain.writeString(str);
                    this.f3564a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public a() {
            attachInterface(this, "com.google.firebase.database.connection.idl.IGetTokenCallback");
        }

        public static f a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.firebase.database.connection.idl.IGetTokenCallback");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof f)) ? new C0500a(iBinder) : (f) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.firebase.database.connection.idl.IGetTokenCallback");
                    a(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.firebase.database.connection.idl.IGetTokenCallback");
                    b(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.firebase.database.connection.idl.IGetTokenCallback");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void a(String str) throws RemoteException;

    void b(String str) throws RemoteException;
}
