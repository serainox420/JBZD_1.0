package com.google.firebase.database.connection.idl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.firebase.database.connection.idl.e;
import com.google.firebase.database.connection.idl.g;
import com.google.firebase.database.connection.idl.i;
import com.google.firebase.database.connection.idl.j;
import java.util.List;
/* loaded from: classes2.dex */
public interface h extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class a extends Binder implements h {

        /* renamed from: com.google.firebase.database.connection.idl.h$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0502a implements h {

            /* renamed from: a  reason: collision with root package name */
            private IBinder f3566a;

            C0502a(IBinder iBinder) {
                this.f3566a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f3566a;
            }

            @Override // com.google.firebase.database.connection.idl.h
            public void compareAndPut(List<String> list, IObjectWrapper iObjectWrapper, String str, j jVar) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.database.connection.idl.IPersistentConnection");
                    obtain.writeStringList(list);
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    obtain.writeString(str);
                    if (jVar != null) {
                        iBinder = jVar.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    this.f3566a.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.firebase.database.connection.idl.h
            public void initialize() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.database.connection.idl.IPersistentConnection");
                    this.f3566a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.firebase.database.connection.idl.h
            public void interrupt(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.database.connection.idl.IPersistentConnection");
                    obtain.writeString(str);
                    this.f3566a.transact(14, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.firebase.database.connection.idl.h
            public boolean isInterrupted(String str) throws RemoteException {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.database.connection.idl.IPersistentConnection");
                    obtain.writeString(str);
                    this.f3566a.transact(16, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.firebase.database.connection.idl.h
            public void listen(List<String> list, IObjectWrapper iObjectWrapper, g gVar, long j, j jVar) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.database.connection.idl.IPersistentConnection");
                    obtain.writeStringList(list);
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    obtain.writeStrongBinder(gVar != null ? gVar.asBinder() : null);
                    obtain.writeLong(j);
                    if (jVar != null) {
                        iBinder = jVar.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    this.f3566a.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.firebase.database.connection.idl.h
            public void merge(List<String> list, IObjectWrapper iObjectWrapper, j jVar) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.database.connection.idl.IPersistentConnection");
                    obtain.writeStringList(list);
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    if (jVar != null) {
                        iBinder = jVar.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    this.f3566a.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.firebase.database.connection.idl.h
            public void onDisconnectCancel(List<String> list, j jVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.database.connection.idl.IPersistentConnection");
                    obtain.writeStringList(list);
                    obtain.writeStrongBinder(jVar != null ? jVar.asBinder() : null);
                    this.f3566a.transact(13, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.firebase.database.connection.idl.h
            public void onDisconnectMerge(List<String> list, IObjectWrapper iObjectWrapper, j jVar) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.database.connection.idl.IPersistentConnection");
                    obtain.writeStringList(list);
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    if (jVar != null) {
                        iBinder = jVar.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    this.f3566a.transact(12, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.firebase.database.connection.idl.h
            public void onDisconnectPut(List<String> list, IObjectWrapper iObjectWrapper, j jVar) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.database.connection.idl.IPersistentConnection");
                    obtain.writeStringList(list);
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    if (jVar != null) {
                        iBinder = jVar.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    this.f3566a.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.firebase.database.connection.idl.h
            public void purgeOutstandingWrites() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.database.connection.idl.IPersistentConnection");
                    this.f3566a.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.firebase.database.connection.idl.h
            public void put(List<String> list, IObjectWrapper iObjectWrapper, j jVar) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.database.connection.idl.IPersistentConnection");
                    obtain.writeStringList(list);
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    if (jVar != null) {
                        iBinder = jVar.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    this.f3566a.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.firebase.database.connection.idl.h
            public void refreshAuthToken() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.database.connection.idl.IPersistentConnection");
                    this.f3566a.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.firebase.database.connection.idl.h
            public void refreshAuthToken2(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.database.connection.idl.IPersistentConnection");
                    obtain.writeString(str);
                    this.f3566a.transact(17, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.firebase.database.connection.idl.h
            public void resume(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.database.connection.idl.IPersistentConnection");
                    obtain.writeString(str);
                    this.f3566a.transact(15, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.firebase.database.connection.idl.h
            public void setup(zzc zzcVar, e eVar, IObjectWrapper iObjectWrapper, i iVar) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.database.connection.idl.IPersistentConnection");
                    if (zzcVar != null) {
                        obtain.writeInt(1);
                        zzcVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(eVar != null ? eVar.asBinder() : null);
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    if (iVar != null) {
                        iBinder = iVar.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    this.f3566a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.firebase.database.connection.idl.h
            public void shutdown() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.database.connection.idl.IPersistentConnection");
                    this.f3566a.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.firebase.database.connection.idl.h
            public void unlisten(List<String> list, IObjectWrapper iObjectWrapper) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.database.connection.idl.IPersistentConnection");
                    obtain.writeStringList(list);
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    this.f3566a.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public a() {
            attachInterface(this, "com.google.firebase.database.connection.idl.IPersistentConnection");
        }

        public static h asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.firebase.database.connection.idl.IPersistentConnection");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof h)) ? new C0502a(iBinder) : (h) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.firebase.database.connection.idl.IPersistentConnection");
                    setup(parcel.readInt() != 0 ? zzc.CREATOR.createFromParcel(parcel) : null, e.a.a(parcel.readStrongBinder()), IObjectWrapper.zza.zzcd(parcel.readStrongBinder()), i.a.a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.firebase.database.connection.idl.IPersistentConnection");
                    initialize();
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.firebase.database.connection.idl.IPersistentConnection");
                    shutdown();
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.firebase.database.connection.idl.IPersistentConnection");
                    refreshAuthToken();
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface("com.google.firebase.database.connection.idl.IPersistentConnection");
                    listen(parcel.createStringArrayList(), IObjectWrapper.zza.zzcd(parcel.readStrongBinder()), g.a.a(parcel.readStrongBinder()), parcel.readLong(), j.a.a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface("com.google.firebase.database.connection.idl.IPersistentConnection");
                    unlisten(parcel.createStringArrayList(), IObjectWrapper.zza.zzcd(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface("com.google.firebase.database.connection.idl.IPersistentConnection");
                    purgeOutstandingWrites();
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface("com.google.firebase.database.connection.idl.IPersistentConnection");
                    put(parcel.createStringArrayList(), IObjectWrapper.zza.zzcd(parcel.readStrongBinder()), j.a.a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface("com.google.firebase.database.connection.idl.IPersistentConnection");
                    compareAndPut(parcel.createStringArrayList(), IObjectWrapper.zza.zzcd(parcel.readStrongBinder()), parcel.readString(), j.a.a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface("com.google.firebase.database.connection.idl.IPersistentConnection");
                    merge(parcel.createStringArrayList(), IObjectWrapper.zza.zzcd(parcel.readStrongBinder()), j.a.a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface("com.google.firebase.database.connection.idl.IPersistentConnection");
                    onDisconnectPut(parcel.createStringArrayList(), IObjectWrapper.zza.zzcd(parcel.readStrongBinder()), j.a.a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface("com.google.firebase.database.connection.idl.IPersistentConnection");
                    onDisconnectMerge(parcel.createStringArrayList(), IObjectWrapper.zza.zzcd(parcel.readStrongBinder()), j.a.a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface("com.google.firebase.database.connection.idl.IPersistentConnection");
                    onDisconnectCancel(parcel.createStringArrayList(), j.a.a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface("com.google.firebase.database.connection.idl.IPersistentConnection");
                    interrupt(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 15:
                    parcel.enforceInterface("com.google.firebase.database.connection.idl.IPersistentConnection");
                    resume(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 16:
                    parcel.enforceInterface("com.google.firebase.database.connection.idl.IPersistentConnection");
                    boolean isInterrupted = isInterrupted(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(isInterrupted ? 1 : 0);
                    return true;
                case 17:
                    parcel.enforceInterface("com.google.firebase.database.connection.idl.IPersistentConnection");
                    refreshAuthToken2(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.firebase.database.connection.idl.IPersistentConnection");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void compareAndPut(List<String> list, IObjectWrapper iObjectWrapper, String str, j jVar) throws RemoteException;

    void initialize() throws RemoteException;

    void interrupt(String str) throws RemoteException;

    boolean isInterrupted(String str) throws RemoteException;

    void listen(List<String> list, IObjectWrapper iObjectWrapper, g gVar, long j, j jVar) throws RemoteException;

    void merge(List<String> list, IObjectWrapper iObjectWrapper, j jVar) throws RemoteException;

    void onDisconnectCancel(List<String> list, j jVar) throws RemoteException;

    void onDisconnectMerge(List<String> list, IObjectWrapper iObjectWrapper, j jVar) throws RemoteException;

    void onDisconnectPut(List<String> list, IObjectWrapper iObjectWrapper, j jVar) throws RemoteException;

    void purgeOutstandingWrites() throws RemoteException;

    void put(List<String> list, IObjectWrapper iObjectWrapper, j jVar) throws RemoteException;

    void refreshAuthToken() throws RemoteException;

    void refreshAuthToken2(String str) throws RemoteException;

    void resume(String str) throws RemoteException;

    void setup(zzc zzcVar, e eVar, IObjectWrapper iObjectWrapper, i iVar) throws RemoteException;

    void shutdown() throws RemoteException;

    void unlisten(List<String> list, IObjectWrapper iObjectWrapper) throws RemoteException;
}
