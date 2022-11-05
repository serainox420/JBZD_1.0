package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.cast.framework.CastOptions;
import com.google.android.gms.cast.framework.media.CastMediaOptions;
import com.google.android.gms.cast.framework.media.zzc;
import com.google.android.gms.cast.framework.zzf;
import com.google.android.gms.cast.framework.zzg;
import com.google.android.gms.cast.framework.zzh;
import com.google.android.gms.cast.framework.zzl;
import com.google.android.gms.cast.framework.zzm;
import com.google.android.gms.cast.framework.zzq;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzwz;
import com.google.android.gms.internal.zzxh;
import com.google.android.gms.internal.zzxi;
import java.util.Map;
/* loaded from: classes2.dex */
public interface zzwy extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzwy {

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: com.google.android.gms.internal.zzwy$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static class C0398zza implements zzwy {
            private IBinder zzrk;

            C0398zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzwy
            public com.google.android.gms.cast.framework.media.zzc zza(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3, CastMediaOptions castMediaOptions) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.internal.ICastDynamiteModule");
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    obtain.writeStrongBinder(iObjectWrapper2 != null ? iObjectWrapper2.asBinder() : null);
                    if (iObjectWrapper3 != null) {
                        iBinder = iObjectWrapper3.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    if (castMediaOptions != null) {
                        obtain.writeInt(1);
                        castMediaOptions.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    return zzc.zza.zzbd(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzwy
            public com.google.android.gms.cast.framework.zzg zza(IObjectWrapper iObjectWrapper, CastOptions castOptions, zzwz zzwzVar, Map map) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.internal.ICastDynamiteModule");
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    if (castOptions != null) {
                        obtain.writeInt(1);
                        castOptions.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (zzwzVar != null) {
                        iBinder = zzwzVar.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    obtain.writeMap(map);
                    this.zzrk.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return zzg.zza.zzaP(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzwy
            public com.google.android.gms.cast.framework.zzh zza(CastOptions castOptions, IObjectWrapper iObjectWrapper, com.google.android.gms.cast.framework.zzf zzfVar) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.internal.ICastDynamiteModule");
                    if (castOptions != null) {
                        obtain.writeInt(1);
                        castOptions.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    if (zzfVar != null) {
                        iBinder = zzfVar.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    this.zzrk.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return zzh.zza.zzaQ(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzwy
            public com.google.android.gms.cast.framework.zzl zza(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.internal.ICastDynamiteModule");
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    obtain.writeStrongBinder(iObjectWrapper2 != null ? iObjectWrapper2.asBinder() : null);
                    if (iObjectWrapper3 != null) {
                        iBinder = iObjectWrapper3.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    this.zzrk.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    return zzl.zza.zzaU(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzwy
            public com.google.android.gms.cast.framework.zzm zza(String str, String str2, com.google.android.gms.cast.framework.zzq zzqVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.internal.ICastDynamiteModule");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeStrongBinder(zzqVar != null ? zzqVar.asBinder() : null);
                    this.zzrk.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return zzm.zza.zzaV(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzwy
            public zzxh zza(IObjectWrapper iObjectWrapper, zzxi zzxiVar, int i, int i2, boolean z, long j, int i3, int i4, int i5) throws RemoteException {
                IBinder iBinder = null;
                int i6 = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.internal.ICastDynamiteModule");
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    if (zzxiVar != null) {
                        iBinder = zzxiVar.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    if (z) {
                        i6 = 1;
                    }
                    obtain.writeInt(i6);
                    obtain.writeLong(j);
                    obtain.writeInt(i3);
                    obtain.writeInt(i4);
                    obtain.writeInt(i5);
                    this.zzrk.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                    return zzxh.zza.zzbe(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzwy zzaZ(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.framework.internal.ICastDynamiteModule");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzwy)) ? new C0398zza(iBinder) : (zzwy) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.internal.ICastDynamiteModule");
                    com.google.android.gms.cast.framework.zzg zza = zza(IObjectWrapper.zza.zzcd(parcel.readStrongBinder()), parcel.readInt() != 0 ? CastOptions.CREATOR.createFromParcel(parcel) : null, zzwz.zza.zzba(parcel.readStrongBinder()), parcel.readHashMap(getClass().getClassLoader()));
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(zza != null ? zza.asBinder() : null);
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.internal.ICastDynamiteModule");
                    com.google.android.gms.cast.framework.zzm zza2 = zza(parcel.readString(), parcel.readString(), zzq.zza.zzaY(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(zza2 != null ? zza2.asBinder() : null);
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.internal.ICastDynamiteModule");
                    com.google.android.gms.cast.framework.zzh zza3 = zza(parcel.readInt() != 0 ? CastOptions.CREATOR.createFromParcel(parcel) : null, IObjectWrapper.zza.zzcd(parcel.readStrongBinder()), zzf.zza.zzaO(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(zza3 != null ? zza3.asBinder() : null);
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.internal.ICastDynamiteModule");
                    com.google.android.gms.cast.framework.media.zzc zza4 = zza(IObjectWrapper.zza.zzcd(parcel.readStrongBinder()), IObjectWrapper.zza.zzcd(parcel.readStrongBinder()), IObjectWrapper.zza.zzcd(parcel.readStrongBinder()), parcel.readInt() != 0 ? CastMediaOptions.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(zza4 != null ? zza4.asBinder() : null);
                    return true;
                case 5:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.internal.ICastDynamiteModule");
                    com.google.android.gms.cast.framework.zzl zza5 = zza(IObjectWrapper.zza.zzcd(parcel.readStrongBinder()), IObjectWrapper.zza.zzcd(parcel.readStrongBinder()), IObjectWrapper.zza.zzcd(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(zza5 != null ? zza5.asBinder() : null);
                    return true;
                case 6:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.internal.ICastDynamiteModule");
                    zzxh zza6 = zza(IObjectWrapper.zza.zzcd(parcel.readStrongBinder()), zzxi.zza.zzbf(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt(), parcel.readInt() != 0, parcel.readLong(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(zza6 != null ? zza6.asBinder() : null);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.cast.framework.internal.ICastDynamiteModule");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    com.google.android.gms.cast.framework.media.zzc zza(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3, CastMediaOptions castMediaOptions) throws RemoteException;

    com.google.android.gms.cast.framework.zzg zza(IObjectWrapper iObjectWrapper, CastOptions castOptions, zzwz zzwzVar, Map map) throws RemoteException;

    com.google.android.gms.cast.framework.zzh zza(CastOptions castOptions, IObjectWrapper iObjectWrapper, com.google.android.gms.cast.framework.zzf zzfVar) throws RemoteException;

    com.google.android.gms.cast.framework.zzl zza(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) throws RemoteException;

    com.google.android.gms.cast.framework.zzm zza(String str, String str2, com.google.android.gms.cast.framework.zzq zzqVar) throws RemoteException;

    zzxh zza(IObjectWrapper iObjectWrapper, zzxi zzxiVar, int i, int i2, boolean z, long j, int i3, int i4, int i5) throws RemoteException;
}
