package com.google.android.gms.auth.api.signin.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.internal.zzj;
/* loaded from: classes2.dex */
public interface zzk extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzk {

        /* renamed from: com.google.android.gms.auth.api.signin.internal.zzk$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0155zza implements zzk {
            private IBinder zzrk;

            C0155zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.auth.api.signin.internal.zzk
            public void zza(zzj zzjVar, GoogleSignInOptions googleSignInOptions) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.auth.api.signin.internal.ISignInService");
                    obtain.writeStrongBinder(zzjVar != null ? zzjVar.asBinder() : null);
                    if (googleSignInOptions != null) {
                        obtain.writeInt(1);
                        googleSignInOptions.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(101, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.auth.api.signin.internal.zzk
            public void zzb(zzj zzjVar, GoogleSignInOptions googleSignInOptions) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.auth.api.signin.internal.ISignInService");
                    obtain.writeStrongBinder(zzjVar != null ? zzjVar.asBinder() : null);
                    if (googleSignInOptions != null) {
                        obtain.writeInt(1);
                        googleSignInOptions.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(102, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.auth.api.signin.internal.zzk
            public void zzc(zzj zzjVar, GoogleSignInOptions googleSignInOptions) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.auth.api.signin.internal.ISignInService");
                    obtain.writeStrongBinder(zzjVar != null ? zzjVar.asBinder() : null);
                    if (googleSignInOptions != null) {
                        obtain.writeInt(1);
                        googleSignInOptions.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(103, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzk zzaM(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.signin.internal.ISignInService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzk)) ? new C0155zza(iBinder) : (zzk) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            GoogleSignInOptions googleSignInOptions = null;
            switch (i) {
                case 101:
                    parcel.enforceInterface("com.google.android.gms.auth.api.signin.internal.ISignInService");
                    zzj zzaL = zzj.zza.zzaL(parcel.readStrongBinder());
                    if (parcel.readInt() != 0) {
                        googleSignInOptions = GoogleSignInOptions.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzaL, googleSignInOptions);
                    parcel2.writeNoException();
                    return true;
                case 102:
                    parcel.enforceInterface("com.google.android.gms.auth.api.signin.internal.ISignInService");
                    zzj zzaL2 = zzj.zza.zzaL(parcel.readStrongBinder());
                    if (parcel.readInt() != 0) {
                        googleSignInOptions = GoogleSignInOptions.CREATOR.createFromParcel(parcel);
                    }
                    zzb(zzaL2, googleSignInOptions);
                    parcel2.writeNoException();
                    return true;
                case 103:
                    parcel.enforceInterface("com.google.android.gms.auth.api.signin.internal.ISignInService");
                    zzj zzaL3 = zzj.zza.zzaL(parcel.readStrongBinder());
                    if (parcel.readInt() != 0) {
                        googleSignInOptions = GoogleSignInOptions.CREATOR.createFromParcel(parcel);
                    }
                    zzc(zzaL3, googleSignInOptions);
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.auth.api.signin.internal.ISignInService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(zzj zzjVar, GoogleSignInOptions googleSignInOptions) throws RemoteException;

    void zzb(zzj zzjVar, GoogleSignInOptions googleSignInOptions) throws RemoteException;

    void zzc(zzj zzjVar, GoogleSignInOptions googleSignInOptions) throws RemoteException;
}
