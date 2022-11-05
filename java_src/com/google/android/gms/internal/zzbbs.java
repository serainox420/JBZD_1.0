package com.google.android.gms.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.zzbbr;
/* loaded from: classes2.dex */
public interface zzbbs extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzbbs {

        /* renamed from: com.google.android.gms.internal.zzbbs$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0290zza implements zzbbs {
            private IBinder zzrk;

            C0290zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzbbs
            public void dispatch() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tagmanager.internal.ITagManagerService");
                    this.zzrk.transact(102, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbbs
            public void zzSb() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tagmanager.internal.ITagManagerService");
                    this.zzrk.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbbs
            public void zza(String str, Bundle bundle, String str2, long j, boolean z) throws RemoteException {
                int i = 1;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tagmanager.internal.ITagManagerService");
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeString(str2);
                    obtain.writeLong(j);
                    if (!z) {
                        i = 0;
                    }
                    obtain.writeInt(i);
                    this.zzrk.transact(101, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbbs
            public void zza(String str, String str2, String str3, zzbbr zzbbrVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tagmanager.internal.ITagManagerService");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    obtain.writeStrongBinder(zzbbrVar != null ? zzbbrVar.asBinder() : null);
                    this.zzrk.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbbs
            public void zzr(String str, String str2, String str3) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tagmanager.internal.ITagManagerService");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    this.zzrk.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public zza() {
            attachInterface(this, "com.google.android.gms.tagmanager.internal.ITagManagerService");
        }

        public static zzbbs zzfm(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.tagmanager.internal.ITagManagerService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzbbs)) ? new C0290zza(iBinder) : (zzbbs) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.tagmanager.internal.ITagManagerService");
                    zzr(parcel.readString(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.tagmanager.internal.ITagManagerService");
                    zza(parcel.readString(), parcel.readString(), parcel.readString(), zzbbr.zza.zzfl(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.tagmanager.internal.ITagManagerService");
                    zzSb();
                    parcel2.writeNoException();
                    return true;
                case 101:
                    parcel.enforceInterface("com.google.android.gms.tagmanager.internal.ITagManagerService");
                    zza(parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null, parcel.readString(), parcel.readLong(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 102:
                    parcel.enforceInterface("com.google.android.gms.tagmanager.internal.ITagManagerService");
                    dispatch();
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.tagmanager.internal.ITagManagerService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void dispatch() throws RemoteException;

    void zzSb() throws RemoteException;

    void zza(String str, Bundle bundle, String str2, long j, boolean z) throws RemoteException;

    void zza(String str, String str2, String str3, zzbbr zzbbrVar) throws RemoteException;

    void zzr(String str, String str2, String str3) throws RemoteException;
}
