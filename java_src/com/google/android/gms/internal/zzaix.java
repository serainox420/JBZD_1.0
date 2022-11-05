package com.google.android.gms.internal;

import android.content.IntentSender;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.zzaiy;
import com.google.android.gms.internal.zzaiz;
/* loaded from: classes2.dex */
public interface zzaix extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzaix {

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: com.google.android.gms.internal.zzaix$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static class C0210zza implements zzaix {
            private IBinder zzrk;

            C0210zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzaix
            public IntentSender zza(zzahk zzahkVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                    if (zzahkVar != null) {
                        obtain.writeInt(1);
                        zzahkVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (IntentSender) IntentSender.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaix
            public IntentSender zza(zzakm zzakmVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                    if (zzakmVar != null) {
                        obtain.writeInt(1);
                        zzakmVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (IntentSender) IntentSender.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaix
            public zzaig zza(zzakj zzakjVar, zzaiy zzaiyVar) throws RemoteException {
                zzaig zzaigVar = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                    if (zzakjVar != null) {
                        obtain.writeInt(1);
                        zzakjVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzaiyVar != null ? zzaiyVar.asBinder() : null);
                    this.zzrk.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        zzaigVar = zzaig.CREATOR.createFromParcel(obtain2);
                    }
                    return zzaigVar;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaix
            public zzaig zza(zzald zzaldVar, zzaiy zzaiyVar) throws RemoteException {
                zzaig zzaigVar = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                    if (zzaldVar != null) {
                        obtain.writeInt(1);
                        zzaldVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzaiyVar != null ? zzaiyVar.asBinder() : null);
                    this.zzrk.transact(56, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        zzaigVar = zzaig.CREATOR.createFromParcel(obtain2);
                    }
                    return zzaigVar;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaix
            public void zza(com.google.android.gms.drive.zzo zzoVar, zzaiy zzaiyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                    if (zzoVar != null) {
                        obtain.writeInt(1);
                        zzoVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzaiyVar != null ? zzaiyVar.asBinder() : null);
                    this.zzrk.transact(34, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaix
            public void zza(zzago zzagoVar, zzaiz zzaizVar, String str, zzaiy zzaiyVar) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                    if (zzagoVar != null) {
                        obtain.writeInt(1);
                        zzagoVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzaizVar != null ? zzaizVar.asBinder() : null);
                    obtain.writeString(str);
                    if (zzaiyVar != null) {
                        iBinder = zzaiyVar.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    this.zzrk.transact(14, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaix
            public void zza(zzagq zzagqVar, zzaiy zzaiyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                    if (zzagqVar != null) {
                        obtain.writeInt(1);
                        zzagqVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzaiyVar != null ? zzaiyVar.asBinder() : null);
                    this.zzrk.transact(48, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaix
            public void zza(zzags zzagsVar, zzaiy zzaiyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                    if (zzagsVar != null) {
                        obtain.writeInt(1);
                        zzagsVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzaiyVar != null ? zzaiyVar.asBinder() : null);
                    this.zzrk.transact(12, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaix
            public void zza(zzagv zzagvVar, zzaiy zzaiyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                    if (zzagvVar != null) {
                        obtain.writeInt(1);
                        zzagvVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzaiyVar != null ? zzaiyVar.asBinder() : null);
                    this.zzrk.transact(37, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaix
            public void zza(zzagx zzagxVar, zzaiy zzaiyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                    if (zzagxVar != null) {
                        obtain.writeInt(1);
                        zzagxVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzaiyVar != null ? zzaiyVar.asBinder() : null);
                    this.zzrk.transact(55, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaix
            public void zza(zzagz zzagzVar, zzaiy zzaiyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                    if (zzagzVar != null) {
                        obtain.writeInt(1);
                        zzagzVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzaiyVar != null ? zzaiyVar.asBinder() : null);
                    this.zzrk.transact(30, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaix
            public void zza(zzahb zzahbVar, zzaiy zzaiyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                    if (zzahbVar != null) {
                        obtain.writeInt(1);
                        zzahbVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzaiyVar != null ? zzaiyVar.asBinder() : null);
                    this.zzrk.transact(18, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaix
            public void zza(zzahd zzahdVar, zzaiy zzaiyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                    if (zzahdVar != null) {
                        obtain.writeInt(1);
                        zzahdVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzaiyVar != null ? zzaiyVar.asBinder() : null);
                    this.zzrk.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaix
            public void zza(zzahf zzahfVar, zzaiy zzaiyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                    if (zzahfVar != null) {
                        obtain.writeInt(1);
                        zzahfVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzaiyVar != null ? zzaiyVar.asBinder() : null);
                    this.zzrk.transact(53, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaix
            public void zza(zzahh zzahhVar, zzaiy zzaiyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                    if (zzahhVar != null) {
                        obtain.writeInt(1);
                        zzahhVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzaiyVar != null ? zzaiyVar.asBinder() : null);
                    this.zzrk.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaix
            public void zza(zzahm zzahmVar, zzaiy zzaiyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                    if (zzahmVar != null) {
                        obtain.writeInt(1);
                        zzahmVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzaiyVar != null ? zzaiyVar.asBinder() : null);
                    this.zzrk.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaix
            public void zza(zzaho zzahoVar, zzaiy zzaiyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                    if (zzahoVar != null) {
                        obtain.writeInt(1);
                        zzahoVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzaiyVar != null ? zzaiyVar.asBinder() : null);
                    this.zzrk.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaix
            public void zza(zzahr zzahrVar, zzaiy zzaiyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                    if (zzahrVar != null) {
                        obtain.writeInt(1);
                        zzahrVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzaiyVar != null ? zzaiyVar.asBinder() : null);
                    this.zzrk.transact(24, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaix
            public void zza(zzaht zzahtVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                    if (zzahtVar != null) {
                        obtain.writeInt(1);
                        zzahtVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(16, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaix
            public void zza(zzaij zzaijVar, zzaiy zzaiyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                    if (zzaijVar != null) {
                        obtain.writeInt(1);
                        zzaijVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzaiyVar != null ? zzaiyVar.asBinder() : null);
                    this.zzrk.transact(42, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaix
            public void zza(zzain zzainVar, zzaiy zzaiyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                    if (zzainVar != null) {
                        obtain.writeInt(1);
                        zzainVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzaiyVar != null ? zzaiyVar.asBinder() : null);
                    this.zzrk.transact(44, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaix
            public void zza(zzaip zzaipVar, zzaiy zzaiyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                    if (zzaipVar != null) {
                        obtain.writeInt(1);
                        zzaipVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzaiyVar != null ? zzaiyVar.asBinder() : null);
                    this.zzrk.transact(29, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaix
            public void zza(zzair zzairVar, zzaiy zzaiyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                    if (zzairVar != null) {
                        obtain.writeInt(1);
                        zzairVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzaiyVar != null ? zzaiyVar.asBinder() : null);
                    this.zzrk.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaix
            public void zza(zzait zzaitVar, zzaiy zzaiyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                    if (zzaitVar != null) {
                        obtain.writeInt(1);
                        zzaitVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzaiyVar != null ? zzaiyVar.asBinder() : null);
                    this.zzrk.transact(47, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaix
            public void zza(zzaiy zzaiyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                    obtain.writeStrongBinder(zzaiyVar != null ? zzaiyVar.asBinder() : null);
                    this.zzrk.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaix
            public void zza(zzaiz zzaizVar, zzaiy zzaiyVar) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                    obtain.writeStrongBinder(zzaizVar != null ? zzaizVar.asBinder() : null);
                    if (zzaiyVar != null) {
                        iBinder = zzaiyVar.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    this.zzrk.transact(52, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaix
            public void zza(zzajb zzajbVar, zzaiy zzaiyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                    if (zzajbVar != null) {
                        obtain.writeInt(1);
                        zzajbVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzaiyVar != null ? zzaiyVar.asBinder() : null);
                    this.zzrk.transact(13, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaix
            public void zza(zzajd zzajdVar, zzaiy zzaiyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                    if (zzajdVar != null) {
                        obtain.writeInt(1);
                        zzajdVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzaiyVar != null ? zzaiyVar.asBinder() : null);
                    this.zzrk.transact(27, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaix
            public void zza(zzakq zzakqVar, zzaiy zzaiyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                    if (zzakqVar != null) {
                        obtain.writeInt(1);
                        zzakqVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzaiyVar != null ? zzaiyVar.asBinder() : null);
                    this.zzrk.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaix
            public void zza(zzakq zzakqVar, zzaiz zzaizVar, zzaiy zzaiyVar) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                    if (zzakqVar != null) {
                        obtain.writeInt(1);
                        zzakqVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzaizVar != null ? zzaizVar.asBinder() : null);
                    if (zzaiyVar != null) {
                        iBinder = zzaiyVar.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    this.zzrk.transact(51, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaix
            public void zza(zzaks zzaksVar, zzaiz zzaizVar, String str, zzaiy zzaiyVar) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                    if (zzaksVar != null) {
                        obtain.writeInt(1);
                        zzaksVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzaizVar != null ? zzaizVar.asBinder() : null);
                    obtain.writeString(str);
                    if (zzaiyVar != null) {
                        iBinder = zzaiyVar.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    this.zzrk.transact(15, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaix
            public void zza(zzaku zzakuVar, zzaiy zzaiyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                    if (zzakuVar != null) {
                        obtain.writeInt(1);
                        zzakuVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzaiyVar != null ? zzaiyVar.asBinder() : null);
                    this.zzrk.transact(50, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaix
            public void zza(zzakw zzakwVar, zzaiy zzaiyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                    if (zzakwVar != null) {
                        obtain.writeInt(1);
                        zzakwVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzaiyVar != null ? zzaiyVar.asBinder() : null);
                    this.zzrk.transact(36, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaix
            public void zza(zzaky zzakyVar, zzaiy zzaiyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                    if (zzakyVar != null) {
                        obtain.writeInt(1);
                        zzakyVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzaiyVar != null ? zzaiyVar.asBinder() : null);
                    this.zzrk.transact(33, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaix
            public void zza(zzala zzalaVar, zzaiy zzaiyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                    if (zzalaVar != null) {
                        obtain.writeInt(1);
                        zzalaVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzaiyVar != null ? zzaiyVar.asBinder() : null);
                    this.zzrk.transact(28, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaix
            public void zza(zzalh zzalhVar, zzaiy zzaiyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                    if (zzalhVar != null) {
                        obtain.writeInt(1);
                        zzalhVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzaiyVar != null ? zzaiyVar.asBinder() : null);
                    this.zzrk.transact(17, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaix
            public void zza(zzalj zzaljVar, zzaiy zzaiyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                    if (zzaljVar != null) {
                        obtain.writeInt(1);
                        zzaljVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzaiyVar != null ? zzaiyVar.asBinder() : null);
                    this.zzrk.transact(46, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaix
            public void zza(zzall zzallVar, zzaiy zzaiyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                    if (zzallVar != null) {
                        obtain.writeInt(1);
                        zzallVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzaiyVar != null ? zzaiyVar.asBinder() : null);
                    this.zzrk.transact(38, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaix
            public void zza(zzaln zzalnVar, zzaiy zzaiyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                    if (zzalnVar != null) {
                        obtain.writeInt(1);
                        zzalnVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzaiyVar != null ? zzaiyVar.asBinder() : null);
                    this.zzrk.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaix
            public void zza(zzalp zzalpVar, zzaiy zzaiyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                    if (zzalpVar != null) {
                        obtain.writeInt(1);
                        zzalpVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzaiyVar != null ? zzaiyVar.asBinder() : null);
                    this.zzrk.transact(49, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaix
            public void zzb(zzaiy zzaiyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                    obtain.writeStrongBinder(zzaiyVar != null ? zzaiyVar.asBinder() : null);
                    this.zzrk.transact(31, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaix
            public void zzb(zzakq zzakqVar, zzaiy zzaiyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                    if (zzakqVar != null) {
                        obtain.writeInt(1);
                        zzakqVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzaiyVar != null ? zzaiyVar.asBinder() : null);
                    this.zzrk.transact(19, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaix
            public void zzc(zzaiy zzaiyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                    obtain.writeStrongBinder(zzaiyVar != null ? zzaiyVar.asBinder() : null);
                    this.zzrk.transact(32, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaix
            public void zzd(zzaiy zzaiyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                    obtain.writeStrongBinder(zzaiyVar != null ? zzaiyVar.asBinder() : null);
                    this.zzrk.transact(35, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaix
            public void zze(zzaiy zzaiyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                    obtain.writeStrongBinder(zzaiyVar != null ? zzaiyVar.asBinder() : null);
                    this.zzrk.transact(41, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaix
            public void zzf(zzaiy zzaiyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                    obtain.writeStrongBinder(zzaiyVar != null ? zzaiyVar.asBinder() : null);
                    this.zzrk.transact(43, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaix
            public void zzg(zzaiy zzaiyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                    obtain.writeStrongBinder(zzaiyVar != null ? zzaiyVar.asBinder() : null);
                    this.zzrk.transact(54, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaix
            public void zzh(zzaiy zzaiyVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveService");
                    obtain.writeStrongBinder(zzaiyVar != null ? zzaiyVar.asBinder() : null);
                    this.zzrk.transact(57, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzaix zzbL(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.drive.internal.IDriveService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzaix)) ? new C0210zza(iBinder) : (zzaix) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            zzald zzaldVar = null;
            zzair zzairVar = null;
            zzakq zzakqVar = null;
            zzaln zzalnVar = null;
            zzahh zzahhVar = null;
            zzahm zzahmVar = null;
            zzaho zzahoVar = null;
            zzakj zzakjVar = null;
            zzahd zzahdVar = null;
            zzakm zzakmVar = null;
            zzahk zzahkVar = null;
            zzags zzagsVar = null;
            zzajb zzajbVar = null;
            zzago zzagoVar = null;
            zzaks zzaksVar = null;
            zzaht zzahtVar = null;
            zzalh zzalhVar = null;
            zzahb zzahbVar = null;
            zzakq zzakqVar2 = null;
            zzahr zzahrVar = null;
            zzajd zzajdVar = null;
            zzala zzalaVar = null;
            zzaip zzaipVar = null;
            zzagz zzagzVar = null;
            zzaky zzakyVar = null;
            com.google.android.gms.drive.zzo zzoVar = null;
            zzakw zzakwVar = null;
            zzagv zzagvVar = null;
            zzall zzallVar = null;
            zzaij zzaijVar = null;
            zzain zzainVar = null;
            zzalj zzaljVar = null;
            zzait zzaitVar = null;
            zzagq zzagqVar = null;
            zzalp zzalpVar = null;
            zzaku zzakuVar = null;
            zzakq zzakqVar3 = null;
            zzahf zzahfVar = null;
            zzagx zzagxVar = null;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    if (parcel.readInt() != 0) {
                        zzairVar = zzair.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzairVar, zzaiy.zza.zzbM(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    if (parcel.readInt() != 0) {
                        zzakqVar = zzakq.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzakqVar, zzaiy.zza.zzbM(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    if (parcel.readInt() != 0) {
                        zzalnVar = zzaln.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzalnVar, zzaiy.zza.zzbM(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    if (parcel.readInt() != 0) {
                        zzahhVar = zzahh.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzahhVar, zzaiy.zza.zzbM(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    if (parcel.readInt() != 0) {
                        zzahmVar = zzahm.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzahmVar, zzaiy.zza.zzbM(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    if (parcel.readInt() != 0) {
                        zzahoVar = zzaho.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzahoVar, zzaiy.zza.zzbM(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    if (parcel.readInt() != 0) {
                        zzakjVar = zzakj.CREATOR.createFromParcel(parcel);
                    }
                    zzaig zza = zza(zzakjVar, zzaiy.zza.zzbM(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    if (zza != null) {
                        parcel2.writeInt(1);
                        zza.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 8:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    if (parcel.readInt() != 0) {
                        zzahdVar = zzahd.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzahdVar, zzaiy.zza.zzbM(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    zza(zzaiy.zza.zzbM(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    if (parcel.readInt() != 0) {
                        zzakmVar = zzakm.CREATOR.createFromParcel(parcel);
                    }
                    IntentSender zza2 = zza(zzakmVar);
                    parcel2.writeNoException();
                    if (zza2 != null) {
                        parcel2.writeInt(1);
                        zza2.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 11:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    if (parcel.readInt() != 0) {
                        zzahkVar = zzahk.CREATOR.createFromParcel(parcel);
                    }
                    IntentSender zza3 = zza(zzahkVar);
                    parcel2.writeNoException();
                    if (zza3 != null) {
                        parcel2.writeInt(1);
                        zza3.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 12:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    if (parcel.readInt() != 0) {
                        zzagsVar = zzags.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzagsVar, zzaiy.zza.zzbM(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    if (parcel.readInt() != 0) {
                        zzajbVar = zzajb.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzajbVar, zzaiy.zza.zzbM(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    if (parcel.readInt() != 0) {
                        zzagoVar = zzago.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzagoVar, zzaiz.zza.zzbN(parcel.readStrongBinder()), parcel.readString(), zzaiy.zza.zzbM(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 15:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    if (parcel.readInt() != 0) {
                        zzaksVar = zzaks.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzaksVar, zzaiz.zza.zzbN(parcel.readStrongBinder()), parcel.readString(), zzaiy.zza.zzbM(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 16:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    if (parcel.readInt() != 0) {
                        zzahtVar = zzaht.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzahtVar);
                    parcel2.writeNoException();
                    return true;
                case 17:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    if (parcel.readInt() != 0) {
                        zzalhVar = zzalh.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzalhVar, zzaiy.zza.zzbM(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 18:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    if (parcel.readInt() != 0) {
                        zzahbVar = zzahb.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzahbVar, zzaiy.zza.zzbM(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 19:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    if (parcel.readInt() != 0) {
                        zzakqVar2 = zzakq.CREATOR.createFromParcel(parcel);
                    }
                    zzb(zzakqVar2, zzaiy.zza.zzbM(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 24:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    if (parcel.readInt() != 0) {
                        zzahrVar = zzahr.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzahrVar, zzaiy.zza.zzbM(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 27:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    if (parcel.readInt() != 0) {
                        zzajdVar = zzajd.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzajdVar, zzaiy.zza.zzbM(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 28:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    if (parcel.readInt() != 0) {
                        zzalaVar = zzala.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzalaVar, zzaiy.zza.zzbM(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 29:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    if (parcel.readInt() != 0) {
                        zzaipVar = zzaip.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzaipVar, zzaiy.zza.zzbM(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 30:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    if (parcel.readInt() != 0) {
                        zzagzVar = zzagz.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzagzVar, zzaiy.zza.zzbM(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 31:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    zzb(zzaiy.zza.zzbM(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 32:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    zzc(zzaiy.zza.zzbM(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 33:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    if (parcel.readInt() != 0) {
                        zzakyVar = zzaky.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzakyVar, zzaiy.zza.zzbM(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 34:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    if (parcel.readInt() != 0) {
                        zzoVar = com.google.android.gms.drive.zzo.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzoVar, zzaiy.zza.zzbM(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 35:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    zzd(zzaiy.zza.zzbM(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 36:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    if (parcel.readInt() != 0) {
                        zzakwVar = zzakw.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzakwVar, zzaiy.zza.zzbM(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 37:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    if (parcel.readInt() != 0) {
                        zzagvVar = zzagv.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzagvVar, zzaiy.zza.zzbM(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 38:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    if (parcel.readInt() != 0) {
                        zzallVar = zzall.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzallVar, zzaiy.zza.zzbM(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 41:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    zze(zzaiy.zza.zzbM(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 42:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    if (parcel.readInt() != 0) {
                        zzaijVar = zzaij.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzaijVar, zzaiy.zza.zzbM(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 43:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    zzf(zzaiy.zza.zzbM(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 44:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    if (parcel.readInt() != 0) {
                        zzainVar = zzain.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzainVar, zzaiy.zza.zzbM(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 46:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    if (parcel.readInt() != 0) {
                        zzaljVar = zzalj.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzaljVar, zzaiy.zza.zzbM(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 47:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    if (parcel.readInt() != 0) {
                        zzaitVar = zzait.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzaitVar, zzaiy.zza.zzbM(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 48:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    if (parcel.readInt() != 0) {
                        zzagqVar = zzagq.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzagqVar, zzaiy.zza.zzbM(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 49:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    if (parcel.readInt() != 0) {
                        zzalpVar = zzalp.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzalpVar, zzaiy.zza.zzbM(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 50:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    if (parcel.readInt() != 0) {
                        zzakuVar = zzaku.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzakuVar, zzaiy.zza.zzbM(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 51:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    if (parcel.readInt() != 0) {
                        zzakqVar3 = zzakq.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzakqVar3, zzaiz.zza.zzbN(parcel.readStrongBinder()), zzaiy.zza.zzbM(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 52:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    zza(zzaiz.zza.zzbN(parcel.readStrongBinder()), zzaiy.zza.zzbM(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 53:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    if (parcel.readInt() != 0) {
                        zzahfVar = zzahf.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzahfVar, zzaiy.zza.zzbM(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 54:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    zzg(zzaiy.zza.zzbM(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 55:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    if (parcel.readInt() != 0) {
                        zzagxVar = zzagx.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzagxVar, zzaiy.zza.zzbM(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 56:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    if (parcel.readInt() != 0) {
                        zzaldVar = zzald.CREATOR.createFromParcel(parcel);
                    }
                    zzaig zza4 = zza(zzaldVar, zzaiy.zza.zzbM(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    if (zza4 != null) {
                        parcel2.writeInt(1);
                        zza4.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 57:
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                    zzh(zzaiy.zza.zzbM(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.drive.internal.IDriveService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    IntentSender zza(zzahk zzahkVar) throws RemoteException;

    IntentSender zza(zzakm zzakmVar) throws RemoteException;

    zzaig zza(zzakj zzakjVar, zzaiy zzaiyVar) throws RemoteException;

    zzaig zza(zzald zzaldVar, zzaiy zzaiyVar) throws RemoteException;

    void zza(com.google.android.gms.drive.zzo zzoVar, zzaiy zzaiyVar) throws RemoteException;

    void zza(zzago zzagoVar, zzaiz zzaizVar, String str, zzaiy zzaiyVar) throws RemoteException;

    void zza(zzagq zzagqVar, zzaiy zzaiyVar) throws RemoteException;

    void zza(zzags zzagsVar, zzaiy zzaiyVar) throws RemoteException;

    void zza(zzagv zzagvVar, zzaiy zzaiyVar) throws RemoteException;

    void zza(zzagx zzagxVar, zzaiy zzaiyVar) throws RemoteException;

    void zza(zzagz zzagzVar, zzaiy zzaiyVar) throws RemoteException;

    void zza(zzahb zzahbVar, zzaiy zzaiyVar) throws RemoteException;

    void zza(zzahd zzahdVar, zzaiy zzaiyVar) throws RemoteException;

    void zza(zzahf zzahfVar, zzaiy zzaiyVar) throws RemoteException;

    void zza(zzahh zzahhVar, zzaiy zzaiyVar) throws RemoteException;

    void zza(zzahm zzahmVar, zzaiy zzaiyVar) throws RemoteException;

    void zza(zzaho zzahoVar, zzaiy zzaiyVar) throws RemoteException;

    void zza(zzahr zzahrVar, zzaiy zzaiyVar) throws RemoteException;

    void zza(zzaht zzahtVar) throws RemoteException;

    void zza(zzaij zzaijVar, zzaiy zzaiyVar) throws RemoteException;

    void zza(zzain zzainVar, zzaiy zzaiyVar) throws RemoteException;

    void zza(zzaip zzaipVar, zzaiy zzaiyVar) throws RemoteException;

    void zza(zzair zzairVar, zzaiy zzaiyVar) throws RemoteException;

    void zza(zzait zzaitVar, zzaiy zzaiyVar) throws RemoteException;

    void zza(zzaiy zzaiyVar) throws RemoteException;

    void zza(zzaiz zzaizVar, zzaiy zzaiyVar) throws RemoteException;

    void zza(zzajb zzajbVar, zzaiy zzaiyVar) throws RemoteException;

    void zza(zzajd zzajdVar, zzaiy zzaiyVar) throws RemoteException;

    void zza(zzakq zzakqVar, zzaiy zzaiyVar) throws RemoteException;

    void zza(zzakq zzakqVar, zzaiz zzaizVar, zzaiy zzaiyVar) throws RemoteException;

    void zza(zzaks zzaksVar, zzaiz zzaizVar, String str, zzaiy zzaiyVar) throws RemoteException;

    void zza(zzaku zzakuVar, zzaiy zzaiyVar) throws RemoteException;

    void zza(zzakw zzakwVar, zzaiy zzaiyVar) throws RemoteException;

    void zza(zzaky zzakyVar, zzaiy zzaiyVar) throws RemoteException;

    void zza(zzala zzalaVar, zzaiy zzaiyVar) throws RemoteException;

    void zza(zzalh zzalhVar, zzaiy zzaiyVar) throws RemoteException;

    void zza(zzalj zzaljVar, zzaiy zzaiyVar) throws RemoteException;

    void zza(zzall zzallVar, zzaiy zzaiyVar) throws RemoteException;

    void zza(zzaln zzalnVar, zzaiy zzaiyVar) throws RemoteException;

    void zza(zzalp zzalpVar, zzaiy zzaiyVar) throws RemoteException;

    void zzb(zzaiy zzaiyVar) throws RemoteException;

    void zzb(zzakq zzakqVar, zzaiy zzaiyVar) throws RemoteException;

    void zzc(zzaiy zzaiyVar) throws RemoteException;

    void zzd(zzaiy zzaiyVar) throws RemoteException;

    void zze(zzaiy zzaiyVar) throws RemoteException;

    void zzf(zzaiy zzaiyVar) throws RemoteException;

    void zzg(zzaiy zzaiyVar) throws RemoteException;

    void zzh(zzaiy zzaiyVar) throws RemoteException;
}
