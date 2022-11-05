package com.google.android.gms.nearby.messages.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;
/* loaded from: classes2.dex */
public interface zzm extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzm {

        /* renamed from: com.google.android.gms.nearby.messages.internal.zzm$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0474zza implements zzm {
            private IBinder zzrk;

            C0474zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.nearby.messages.internal.zzm
            public void zzL(List<Update> list) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.messages.internal.IMessageListener");
                    obtain.writeTypedList(list);
                    this.zzrk.transact(4, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.nearby.messages.internal.zzm
            public void zza(zzv zzvVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.messages.internal.IMessageListener");
                    if (zzvVar != null) {
                        obtain.writeInt(1);
                        zzvVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.nearby.messages.internal.zzm
            public void zzb(zzv zzvVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.nearby.messages.internal.IMessageListener");
                    if (zzvVar != null) {
                        obtain.writeInt(1);
                        zzvVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public zza() {
            attachInterface(this, "com.google.android.gms.nearby.messages.internal.IMessageListener");
        }

        public static zzm zzeJ(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.nearby.messages.internal.IMessageListener");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzm)) ? new C0474zza(iBinder) : (zzm) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            zzv zzvVar = null;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.nearby.messages.internal.IMessageListener");
                    if (parcel.readInt() != 0) {
                        zzvVar = zzv.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzvVar);
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.nearby.messages.internal.IMessageListener");
                    if (parcel.readInt() != 0) {
                        zzvVar = zzv.CREATOR.createFromParcel(parcel);
                    }
                    zzb(zzvVar);
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.nearby.messages.internal.IMessageListener");
                    zzL(parcel.createTypedArrayList(Update.CREATOR));
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.nearby.messages.internal.IMessageListener");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zzL(List<Update> list) throws RemoteException;

    void zza(zzv zzvVar) throws RemoteException;

    void zzb(zzv zzvVar) throws RemoteException;
}
