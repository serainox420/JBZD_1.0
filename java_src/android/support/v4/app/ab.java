package android.support.v4.app;

import android.app.Notification;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: INotificationSideChannel.java */
/* loaded from: classes.dex */
public interface ab extends IInterface {
    void a(String str) throws RemoteException;

    void a(String str, int i, String str2) throws RemoteException;

    void a(String str, int i, String str2, Notification notification) throws RemoteException;

    /* compiled from: INotificationSideChannel.java */
    /* loaded from: classes.dex */
    public static abstract class a extends Binder implements ab {
        public static ab a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("android.support.v4.app.INotificationSideChannel");
            if (queryLocalInterface != null && (queryLocalInterface instanceof ab)) {
                return (ab) queryLocalInterface;
            }
            return new C0010a(iBinder);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            Notification notification;
            switch (i) {
                case 1:
                    parcel.enforceInterface("android.support.v4.app.INotificationSideChannel");
                    String readString = parcel.readString();
                    int readInt = parcel.readInt();
                    String readString2 = parcel.readString();
                    if (parcel.readInt() != 0) {
                        notification = (Notification) Notification.CREATOR.createFromParcel(parcel);
                    } else {
                        notification = null;
                    }
                    a(readString, readInt, readString2, notification);
                    return true;
                case 2:
                    parcel.enforceInterface("android.support.v4.app.INotificationSideChannel");
                    a(parcel.readString(), parcel.readInt(), parcel.readString());
                    return true;
                case 3:
                    parcel.enforceInterface("android.support.v4.app.INotificationSideChannel");
                    a(parcel.readString());
                    return true;
                case 1598968902:
                    parcel2.writeString("android.support.v4.app.INotificationSideChannel");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* compiled from: INotificationSideChannel.java */
        /* renamed from: android.support.v4.app.ab$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        private static class C0010a implements ab {

            /* renamed from: a  reason: collision with root package name */
            private IBinder f224a;

            C0010a(IBinder iBinder) {
                this.f224a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f224a;
            }

            @Override // android.support.v4.app.ab
            public void a(String str, int i, String str2, Notification notification) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.app.INotificationSideChannel");
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    obtain.writeString(str2);
                    if (notification != null) {
                        obtain.writeInt(1);
                        notification.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f224a.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.app.ab
            public void a(String str, int i, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.app.INotificationSideChannel");
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    obtain.writeString(str2);
                    this.f224a.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.app.ab
            public void a(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.app.INotificationSideChannel");
                    obtain.writeString(str);
                    this.f224a.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }
    }
}
