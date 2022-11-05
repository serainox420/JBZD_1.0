package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2.dex */
public interface zzbbr extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzbbr {

        /* renamed from: com.google.android.gms.internal.zzbbr$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0289zza implements zzbbr {
            private IBinder zzrk;

            C0289zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzbbr
            public void zza(boolean z, String str) throws RemoteException {
                int i = 1;
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tagmanager.internal.ITagManagerLoadContainerCallback");
                    if (!z) {
                        i = 0;
                    }
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    this.zzrk.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public zza() {
            attachInterface(this, "com.google.android.gms.tagmanager.internal.ITagManagerLoadContainerCallback");
        }

        public static zzbbr zzfl(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.tagmanager.internal.ITagManagerLoadContainerCallback");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzbbr)) ? new C0289zza(iBinder) : (zzbbr) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.tagmanager.internal.ITagManagerLoadContainerCallback");
                    zza(parcel.readInt() != 0, parcel.readString());
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.tagmanager.internal.ITagManagerLoadContainerCallback");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(boolean z, String str) throws RemoteException;
}
