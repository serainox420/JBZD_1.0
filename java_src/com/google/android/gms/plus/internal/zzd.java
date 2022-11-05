package com.google.android.gms.plus.internal;

import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.internal.zzs;
import com.google.android.gms.common.server.FavaDiagnosticsEntity;
import com.google.android.gms.internal.zzacz;
import com.google.android.gms.plus.internal.zzb;
import java.util.List;
/* loaded from: classes2.dex */
public interface zzd extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzd {

        /* renamed from: com.google.android.gms.plus.internal.zzd$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0482zza implements zzd {
            private IBinder zzrk;

            C0482zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.plus.internal.zzd
            public String getAccountName() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                    this.zzrk.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.plus.internal.zzd
            public String getAuthCode() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                    this.zzrk.transact(41, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.plus.internal.zzd
            public String getServerClientId() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                    this.zzrk.transact(43, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.plus.internal.zzd
            public void zzOW() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                    this.zzrk.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.plus.internal.zzd
            public boolean zzOX() throws RemoteException {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                    this.zzrk.transact(42, obtain, obtain2, 0);
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

            @Override // com.google.android.gms.plus.internal.zzd
            public zzs zza(zzb zzbVar, int i, int i2, int i3, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                    obtain.writeStrongBinder(zzbVar != null ? zzbVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    obtain.writeString(str);
                    this.zzrk.transact(16, obtain, obtain2, 0);
                    obtain2.readException();
                    return zzs.zza.zzbs(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.plus.internal.zzd
            public void zza(zzacz zzaczVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                    if (zzaczVar != null) {
                        obtain.writeInt(1);
                        zzaczVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.plus.internal.zzd
            public void zza(zzb zzbVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                    obtain.writeStrongBinder(zzbVar != null ? zzbVar.asBinder() : null);
                    this.zzrk.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.plus.internal.zzd
            public void zza(zzb zzbVar, int i, String str, Uri uri, String str2, String str3) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                    obtain.writeStrongBinder(zzbVar != null ? zzbVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    if (uri != null) {
                        obtain.writeInt(1);
                        uri.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    this.zzrk.transact(14, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.plus.internal.zzd
            public void zza(zzb zzbVar, Uri uri, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                    obtain.writeStrongBinder(zzbVar != null ? zzbVar.asBinder() : null);
                    if (uri != null) {
                        obtain.writeInt(1);
                        uri.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.plus.internal.zzd
            public void zza(zzb zzbVar, zzacz zzaczVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                    obtain.writeStrongBinder(zzbVar != null ? zzbVar.asBinder() : null);
                    if (zzaczVar != null) {
                        obtain.writeInt(1);
                        zzaczVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(45, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.plus.internal.zzd
            public void zza(zzb zzbVar, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                    obtain.writeStrongBinder(zzbVar != null ? zzbVar.asBinder() : null);
                    obtain.writeString(str);
                    this.zzrk.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.plus.internal.zzd
            public void zza(zzb zzbVar, String str, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                    obtain.writeStrongBinder(zzbVar != null ? zzbVar.asBinder() : null);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.zzrk.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.plus.internal.zzd
            public void zza(zzb zzbVar, List<String> list) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                    obtain.writeStrongBinder(zzbVar != null ? zzbVar.asBinder() : null);
                    obtain.writeStringList(list);
                    this.zzrk.transact(34, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.plus.internal.zzd
            public void zza(String str, FavaDiagnosticsEntity favaDiagnosticsEntity, FavaDiagnosticsEntity favaDiagnosticsEntity2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                    obtain.writeString(str);
                    if (favaDiagnosticsEntity != null) {
                        obtain.writeInt(1);
                        favaDiagnosticsEntity.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (favaDiagnosticsEntity2 != null) {
                        obtain.writeInt(1);
                        favaDiagnosticsEntity2.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(46, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.plus.internal.zzd
            public void zzb(zzb zzbVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                    obtain.writeStrongBinder(zzbVar != null ? zzbVar.asBinder() : null);
                    this.zzrk.transact(19, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.plus.internal.zzd
            public void zzb(zzb zzbVar, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                    obtain.writeStrongBinder(zzbVar != null ? zzbVar.asBinder() : null);
                    obtain.writeString(str);
                    this.zzrk.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.plus.internal.zzd
            public void zzc(zzb zzbVar, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                    obtain.writeStrongBinder(zzbVar != null ? zzbVar.asBinder() : null);
                    obtain.writeString(str);
                    this.zzrk.transact(18, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.plus.internal.zzd
            public void zzd(zzb zzbVar, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                    obtain.writeStrongBinder(zzbVar != null ? zzbVar.asBinder() : null);
                    obtain.writeString(str);
                    this.zzrk.transact(40, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.plus.internal.zzd
            public void zze(zzb zzbVar, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                    obtain.writeStrongBinder(zzbVar != null ? zzbVar.asBinder() : null);
                    obtain.writeString(str);
                    this.zzrk.transact(44, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.plus.internal.zzd
            public void zzgr(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                    obtain.writeString(str);
                    this.zzrk.transact(17, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzd zzeV(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.plus.internal.IPlusService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzd)) ? new C0482zza(iBinder) : (zzd) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            IBinder iBinder = null;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    zza(zzb.zza.zzeT(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    zza(zzb.zza.zzeT(parcel.readStrongBinder()), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    zzb(zzb.zza.zzeT(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    zza(parcel.readInt() != 0 ? zzacz.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    String accountName = getAccountName();
                    parcel2.writeNoException();
                    parcel2.writeString(accountName);
                    return true;
                case 6:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    zzOW();
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    zza(zzb.zza.zzeT(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    zza(zzb.zza.zzeT(parcel.readStrongBinder()), parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    zza(zzb.zza.zzeT(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null, parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 16:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    zzs zza = zza(zzb.zza.zzeT(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    if (zza != null) {
                        iBinder = zza.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case 17:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    zzgr(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 18:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    zzc(zzb.zza.zzeT(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 19:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    zzb(zzb.zza.zzeT(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 34:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    zza(zzb.zza.zzeT(parcel.readStrongBinder()), parcel.createStringArrayList());
                    parcel2.writeNoException();
                    return true;
                case 40:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    zzd(zzb.zza.zzeT(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 41:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    String authCode = getAuthCode();
                    parcel2.writeNoException();
                    parcel2.writeString(authCode);
                    return true;
                case 42:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    boolean zzOX = zzOX();
                    parcel2.writeNoException();
                    parcel2.writeInt(zzOX ? 1 : 0);
                    return true;
                case 43:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    String serverClientId = getServerClientId();
                    parcel2.writeNoException();
                    parcel2.writeString(serverClientId);
                    return true;
                case 44:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    zze(zzb.zza.zzeT(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 45:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    zza(zzb.zza.zzeT(parcel.readStrongBinder()), parcel.readInt() != 0 ? zzacz.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 46:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    zza(parcel.readString(), parcel.readInt() != 0 ? FavaDiagnosticsEntity.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? FavaDiagnosticsEntity.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.plus.internal.IPlusService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    String getAccountName() throws RemoteException;

    String getAuthCode() throws RemoteException;

    String getServerClientId() throws RemoteException;

    void zzOW() throws RemoteException;

    boolean zzOX() throws RemoteException;

    zzs zza(zzb zzbVar, int i, int i2, int i3, String str) throws RemoteException;

    void zza(zzacz zzaczVar) throws RemoteException;

    void zza(zzb zzbVar) throws RemoteException;

    void zza(zzb zzbVar, int i, String str, Uri uri, String str2, String str3) throws RemoteException;

    void zza(zzb zzbVar, Uri uri, Bundle bundle) throws RemoteException;

    void zza(zzb zzbVar, zzacz zzaczVar) throws RemoteException;

    void zza(zzb zzbVar, String str) throws RemoteException;

    void zza(zzb zzbVar, String str, String str2) throws RemoteException;

    void zza(zzb zzbVar, List<String> list) throws RemoteException;

    void zza(String str, FavaDiagnosticsEntity favaDiagnosticsEntity, FavaDiagnosticsEntity favaDiagnosticsEntity2) throws RemoteException;

    void zzb(zzb zzbVar) throws RemoteException;

    void zzb(zzb zzbVar, String str) throws RemoteException;

    void zzc(zzb zzbVar, String str) throws RemoteException;

    void zzd(zzb zzbVar, String str) throws RemoteException;

    void zze(zzb zzbVar, String str) throws RemoteException;

    void zzgr(String str) throws RemoteException;
}
