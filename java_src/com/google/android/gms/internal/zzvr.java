package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.proxy.ProxyRequest;
import com.google.android.gms.internal.zzvq;
/* loaded from: classes2.dex */
public interface zzvr extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzvr {

        /* renamed from: com.google.android.gms.internal.zzvr$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0395zza implements zzvr {
            private IBinder zzrk;

            C0395zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzvr
            public void zza(zzvq zzvqVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.auth.api.internal.IAuthService");
                    obtain.writeStrongBinder(zzvqVar != null ? zzvqVar.asBinder() : null);
                    this.zzrk.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzvr
            public void zza(zzvq zzvqVar, ProxyRequest proxyRequest) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.auth.api.internal.IAuthService");
                    obtain.writeStrongBinder(zzvqVar != null ? zzvqVar.asBinder() : null);
                    if (proxyRequest != null) {
                        obtain.writeInt(1);
                        proxyRequest.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzvr
            public void zza(zzvq zzvqVar, com.google.android.gms.auth.api.proxy.zza zzaVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.auth.api.internal.IAuthService");
                    obtain.writeStrongBinder(zzvqVar != null ? zzvqVar.asBinder() : null);
                    if (zzaVar != null) {
                        obtain.writeInt(1);
                        zzaVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzvr zzaJ(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.internal.IAuthService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzvr)) ? new C0395zza(iBinder) : (zzvr) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            com.google.android.gms.auth.api.proxy.zza zzaVar = null;
            ProxyRequest proxyRequest = null;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.auth.api.internal.IAuthService");
                    zzvq zzaI = zzvq.zza.zzaI(parcel.readStrongBinder());
                    if (parcel.readInt() != 0) {
                        proxyRequest = ProxyRequest.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzaI, proxyRequest);
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.auth.api.internal.IAuthService");
                    zzvq zzaI2 = zzvq.zza.zzaI(parcel.readStrongBinder());
                    if (parcel.readInt() != 0) {
                        zzaVar = com.google.android.gms.auth.api.proxy.zza.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzaI2, zzaVar);
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.auth.api.internal.IAuthService");
                    zza(zzvq.zza.zzaI(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.auth.api.internal.IAuthService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(zzvq zzvqVar) throws RemoteException;

    void zza(zzvq zzvqVar, ProxyRequest proxyRequest) throws RemoteException;

    void zza(zzvq zzvqVar, com.google.android.gms.auth.api.proxy.zza zzaVar) throws RemoteException;
}
