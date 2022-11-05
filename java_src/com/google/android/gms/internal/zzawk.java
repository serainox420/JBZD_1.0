package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.cast.CastStatusCodes;
import com.google.android.gms.internal.zzawj;
import com.google.android.gms.location.places.Place;
import com.google.android.gms.nearby.connection.AppMetadata;
/* loaded from: classes2.dex */
public interface zzawk extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzawk {

        /* renamed from: com.google.android.gms.internal.zzawk$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0277zza implements zzawk {
            private IBinder zzrk;

            C0277zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzawk
            public void zzN(long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.internal.connection.INearbyConnectionService");
                    obtain.writeLong(j);
                    this.zzrk.transact(1014, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzawk
            public String zzOi() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.internal.connection.INearbyConnectionService");
                    this.zzrk.transact(1016, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzawk
            public void zza(zzavx zzavxVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.internal.connection.INearbyConnectionService");
                    if (zzavxVar != null) {
                        obtain.writeInt(1);
                        zzavxVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(CastStatusCodes.MESSAGE_TOO_LARGE, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzawk
            public void zza(zzavz zzavzVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.internal.connection.INearbyConnectionService");
                    if (zzavzVar != null) {
                        obtain.writeInt(1);
                        zzavzVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(2011, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzawk
            public void zza(zzawd zzawdVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.internal.connection.INearbyConnectionService");
                    if (zzawdVar != null) {
                        obtain.writeInt(1);
                        zzawdVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(2009, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzawk
            public void zza(zzawj zzawjVar, String str, long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.internal.connection.INearbyConnectionService");
                    obtain.writeStrongBinder(zzawjVar != null ? zzawjVar.asBinder() : null);
                    obtain.writeString(str);
                    obtain.writeLong(j);
                    this.zzrk.transact(Place.TYPE_LOCALITY, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzawk
            public void zza(zzawj zzawjVar, String str, long j, long j2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.internal.connection.INearbyConnectionService");
                    obtain.writeStrongBinder(zzawjVar != null ? zzawjVar.asBinder() : null);
                    obtain.writeString(str);
                    obtain.writeLong(j);
                    obtain.writeLong(j2);
                    this.zzrk.transact(1003, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzawk
            public void zza(zzawj zzawjVar, String str, AppMetadata appMetadata, long j, long j2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.internal.connection.INearbyConnectionService");
                    obtain.writeStrongBinder(zzawjVar != null ? zzawjVar.asBinder() : null);
                    obtain.writeString(str);
                    if (appMetadata != null) {
                        obtain.writeInt(1);
                        appMetadata.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeLong(j);
                    obtain.writeLong(j2);
                    this.zzrk.transact(1001, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzawk
            public void zza(zzawj zzawjVar, String str, String str2, byte[] bArr, long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.internal.connection.INearbyConnectionService");
                    obtain.writeStrongBinder(zzawjVar != null ? zzawjVar.asBinder() : null);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeByteArray(bArr);
                    obtain.writeLong(j);
                    this.zzrk.transact(1007, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzawk
            public void zza(zzawj zzawjVar, String str, byte[] bArr, long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.internal.connection.INearbyConnectionService");
                    obtain.writeStrongBinder(zzawjVar != null ? zzawjVar.asBinder() : null);
                    obtain.writeString(str);
                    obtain.writeByteArray(bArr);
                    obtain.writeLong(j);
                    this.zzrk.transact(1008, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzawk
            public void zza(zzaxl zzaxlVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.internal.connection.INearbyConnectionService");
                    if (zzaxlVar != null) {
                        obtain.writeInt(1);
                        zzaxlVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(CastStatusCodes.MESSAGE_SEND_BUFFER_TOO_FULL, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzawk
            public void zza(zzaxn zzaxnVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.internal.connection.INearbyConnectionService");
                    if (zzaxnVar != null) {
                        obtain.writeInt(1);
                        zzaxnVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(CastStatusCodes.APPLICATION_NOT_RUNNING, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzawk
            public void zza(zzaxp zzaxpVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.internal.connection.INearbyConnectionService");
                    if (zzaxpVar != null) {
                        obtain.writeInt(1);
                        zzaxpVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(2008, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzawk
            public void zza(zzaxr zzaxrVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.internal.connection.INearbyConnectionService");
                    if (zzaxrVar != null) {
                        obtain.writeInt(1);
                        zzaxrVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(2001, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzawk
            public void zza(zzaxt zzaxtVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.internal.connection.INearbyConnectionService");
                    if (zzaxtVar != null) {
                        obtain.writeInt(1);
                        zzaxtVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(CastStatusCodes.NOT_ALLOWED, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzawk
            public void zza(zzaxv zzaxvVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.internal.connection.INearbyConnectionService");
                    if (zzaxvVar != null) {
                        obtain.writeInt(1);
                        zzaxvVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(2002, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzawk
            public void zza(zzaxx zzaxxVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.internal.connection.INearbyConnectionService");
                    if (zzaxxVar != null) {
                        obtain.writeInt(1);
                        zzaxxVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(2010, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzawk
            public void zza(zzaxz zzaxzVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.internal.connection.INearbyConnectionService");
                    if (zzaxzVar != null) {
                        obtain.writeInt(1);
                        zzaxzVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(CastStatusCodes.APPLICATION_NOT_FOUND, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzawk
            public void zza(String[] strArr, byte[] bArr, long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.internal.connection.INearbyConnectionService");
                    obtain.writeStringArray(strArr);
                    obtain.writeByteArray(bArr);
                    obtain.writeLong(j);
                    this.zzrk.transact(Place.TYPE_NATURAL_FEATURE, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzawk
            public void zzau(long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.internal.connection.INearbyConnectionService");
                    obtain.writeLong(j);
                    this.zzrk.transact(1002, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzawk
            public void zzav(long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.internal.connection.INearbyConnectionService");
                    obtain.writeLong(j);
                    this.zzrk.transact(Place.TYPE_POINT_OF_INTEREST, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzawk
            public String zzaw(long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.internal.connection.INearbyConnectionService");
                    obtain.writeLong(j);
                    this.zzrk.transact(Place.TYPE_POSTAL_CODE, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzawk
            public void zzb(String[] strArr, byte[] bArr, long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.internal.connection.INearbyConnectionService");
                    obtain.writeStringArray(strArr);
                    obtain.writeByteArray(bArr);
                    obtain.writeLong(j);
                    this.zzrk.transact(Place.TYPE_NEIGHBORHOOD, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzawk
            public void zzm(String str, long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.internal.connection.INearbyConnectionService");
                    obtain.writeString(str);
                    obtain.writeLong(j);
                    this.zzrk.transact(1004, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzawk
            public void zzn(String str, long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.internal.connection.INearbyConnectionService");
                    obtain.writeString(str);
                    obtain.writeLong(j);
                    this.zzrk.transact(Place.TYPE_POLITICAL, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzawk zzeG(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.nearby.internal.connection.INearbyConnectionService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzawk)) ? new C0277zza(iBinder) : (zzawk) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            AppMetadata appMetadata = null;
            switch (i) {
                case 1001:
                    parcel.enforceInterface("com.google.android.gms.nearby.internal.connection.INearbyConnectionService");
                    zzawj zzeF = zzawj.zza.zzeF(parcel.readStrongBinder());
                    String readString = parcel.readString();
                    if (parcel.readInt() != 0) {
                        appMetadata = AppMetadata.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzeF, readString, appMetadata, parcel.readLong(), parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 1002:
                    parcel.enforceInterface("com.google.android.gms.nearby.internal.connection.INearbyConnectionService");
                    zzau(parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 1003:
                    parcel.enforceInterface("com.google.android.gms.nearby.internal.connection.INearbyConnectionService");
                    zza(zzawj.zza.zzeF(parcel.readStrongBinder()), parcel.readString(), parcel.readLong(), parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 1004:
                    parcel.enforceInterface("com.google.android.gms.nearby.internal.connection.INearbyConnectionService");
                    zzm(parcel.readString(), parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 1007:
                    parcel.enforceInterface("com.google.android.gms.nearby.internal.connection.INearbyConnectionService");
                    zza(zzawj.zza.zzeF(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.createByteArray(), parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 1008:
                    parcel.enforceInterface("com.google.android.gms.nearby.internal.connection.INearbyConnectionService");
                    zza(zzawj.zza.zzeF(parcel.readStrongBinder()), parcel.readString(), parcel.createByteArray(), parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case Place.TYPE_LOCALITY /* 1009 */:
                    parcel.enforceInterface("com.google.android.gms.nearby.internal.connection.INearbyConnectionService");
                    zza(zzawj.zza.zzeF(parcel.readStrongBinder()), parcel.readString(), parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case Place.TYPE_NATURAL_FEATURE /* 1010 */:
                    parcel.enforceInterface("com.google.android.gms.nearby.internal.connection.INearbyConnectionService");
                    zza(parcel.createStringArray(), parcel.createByteArray(), parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case Place.TYPE_NEIGHBORHOOD /* 1011 */:
                    parcel.enforceInterface("com.google.android.gms.nearby.internal.connection.INearbyConnectionService");
                    zzb(parcel.createStringArray(), parcel.createByteArray(), parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case Place.TYPE_POLITICAL /* 1012 */:
                    parcel.enforceInterface("com.google.android.gms.nearby.internal.connection.INearbyConnectionService");
                    zzn(parcel.readString(), parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case Place.TYPE_POINT_OF_INTEREST /* 1013 */:
                    parcel.enforceInterface("com.google.android.gms.nearby.internal.connection.INearbyConnectionService");
                    zzav(parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 1014:
                    parcel.enforceInterface("com.google.android.gms.nearby.internal.connection.INearbyConnectionService");
                    zzN(parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case Place.TYPE_POSTAL_CODE /* 1015 */:
                    parcel.enforceInterface("com.google.android.gms.nearby.internal.connection.INearbyConnectionService");
                    String zzaw = zzaw(parcel.readLong());
                    parcel2.writeNoException();
                    parcel2.writeString(zzaw);
                    return true;
                case 1016:
                    parcel.enforceInterface("com.google.android.gms.nearby.internal.connection.INearbyConnectionService");
                    String zzOi = zzOi();
                    parcel2.writeNoException();
                    parcel2.writeString(zzOi);
                    return true;
                case 2001:
                    parcel.enforceInterface("com.google.android.gms.nearby.internal.connection.INearbyConnectionService");
                    zza(parcel.readInt() != 0 ? zzaxr.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 2002:
                    parcel.enforceInterface("com.google.android.gms.nearby.internal.connection.INearbyConnectionService");
                    zza(parcel.readInt() != 0 ? zzaxv.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case CastStatusCodes.NOT_ALLOWED /* 2003 */:
                    parcel.enforceInterface("com.google.android.gms.nearby.internal.connection.INearbyConnectionService");
                    zza(parcel.readInt() != 0 ? zzaxt.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case CastStatusCodes.APPLICATION_NOT_FOUND /* 2004 */:
                    parcel.enforceInterface("com.google.android.gms.nearby.internal.connection.INearbyConnectionService");
                    zza(parcel.readInt() != 0 ? zzaxz.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case CastStatusCodes.APPLICATION_NOT_RUNNING /* 2005 */:
                    parcel.enforceInterface("com.google.android.gms.nearby.internal.connection.INearbyConnectionService");
                    zza(parcel.readInt() != 0 ? zzaxn.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case CastStatusCodes.MESSAGE_TOO_LARGE /* 2006 */:
                    parcel.enforceInterface("com.google.android.gms.nearby.internal.connection.INearbyConnectionService");
                    zza(parcel.readInt() != 0 ? zzavx.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case CastStatusCodes.MESSAGE_SEND_BUFFER_TOO_FULL /* 2007 */:
                    parcel.enforceInterface("com.google.android.gms.nearby.internal.connection.INearbyConnectionService");
                    zza(parcel.readInt() != 0 ? zzaxl.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 2008:
                    parcel.enforceInterface("com.google.android.gms.nearby.internal.connection.INearbyConnectionService");
                    zza(parcel.readInt() != 0 ? zzaxp.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 2009:
                    parcel.enforceInterface("com.google.android.gms.nearby.internal.connection.INearbyConnectionService");
                    zza(parcel.readInt() != 0 ? zzawd.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 2010:
                    parcel.enforceInterface("com.google.android.gms.nearby.internal.connection.INearbyConnectionService");
                    zza(parcel.readInt() != 0 ? zzaxx.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 2011:
                    parcel.enforceInterface("com.google.android.gms.nearby.internal.connection.INearbyConnectionService");
                    zza(parcel.readInt() != 0 ? zzavz.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.nearby.internal.connection.INearbyConnectionService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zzN(long j) throws RemoteException;

    String zzOi() throws RemoteException;

    void zza(zzavx zzavxVar) throws RemoteException;

    void zza(zzavz zzavzVar) throws RemoteException;

    void zza(zzawd zzawdVar) throws RemoteException;

    void zza(zzawj zzawjVar, String str, long j) throws RemoteException;

    void zza(zzawj zzawjVar, String str, long j, long j2) throws RemoteException;

    void zza(zzawj zzawjVar, String str, AppMetadata appMetadata, long j, long j2) throws RemoteException;

    void zza(zzawj zzawjVar, String str, String str2, byte[] bArr, long j) throws RemoteException;

    void zza(zzawj zzawjVar, String str, byte[] bArr, long j) throws RemoteException;

    void zza(zzaxl zzaxlVar) throws RemoteException;

    void zza(zzaxn zzaxnVar) throws RemoteException;

    void zza(zzaxp zzaxpVar) throws RemoteException;

    void zza(zzaxr zzaxrVar) throws RemoteException;

    void zza(zzaxt zzaxtVar) throws RemoteException;

    void zza(zzaxv zzaxvVar) throws RemoteException;

    void zza(zzaxx zzaxxVar) throws RemoteException;

    void zza(zzaxz zzaxzVar) throws RemoteException;

    void zza(String[] strArr, byte[] bArr, long j) throws RemoteException;

    void zzau(long j) throws RemoteException;

    void zzav(long j) throws RemoteException;

    String zzaw(long j) throws RemoteException;

    void zzb(String[] strArr, byte[] bArr, long j) throws RemoteException;

    void zzm(String str, long j) throws RemoteException;

    void zzn(String str, long j) throws RemoteException;
}
