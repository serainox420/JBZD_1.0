package com.google.android.gms.tagmanager;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.Map;
/* loaded from: classes2.dex */
public interface zzay extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzay {

        /* renamed from: com.google.android.gms.tagmanager.zzay$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0486zza implements zzay {
            private IBinder zzrk;

            C0486zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.tagmanager.zzay
            public void zzf(String str, Map map) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tagmanager.ICustomEvaluatorProxy");
                    obtain.writeString(str);
                    obtain.writeMap(map);
                    this.zzrk.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.tagmanager.zzay
            public String zzg(String str, Map map) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tagmanager.ICustomEvaluatorProxy");
                    obtain.writeString(str);
                    obtain.writeMap(map);
                    this.zzrk.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public zza() {
            attachInterface(this, "com.google.android.gms.tagmanager.ICustomEvaluatorProxy");
        }

        public static zzay zzfh(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.tagmanager.ICustomEvaluatorProxy");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzay)) ? new C0486zza(iBinder) : (zzay) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.tagmanager.ICustomEvaluatorProxy");
                    zzf(parcel.readString(), parcel.readHashMap(getClass().getClassLoader()));
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.tagmanager.ICustomEvaluatorProxy");
                    String zzg = zzg(parcel.readString(), parcel.readHashMap(getClass().getClassLoader()));
                    parcel2.writeNoException();
                    parcel2.writeString(zzg);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.tagmanager.ICustomEvaluatorProxy");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zzf(String str, Map map) throws RemoteException;

    String zzg(String str, Map map) throws RemoteException;
}
