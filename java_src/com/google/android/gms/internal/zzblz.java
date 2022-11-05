package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.zzbly;
import com.google.firebase.auth.UserProfileChangeRequest;
/* loaded from: classes2.dex */
public interface zzblz extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzblz {

        /* renamed from: com.google.android.gms.internal.zzblz$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0305zza implements zzblz {
            private IBinder zzrk;

            C0305zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzblz
            public void zza(zzbly zzblyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    obtain.writeStrongBinder(zzblyVar != null ? zzblyVar.asBinder() : null);
                    this.zzrk.transact(16, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzblz
            public void zza(zzbmx zzbmxVar, zzbly zzblyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    if (zzbmxVar != null) {
                        obtain.writeInt(1);
                        zzbmxVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzblyVar != null ? zzblyVar.asBinder() : null);
                    this.zzrk.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzblz
            public void zza(String str, zzbly zzblyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    obtain.writeString(str);
                    obtain.writeStrongBinder(zzblyVar != null ? zzblyVar.asBinder() : null);
                    this.zzrk.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzblz
            public void zza(String str, zzbmx zzbmxVar, zzbly zzblyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    obtain.writeString(str);
                    if (zzbmxVar != null) {
                        obtain.writeInt(1);
                        zzbmxVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzblyVar != null ? zzblyVar.asBinder() : null);
                    this.zzrk.transact(12, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzblz
            public void zza(String str, UserProfileChangeRequest userProfileChangeRequest, zzbly zzblyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    obtain.writeString(str);
                    if (userProfileChangeRequest != null) {
                        obtain.writeInt(1);
                        userProfileChangeRequest.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzblyVar != null ? zzblyVar.asBinder() : null);
                    this.zzrk.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzblz
            public void zza(String str, String str2, zzbly zzblyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeStrongBinder(zzblyVar != null ? zzblyVar.asBinder() : null);
                    this.zzrk.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzblz
            public void zza(String str, String str2, String str3, zzbly zzblyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    obtain.writeStrongBinder(zzblyVar != null ? zzblyVar.asBinder() : null);
                    this.zzrk.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzblz
            public void zzb(String str, zzbly zzblyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    obtain.writeString(str);
                    obtain.writeStrongBinder(zzblyVar != null ? zzblyVar.asBinder() : null);
                    this.zzrk.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzblz
            public void zzb(String str, String str2, zzbly zzblyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeStrongBinder(zzblyVar != null ? zzblyVar.asBinder() : null);
                    this.zzrk.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzblz
            public void zzc(String str, zzbly zzblyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    obtain.writeString(str);
                    obtain.writeStrongBinder(zzblyVar != null ? zzblyVar.asBinder() : null);
                    this.zzrk.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzblz
            public void zzc(String str, String str2, zzbly zzblyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeStrongBinder(zzblyVar != null ? zzblyVar.asBinder() : null);
                    this.zzrk.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzblz
            public void zzd(String str, zzbly zzblyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    obtain.writeString(str);
                    obtain.writeStrongBinder(zzblyVar != null ? zzblyVar.asBinder() : null);
                    this.zzrk.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzblz
            public void zzd(String str, String str2, zzbly zzblyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeStrongBinder(zzblyVar != null ? zzblyVar.asBinder() : null);
                    this.zzrk.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzblz
            public void zze(String str, zzbly zzblyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    obtain.writeString(str);
                    obtain.writeStrongBinder(zzblyVar != null ? zzblyVar.asBinder() : null);
                    this.zzrk.transact(13, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzblz
            public void zze(String str, String str2, zzbly zzblyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeStrongBinder(zzblyVar != null ? zzblyVar.asBinder() : null);
                    this.zzrk.transact(14, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzblz
            public void zzf(String str, zzbly zzblyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    obtain.writeString(str);
                    obtain.writeStrongBinder(zzblyVar != null ? zzblyVar.asBinder() : null);
                    this.zzrk.transact(15, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzblz
            public void zzf(String str, String str2, zzbly zzblyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeStrongBinder(zzblyVar != null ? zzblyVar.asBinder() : null);
                    this.zzrk.transact(21, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzblz
            public void zzg(String str, zzbly zzblyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    obtain.writeString(str);
                    obtain.writeStrongBinder(zzblyVar != null ? zzblyVar.asBinder() : null);
                    this.zzrk.transact(17, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzblz
            public void zzh(String str, zzbly zzblyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    obtain.writeString(str);
                    obtain.writeStrongBinder(zzblyVar != null ? zzblyVar.asBinder() : null);
                    this.zzrk.transact(18, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzblz
            public void zzi(String str, zzbly zzblyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    obtain.writeString(str);
                    obtain.writeStrongBinder(zzblyVar != null ? zzblyVar.asBinder() : null);
                    this.zzrk.transact(19, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzblz
            public void zzj(String str, zzbly zzblyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    obtain.writeString(str);
                    obtain.writeStrongBinder(zzblyVar != null ? zzblyVar.asBinder() : null);
                    this.zzrk.transact(20, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzblz zzfL(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.firebase.auth.api.internal.IFirebaseAuthService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzblz)) ? new C0305zza(iBinder) : (zzblz) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            zzbmx zzbmxVar = null;
            zzbmx zzbmxVar2 = null;
            UserProfileChangeRequest userProfileChangeRequest = null;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    zza(parcel.readString(), zzbly.zza.zzfK(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    zzb(parcel.readString(), zzbly.zza.zzfK(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    if (parcel.readInt() != 0) {
                        zzbmxVar2 = zzbmx.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzbmxVar2, zzbly.zza.zzfK(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    String readString = parcel.readString();
                    if (parcel.readInt() != 0) {
                        userProfileChangeRequest = UserProfileChangeRequest.CREATOR.createFromParcel(parcel);
                    }
                    zza(readString, userProfileChangeRequest, zzbly.zza.zzfK(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    zza(parcel.readString(), parcel.readString(), zzbly.zza.zzfK(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    zzb(parcel.readString(), parcel.readString(), zzbly.zza.zzfK(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    zzc(parcel.readString(), parcel.readString(), zzbly.zza.zzfK(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    zzd(parcel.readString(), parcel.readString(), zzbly.zza.zzfK(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    zzc(parcel.readString(), zzbly.zza.zzfK(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    zzd(parcel.readString(), zzbly.zza.zzfK(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    zza(parcel.readString(), parcel.readString(), parcel.readString(), zzbly.zza.zzfK(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    String readString2 = parcel.readString();
                    if (parcel.readInt() != 0) {
                        zzbmxVar = zzbmx.CREATOR.createFromParcel(parcel);
                    }
                    zza(readString2, zzbmxVar, zzbly.zza.zzfK(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    zze(parcel.readString(), zzbly.zza.zzfK(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    zze(parcel.readString(), parcel.readString(), zzbly.zza.zzfK(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 15:
                    parcel.enforceInterface("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    zzf(parcel.readString(), zzbly.zza.zzfK(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 16:
                    parcel.enforceInterface("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    zza(zzbly.zza.zzfK(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 17:
                    parcel.enforceInterface("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    zzg(parcel.readString(), zzbly.zza.zzfK(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 18:
                    parcel.enforceInterface("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    zzh(parcel.readString(), zzbly.zza.zzfK(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 19:
                    parcel.enforceInterface("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    zzi(parcel.readString(), zzbly.zza.zzfK(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 20:
                    parcel.enforceInterface("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    zzj(parcel.readString(), zzbly.zza.zzfK(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 21:
                    parcel.enforceInterface("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    zzf(parcel.readString(), parcel.readString(), zzbly.zza.zzfK(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(zzbly zzblyVar) throws RemoteException;

    void zza(zzbmx zzbmxVar, zzbly zzblyVar) throws RemoteException;

    void zza(String str, zzbly zzblyVar) throws RemoteException;

    void zza(String str, zzbmx zzbmxVar, zzbly zzblyVar) throws RemoteException;

    void zza(String str, UserProfileChangeRequest userProfileChangeRequest, zzbly zzblyVar) throws RemoteException;

    void zza(String str, String str2, zzbly zzblyVar) throws RemoteException;

    void zza(String str, String str2, String str3, zzbly zzblyVar) throws RemoteException;

    void zzb(String str, zzbly zzblyVar) throws RemoteException;

    void zzb(String str, String str2, zzbly zzblyVar) throws RemoteException;

    void zzc(String str, zzbly zzblyVar) throws RemoteException;

    void zzc(String str, String str2, zzbly zzblyVar) throws RemoteException;

    void zzd(String str, zzbly zzblyVar) throws RemoteException;

    void zzd(String str, String str2, zzbly zzblyVar) throws RemoteException;

    void zze(String str, zzbly zzblyVar) throws RemoteException;

    void zze(String str, String str2, zzbly zzblyVar) throws RemoteException;

    void zzf(String str, zzbly zzblyVar) throws RemoteException;

    void zzf(String str, String str2, zzbly zzblyVar) throws RemoteException;

    void zzg(String str, zzbly zzblyVar) throws RemoteException;

    void zzh(String str, zzbly zzblyVar) throws RemoteException;

    void zzi(String str, zzbly zzblyVar) throws RemoteException;

    void zzj(String str, zzbly zzblyVar) throws RemoteException;
}
