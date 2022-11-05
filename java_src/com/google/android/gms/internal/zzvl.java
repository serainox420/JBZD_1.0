package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.credentials.CredentialRequest;
import com.google.android.gms.internal.zzvk;
/* loaded from: classes2.dex */
public interface zzvl extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzvl {

        /* renamed from: com.google.android.gms.internal.zzvl$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0393zza implements zzvl {
            private IBinder zzrk;

            C0393zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzvl
            public void zza(zzvk zzvkVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
                    obtain.writeStrongBinder(zzvkVar != null ? zzvkVar.asBinder() : null);
                    this.zzrk.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzvl
            public void zza(zzvk zzvkVar, CredentialRequest credentialRequest) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
                    obtain.writeStrongBinder(zzvkVar != null ? zzvkVar.asBinder() : null);
                    if (credentialRequest != null) {
                        obtain.writeInt(1);
                        credentialRequest.writeToParcel(obtain, 0);
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

            @Override // com.google.android.gms.internal.zzvl
            public void zza(zzvk zzvkVar, zzvg zzvgVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
                    obtain.writeStrongBinder(zzvkVar != null ? zzvkVar.asBinder() : null);
                    if (zzvgVar != null) {
                        obtain.writeInt(1);
                        zzvgVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzvl
            public void zza(zzvk zzvkVar, zzvi zzviVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
                    obtain.writeStrongBinder(zzvkVar != null ? zzvkVar.asBinder() : null);
                    if (zzviVar != null) {
                        obtain.writeInt(1);
                        zzviVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzvl
            public void zza(zzvk zzvkVar, zzvm zzvmVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
                    obtain.writeStrongBinder(zzvkVar != null ? zzvkVar.asBinder() : null);
                    if (zzvmVar != null) {
                        obtain.writeInt(1);
                        zzvmVar.writeToParcel(obtain, 0);
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

        public static zzvl zzaG(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzvl)) ? new C0393zza(iBinder) : (zzvl) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            zzvi zzviVar = null;
            CredentialRequest credentialRequest = null;
            zzvm zzvmVar = null;
            zzvg zzvgVar = null;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
                    zzvk zzaF = zzvk.zza.zzaF(parcel.readStrongBinder());
                    if (parcel.readInt() != 0) {
                        credentialRequest = CredentialRequest.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzaF, credentialRequest);
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
                    zzvk zzaF2 = zzvk.zza.zzaF(parcel.readStrongBinder());
                    if (parcel.readInt() != 0) {
                        zzvmVar = zzvm.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzaF2, zzvmVar);
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
                    zzvk zzaF3 = zzvk.zza.zzaF(parcel.readStrongBinder());
                    if (parcel.readInt() != 0) {
                        zzvgVar = zzvg.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzaF3, zzvgVar);
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
                    zza(zzvk.zza.zzaF(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
                    zzvk zzaF4 = zzvk.zza.zzaF(parcel.readStrongBinder());
                    if (parcel.readInt() != 0) {
                        zzviVar = zzvi.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzaF4, zzviVar);
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(zzvk zzvkVar) throws RemoteException;

    void zza(zzvk zzvkVar, CredentialRequest credentialRequest) throws RemoteException;

    void zza(zzvk zzvkVar, zzvg zzvgVar) throws RemoteException;

    void zza(zzvk zzvkVar, zzvi zzviVar) throws RemoteException;

    void zza(zzvk zzvkVar, zzvm zzvmVar) throws RemoteException;
}
