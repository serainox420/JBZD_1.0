package com.google.android.gms.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.zzzh;
import com.google.android.gms.internal.zzzj;
/* loaded from: classes2.dex */
public interface zzzi extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzzi {

        /* renamed from: com.google.android.gms.internal.zzzi$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0409zza implements zzzi {
            private IBinder zzrk;

            C0409zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzzi
            public void destroy() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.remote_display.ICastRemoteDisplayService");
                    this.zzrk.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzzi
            public void disconnect() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.remote_display.ICastRemoteDisplayService");
                    this.zzrk.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzzi
            public void zza(zzzh zzzhVar) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.remote_display.ICastRemoteDisplayService");
                    if (zzzhVar != null) {
                        iBinder = zzzhVar.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    this.zzrk.transact(6, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzzi
            public void zza(zzzh zzzhVar, int i) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.remote_display.ICastRemoteDisplayService");
                    if (zzzhVar != null) {
                        iBinder = zzzhVar.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    obtain.writeInt(i);
                    this.zzrk.transact(5, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzzi
            public void zza(zzzh zzzhVar, zzzj zzzjVar, String str, String str2) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.remote_display.ICastRemoteDisplayService");
                    obtain.writeStrongBinder(zzzhVar != null ? zzzhVar.asBinder() : null);
                    if (zzzjVar != null) {
                        iBinder = zzzjVar.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.zzrk.transact(4, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzzi
            public void zza(zzzh zzzhVar, zzzj zzzjVar, String str, String str2, Bundle bundle) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.remote_display.ICastRemoteDisplayService");
                    obtain.writeStrongBinder(zzzhVar != null ? zzzhVar.asBinder() : null);
                    if (zzzjVar != null) {
                        iBinder = zzzjVar.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(7, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public static zzzi zzbk(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.remote_display.ICastRemoteDisplayService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzzi)) ? new C0409zza(iBinder) : (zzzi) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 2:
                    parcel.enforceInterface("com.google.android.gms.cast.remote_display.ICastRemoteDisplayService");
                    destroy();
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.cast.remote_display.ICastRemoteDisplayService");
                    disconnect();
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.cast.remote_display.ICastRemoteDisplayService");
                    zza(zzzh.zza.zzbj(parcel.readStrongBinder()), zzzj.zza.zzbl(parcel.readStrongBinder()), parcel.readString(), parcel.readString());
                    return true;
                case 5:
                    parcel.enforceInterface("com.google.android.gms.cast.remote_display.ICastRemoteDisplayService");
                    zza(zzzh.zza.zzbj(parcel.readStrongBinder()), parcel.readInt());
                    return true;
                case 6:
                    parcel.enforceInterface("com.google.android.gms.cast.remote_display.ICastRemoteDisplayService");
                    zza(zzzh.zza.zzbj(parcel.readStrongBinder()));
                    return true;
                case 7:
                    parcel.enforceInterface("com.google.android.gms.cast.remote_display.ICastRemoteDisplayService");
                    zza(zzzh.zza.zzbj(parcel.readStrongBinder()), zzzj.zza.zzbl(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.cast.remote_display.ICastRemoteDisplayService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void destroy() throws RemoteException;

    void disconnect() throws RemoteException;

    void zza(zzzh zzzhVar) throws RemoteException;

    void zza(zzzh zzzhVar, int i) throws RemoteException;

    void zza(zzzh zzzhVar, zzzj zzzjVar, String str, String str2) throws RemoteException;

    void zza(zzzh zzzhVar, zzzj zzzjVar, String str, String str2, Bundle bundle) throws RemoteException;
}
