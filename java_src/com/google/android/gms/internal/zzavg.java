package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2.dex */
public interface zzavg extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzavg {

        /* renamed from: com.google.android.gms.internal.zzavg$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0271zza implements zzavg {
            private IBinder zzrk;

            C0271zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzavg
            public void onError(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.bootstrap.internal.IScanListener");
                    obtain.writeInt(i);
                    this.zzrk.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzavg
            public void onScanStopped() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.bootstrap.internal.IScanListener");
                    this.zzrk.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzavg
            public void zza(zzauy zzauyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.bootstrap.internal.IScanListener");
                    if (zzauyVar != null) {
                        obtain.writeInt(1);
                        zzauyVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public static zzavg zzez(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.nearby.bootstrap.internal.IScanListener");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzavg)) ? new C0271zza(iBinder) : (zzavg) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.nearby.bootstrap.internal.IScanListener");
                    zza(parcel.readInt() != 0 ? zzauy.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.nearby.bootstrap.internal.IScanListener");
                    onScanStopped();
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.nearby.bootstrap.internal.IScanListener");
                    onError(parcel.readInt());
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.nearby.bootstrap.internal.IScanListener");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void onError(int i) throws RemoteException;

    void onScanStopped() throws RemoteException;

    void zza(zzauy zzauyVar) throws RemoteException;
}
