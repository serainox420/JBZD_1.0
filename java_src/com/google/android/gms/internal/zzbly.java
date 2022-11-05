package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
/* loaded from: classes2.dex */
public interface zzbly extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzbly {

        /* renamed from: com.google.android.gms.internal.zzbly$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0304zza implements zzbly {
            private IBinder zzrk;

            C0304zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzbly
            public void onFailure(Status status) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(5, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbly
            public void zzVR() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    this.zzrk.transact(6, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbly
            public void zzVS() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    this.zzrk.transact(7, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbly
            public void zza(zzbmh zzbmhVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    if (zzbmhVar != null) {
                        obtain.writeInt(1);
                        zzbmhVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbly
            public void zza(zzbmn zzbmnVar, zzbmj zzbmjVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    if (zzbmnVar != null) {
                        obtain.writeInt(1);
                        zzbmnVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (zzbmjVar != null) {
                        obtain.writeInt(1);
                        zzbmjVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbly
            public void zza(zzbmt zzbmtVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    if (zzbmtVar != null) {
                        obtain.writeInt(1);
                        zzbmtVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(4, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbly
            public void zzb(zzbmn zzbmnVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    if (zzbmnVar != null) {
                        obtain.writeInt(1);
                        zzbmnVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzbly
            public void zzix(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    obtain.writeString(str);
                    this.zzrk.transact(8, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public zza() {
            attachInterface(this, "com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
        }

        public static zzbly zzfK(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzbly)) ? new C0304zza(iBinder) : (zzbly) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    zzb(parcel.readInt() != 0 ? zzbmn.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    zza(parcel.readInt() != 0 ? zzbmn.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? zzbmj.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    zza(parcel.readInt() != 0 ? zzbmh.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    zza(parcel.readInt() != 0 ? zzbmt.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 5:
                    parcel.enforceInterface("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    onFailure(parcel.readInt() != 0 ? Status.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 6:
                    parcel.enforceInterface("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    zzVR();
                    return true;
                case 7:
                    parcel.enforceInterface("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    zzVS();
                    return true;
                case 8:
                    parcel.enforceInterface("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    zzix(parcel.readString());
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void onFailure(Status status) throws RemoteException;

    void zzVR() throws RemoteException;

    void zzVS() throws RemoteException;

    void zza(zzbmh zzbmhVar) throws RemoteException;

    void zza(zzbmn zzbmnVar, zzbmj zzbmjVar) throws RemoteException;

    void zza(zzbmt zzbmtVar) throws RemoteException;

    void zzb(zzbmn zzbmnVar) throws RemoteException;

    void zzix(String str) throws RemoteException;
}
