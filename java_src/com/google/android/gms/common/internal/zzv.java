package com.google.android.gms.common.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.internal.zzu;
/* loaded from: classes2.dex */
public interface zzv extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzv {

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: com.google.android.gms.common.internal.zzv$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static class C0179zza implements zzv {
            private final IBinder zzrk;

            C0179zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.common.internal.zzv
            public void zza(zzu zzuVar, zzj zzjVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    obtain.writeStrongBinder(zzuVar != null ? zzuVar.asBinder() : null);
                    if (zzjVar != null) {
                        obtain.writeInt(1);
                        zzjVar.writeToParcel(obtain, 0);
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
        }

        public static zzv zzbu(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzv)) ? new C0179zza(iBinder) : (zzv) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            String str;
            String str2;
            IBinder iBinder;
            Bundle bundle;
            String[] strArr;
            String str3;
            if (i > 16777215) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            zzu zzbt = zzu.zza.zzbt(parcel.readStrongBinder());
            if (i == 46) {
                zza(zzbt, parcel.readInt() != 0 ? zzj.CREATOR.createFromParcel(parcel) : null);
            } else if (i == 47) {
                zza(zzbt, parcel.readInt() != 0 ? zzan.CREATOR.createFromParcel(parcel) : null);
            } else {
                int readInt = parcel.readInt();
                String readString = i != 4 ? parcel.readString() : null;
                switch (i) {
                    case 1:
                        str2 = parcel.readString();
                        strArr = parcel.createStringArray();
                        str3 = parcel.readString();
                        if (parcel.readInt() == 0) {
                            str = null;
                            iBinder = null;
                            bundle = null;
                            break;
                        } else {
                            str = null;
                            iBinder = null;
                            bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                            break;
                        }
                    case 2:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                    case 23:
                    case 25:
                    case 27:
                    case 37:
                    case 38:
                    case 41:
                    case 43:
                        if (parcel.readInt() != 0) {
                            str = null;
                            str2 = null;
                            iBinder = null;
                            bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                            strArr = null;
                            str3 = null;
                            break;
                        }
                    case 3:
                    case 4:
                    case 21:
                    case 22:
                    case 24:
                    case 26:
                    case 28:
                    case 29:
                    case 31:
                    case 32:
                    case 33:
                    case 35:
                    case 36:
                    case 39:
                    case 40:
                    case 42:
                    default:
                        str = null;
                        str2 = null;
                        iBinder = null;
                        bundle = null;
                        strArr = null;
                        str3 = null;
                        break;
                    case 9:
                        str3 = parcel.readString();
                        strArr = parcel.createStringArray();
                        str2 = parcel.readString();
                        iBinder = parcel.readStrongBinder();
                        str = parcel.readString();
                        if (parcel.readInt() == 0) {
                            bundle = null;
                            break;
                        } else {
                            bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                            break;
                        }
                    case 10:
                        str3 = parcel.readString();
                        strArr = parcel.createStringArray();
                        str = null;
                        str2 = null;
                        iBinder = null;
                        bundle = null;
                        break;
                    case 19:
                        iBinder = parcel.readStrongBinder();
                        if (parcel.readInt() == 0) {
                            str = null;
                            str2 = null;
                            bundle = null;
                            strArr = null;
                            str3 = null;
                            break;
                        } else {
                            str = null;
                            str2 = null;
                            bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                            strArr = null;
                            str3 = null;
                            break;
                        }
                    case 20:
                    case 30:
                        strArr = parcel.createStringArray();
                        str3 = parcel.readString();
                        if (parcel.readInt() == 0) {
                            str = null;
                            str2 = null;
                            iBinder = null;
                            bundle = null;
                            break;
                        } else {
                            str = null;
                            str2 = null;
                            iBinder = null;
                            bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                            break;
                        }
                    case 34:
                        str3 = parcel.readString();
                        str = null;
                        str2 = null;
                        iBinder = null;
                        bundle = null;
                        strArr = null;
                        break;
                }
                zza(i, zzbt, readInt, readString, str3, strArr, bundle, iBinder, str2, str);
            }
            parcel2.writeNoException();
            return true;
        }

        protected void zza(int i, zzu zzuVar, int i2, String str, String str2, String[] strArr, Bundle bundle, IBinder iBinder, String str3, String str4) throws RemoteException {
            throw new UnsupportedOperationException();
        }

        protected void zza(zzu zzuVar, zzan zzanVar) throws RemoteException {
            throw new UnsupportedOperationException();
        }
    }

    void zza(zzu zzuVar, zzj zzjVar) throws RemoteException;
}
