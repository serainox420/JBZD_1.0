package com.google.firebase.database.connection.idl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.firebase.database.connection.idl.f;
/* loaded from: classes2.dex */
public interface e extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class a extends Binder implements e {

        /* renamed from: com.google.firebase.database.connection.idl.e$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0499a implements e {

            /* renamed from: a  reason: collision with root package name */
            private IBinder f3563a;

            C0499a(IBinder iBinder) {
                this.f3563a = iBinder;
            }

            @Override // com.google.firebase.database.connection.idl.e
            public void a(boolean z, f fVar) throws RemoteException {
                int i = 1;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.database.connection.idl.IConnectionAuthTokenProvider");
                    if (!z) {
                        i = 0;
                    }
                    obtain.writeInt(i);
                    obtain.writeStrongBinder(fVar != null ? fVar.asBinder() : null);
                    this.f3563a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f3563a;
            }
        }

        public a() {
            attachInterface(this, "com.google.firebase.database.connection.idl.IConnectionAuthTokenProvider");
        }

        public static e a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.firebase.database.connection.idl.IConnectionAuthTokenProvider");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof e)) ? new C0499a(iBinder) : (e) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.firebase.database.connection.idl.IConnectionAuthTokenProvider");
                    a(parcel.readInt() != 0, f.a.a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.firebase.database.connection.idl.IConnectionAuthTokenProvider");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void a(boolean z, f fVar) throws RemoteException;
}
