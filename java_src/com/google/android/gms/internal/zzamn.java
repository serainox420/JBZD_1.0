package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.internal.zzamd;
import com.google.android.gms.internal.zzame;
import com.google.android.gms.internal.zzamf;
import com.google.android.gms.internal.zzamg;
import com.google.android.gms.internal.zzamh;
import com.google.android.gms.internal.zzami;
import com.google.android.gms.internal.zzamj;
import com.google.android.gms.internal.zzamk;
import com.google.android.gms.internal.zzaml;
import com.google.android.gms.internal.zzamm;
import com.google.android.gms.internal.zzamo;
import com.google.android.gms.internal.zzamp;
/* loaded from: classes2.dex */
public interface zzamn extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzamn {

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: com.google.android.gms.internal.zzamn$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static class C0224zza implements zzamn {
            private IBinder zzrk;

            C0224zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzamn
            public void zzBM() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    this.zzrk.transact(44, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzamn
            public void zza(int i, zzamk zzamkVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    obtain.writeInt(i);
                    obtain.writeStrongBinder(zzamkVar != null ? zzamkVar.asBinder() : null);
                    this.zzrk.transact(30, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzamn
            public void zza(int i, zzamp zzampVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    obtain.writeInt(i);
                    obtain.writeStrongBinder(zzampVar != null ? zzampVar.asBinder() : null);
                    this.zzrk.transact(50, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzamn
            public void zza(DriveId driveId, zzamp zzampVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    if (driveId != null) {
                        obtain.writeInt(1);
                        driveId.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzampVar != null ? zzampVar.asBinder() : null);
                    this.zzrk.transact(48, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzamn
            public void zza(zzalz zzalzVar, zzamp zzampVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    if (zzalzVar != null) {
                        obtain.writeInt(1);
                        zzalzVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzampVar != null ? zzampVar.asBinder() : null);
                    this.zzrk.transact(18, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzamn
            public void zza(zzamb zzambVar, zzamk zzamkVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    if (zzambVar != null) {
                        obtain.writeInt(1);
                        zzambVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzamkVar != null ? zzamkVar.asBinder() : null);
                    this.zzrk.transact(41, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzamn
            public void zza(zzamb zzambVar, zzamp zzampVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    if (zzambVar != null) {
                        obtain.writeInt(1);
                        zzambVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzampVar != null ? zzampVar.asBinder() : null);
                    this.zzrk.transact(19, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzamn
            public void zza(zzamd zzamdVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    obtain.writeStrongBinder(zzamdVar != null ? zzamdVar.asBinder() : null);
                    this.zzrk.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzamn
            public void zza(zzame zzameVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    obtain.writeStrongBinder(zzameVar != null ? zzameVar.asBinder() : null);
                    this.zzrk.transact(32, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzamn
            public void zza(zzamf zzamfVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    obtain.writeStrongBinder(zzamfVar != null ? zzamfVar.asBinder() : null);
                    this.zzrk.transact(31, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzamn
            public void zza(zzami zzamiVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    obtain.writeStrongBinder(zzamiVar != null ? zzamiVar.asBinder() : null);
                    this.zzrk.transact(36, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzamn
            public void zza(zzamj zzamjVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    obtain.writeStrongBinder(zzamjVar != null ? zzamjVar.asBinder() : null);
                    this.zzrk.transact(34, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzamn
            public void zza(zzamk zzamkVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    obtain.writeStrongBinder(zzamkVar != null ? zzamkVar.asBinder() : null);
                    this.zzrk.transact(22, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzamn
            public void zza(zzamm zzammVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    obtain.writeStrongBinder(zzammVar != null ? zzammVar.asBinder() : null);
                    this.zzrk.transact(40, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzamn
            public void zza(zzamp zzampVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    obtain.writeStrongBinder(zzampVar != null ? zzampVar.asBinder() : null);
                    this.zzrk.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzamn
            public void zza(zzamu zzamuVar, zzamo zzamoVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    if (zzamuVar != null) {
                        obtain.writeInt(1);
                        zzamuVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzamoVar != null ? zzamoVar.asBinder() : null);
                    this.zzrk.transact(26, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzamn
            public void zza(String str, int i, int i2, zzamh zzamhVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeStrongBinder(zzamhVar != null ? zzamhVar.asBinder() : null);
                    this.zzrk.transact(17, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzamn
            public void zza(String str, int i, int i2, zzamk zzamkVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeStrongBinder(zzamkVar != null ? zzamkVar.asBinder() : null);
                    this.zzrk.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzamn
            public void zza(String str, int i, DataHolder dataHolder, zzamh zzamhVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    if (dataHolder != null) {
                        obtain.writeInt(1);
                        dataHolder.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzamhVar != null ? zzamhVar.asBinder() : null);
                    this.zzrk.transact(16, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzamn
            public void zza(String str, int i, DataHolder dataHolder, zzamk zzamkVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    if (dataHolder != null) {
                        obtain.writeInt(1);
                        dataHolder.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzamkVar != null ? zzamkVar.asBinder() : null);
                    this.zzrk.transact(15, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzamn
            public void zza(String str, int i, zzamo zzamoVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    obtain.writeStrongBinder(zzamoVar != null ? zzamoVar.asBinder() : null);
                    this.zzrk.transact(46, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzamn
            public void zza(String str, int i, zzamp zzampVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    obtain.writeStrongBinder(zzampVar != null ? zzampVar.asBinder() : null);
                    this.zzrk.transact(28, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzamn
            public void zza(String str, int i, String str2, int i2, zzamk zzamkVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    obtain.writeString(str2);
                    obtain.writeInt(i2);
                    obtain.writeStrongBinder(zzamkVar != null ? zzamkVar.asBinder() : null);
                    this.zzrk.transact(37, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzamn
            public void zza(String str, int i, String str2, zzamk zzamkVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    obtain.writeString(str2);
                    obtain.writeStrongBinder(zzamkVar != null ? zzamkVar.asBinder() : null);
                    this.zzrk.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzamn
            public void zza(String str, DataHolder dataHolder, zzamk zzamkVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    obtain.writeString(str);
                    if (dataHolder != null) {
                        obtain.writeInt(1);
                        dataHolder.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzamkVar != null ? zzamkVar.asBinder() : null);
                    this.zzrk.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzamn
            public void zza(String str, zzamg zzamgVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    obtain.writeString(str);
                    obtain.writeStrongBinder(zzamgVar != null ? zzamgVar.asBinder() : null);
                    this.zzrk.transact(20, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzamn
            public void zza(String str, zzamk zzamkVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    obtain.writeString(str);
                    obtain.writeStrongBinder(zzamkVar != null ? zzamkVar.asBinder() : null);
                    this.zzrk.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzamn
            public void zza(String str, zzaml zzamlVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    obtain.writeString(str);
                    obtain.writeStrongBinder(zzamlVar != null ? zzamlVar.asBinder() : null);
                    this.zzrk.transact(27, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzamn
            public void zza(String str, zzamm zzammVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    obtain.writeString(str);
                    obtain.writeStrongBinder(zzammVar != null ? zzammVar.asBinder() : null);
                    this.zzrk.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzamn
            public void zza(String str, zzamo zzamoVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    obtain.writeString(str);
                    obtain.writeStrongBinder(zzamoVar != null ? zzamoVar.asBinder() : null);
                    this.zzrk.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzamn
            public void zza(String str, zzamp zzampVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    obtain.writeString(str);
                    obtain.writeStrongBinder(zzampVar != null ? zzampVar.asBinder() : null);
                    this.zzrk.transact(38, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzamn
            public void zza(String str, String str2, DataHolder dataHolder, zzamk zzamkVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    if (dataHolder != null) {
                        obtain.writeInt(1);
                        dataHolder.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zzamkVar != null ? zzamkVar.asBinder() : null);
                    this.zzrk.transact(43, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzamn
            public void zza(String str, String str2, zzamg zzamgVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeStrongBinder(zzamgVar != null ? zzamgVar.asBinder() : null);
                    this.zzrk.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzamn
            public void zza(String str, String str2, zzamh zzamhVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeStrongBinder(zzamhVar != null ? zzamhVar.asBinder() : null);
                    this.zzrk.transact(21, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzamn
            public void zza(String str, String str2, zzamk zzamkVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeStrongBinder(zzamkVar != null ? zzamkVar.asBinder() : null);
                    this.zzrk.transact(12, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzamn
            public void zza(boolean z, zzamp zzampVar) throws RemoteException {
                int i = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    if (z) {
                        i = 1;
                    }
                    obtain.writeInt(i);
                    obtain.writeStrongBinder(zzampVar != null ? zzampVar.asBinder() : null);
                    this.zzrk.transact(47, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzamn
            public void zzb(zzamd zzamdVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    obtain.writeStrongBinder(zzamdVar != null ? zzamdVar.asBinder() : null);
                    this.zzrk.transact(33, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzamn
            public void zzb(zzamk zzamkVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    obtain.writeStrongBinder(zzamkVar != null ? zzamkVar.asBinder() : null);
                    this.zzrk.transact(23, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzamn
            public void zzb(zzamm zzammVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    obtain.writeStrongBinder(zzammVar != null ? zzammVar.asBinder() : null);
                    this.zzrk.transact(29, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzamn
            public void zzb(zzamp zzampVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    obtain.writeStrongBinder(zzampVar != null ? zzampVar.asBinder() : null);
                    this.zzrk.transact(35, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzamn
            public void zzb(String str, zzamg zzamgVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    obtain.writeString(str);
                    obtain.writeStrongBinder(zzamgVar != null ? zzamgVar.asBinder() : null);
                    this.zzrk.transact(13, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzamn
            public void zzb(String str, zzamm zzammVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    obtain.writeString(str);
                    obtain.writeStrongBinder(zzammVar != null ? zzammVar.asBinder() : null);
                    this.zzrk.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzamn
            public void zzb(String str, zzamo zzamoVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    obtain.writeString(str);
                    obtain.writeStrongBinder(zzamoVar != null ? zzamoVar.asBinder() : null);
                    this.zzrk.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzamn
            public void zzb(String str, zzamp zzampVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    obtain.writeString(str);
                    obtain.writeStrongBinder(zzampVar != null ? zzampVar.asBinder() : null);
                    this.zzrk.transact(39, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzamn
            public void zzb(String str, String str2, zzamg zzamgVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeStrongBinder(zzamgVar != null ? zzamgVar.asBinder() : null);
                    this.zzrk.transact(42, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzamn
            public void zzc(zzamd zzamdVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    obtain.writeStrongBinder(zzamdVar != null ? zzamdVar.asBinder() : null);
                    this.zzrk.transact(45, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzamn
            public void zzc(zzamp zzampVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    obtain.writeStrongBinder(zzampVar != null ? zzampVar.asBinder() : null);
                    this.zzrk.transact(49, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzamn
            public void zzc(String str, zzamm zzammVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    obtain.writeString(str);
                    obtain.writeStrongBinder(zzammVar != null ? zzammVar.asBinder() : null);
                    this.zzrk.transact(14, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzamn
            public void zzd(zzamd zzamdVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    obtain.writeStrongBinder(zzamdVar != null ? zzamdVar.asBinder() : null);
                    this.zzrk.transact(24, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzamn
            public zzanc zze(String str, String str2, String str3) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    this.zzrk.transact(51, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? zzanc.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzamn
            public void zze(zzamd zzamdVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    obtain.writeStrongBinder(zzamdVar != null ? zzamdVar.asBinder() : null);
                    this.zzrk.transact(25, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzamn zzbZ(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzamn)) ? new C0224zza(iBinder) : (zzamn) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            zzamb zzambVar = null;
            DataHolder dataHolder = null;
            DataHolder dataHolder2 = null;
            DataHolder dataHolder3 = null;
            zzalz zzalzVar = null;
            zzamb zzambVar2 = null;
            zzamu zzamuVar = null;
            DataHolder dataHolder4 = null;
            DriveId driveId = null;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    zza(parcel.readString(), zzamo.zza.zzca(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    zza(zzamd.zza.zzbP(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    zza(zzamp.zza.zzcb(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    zza(parcel.readString(), parcel.readString(), zzamg.zza.zzbS(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    zza(parcel.readString(), zzamm.zza.zzbY(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    String readString = parcel.readString();
                    if (parcel.readInt() != 0) {
                        dataHolder = DataHolder.CREATOR.createFromParcel(parcel);
                    }
                    zza(readString, dataHolder, zzamk.zza.zzbW(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    zza(parcel.readString(), zzamk.zza.zzbW(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    zzb(parcel.readString(), zzamm.zza.zzbY(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    zzb(parcel.readString(), zzamo.zza.zzca(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    zza(parcel.readString(), parcel.readInt(), parcel.readString(), zzamk.zza.zzbW(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    zza(parcel.readString(), parcel.readInt(), parcel.readInt(), zzamk.zza.zzbW(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    zza(parcel.readString(), parcel.readString(), zzamk.zza.zzbW(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    zzb(parcel.readString(), zzamg.zza.zzbS(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    zzc(parcel.readString(), zzamm.zza.zzbY(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 15:
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    String readString2 = parcel.readString();
                    int readInt = parcel.readInt();
                    if (parcel.readInt() != 0) {
                        dataHolder2 = DataHolder.CREATOR.createFromParcel(parcel);
                    }
                    zza(readString2, readInt, dataHolder2, zzamk.zza.zzbW(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 16:
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    String readString3 = parcel.readString();
                    int readInt2 = parcel.readInt();
                    if (parcel.readInt() != 0) {
                        dataHolder3 = DataHolder.CREATOR.createFromParcel(parcel);
                    }
                    zza(readString3, readInt2, dataHolder3, zzamh.zza.zzbT(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 17:
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    zza(parcel.readString(), parcel.readInt(), parcel.readInt(), zzamh.zza.zzbT(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 18:
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    if (parcel.readInt() != 0) {
                        zzalzVar = zzalz.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzalzVar, zzamp.zza.zzcb(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 19:
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    if (parcel.readInt() != 0) {
                        zzambVar = zzamb.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzambVar, zzamp.zza.zzcb(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 20:
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    zza(parcel.readString(), zzamg.zza.zzbS(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 21:
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    zza(parcel.readString(), parcel.readString(), zzamh.zza.zzbT(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 22:
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    zza(zzamk.zza.zzbW(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 23:
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    zzb(zzamk.zza.zzbW(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 24:
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    zzd(zzamd.zza.zzbP(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 25:
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    zze(zzamd.zza.zzbP(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 26:
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    if (parcel.readInt() != 0) {
                        zzamuVar = zzamu.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzamuVar, zzamo.zza.zzca(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 27:
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    zza(parcel.readString(), zzaml.zza.zzbX(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 28:
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    zza(parcel.readString(), parcel.readInt(), zzamp.zza.zzcb(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 29:
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    zzb(zzamm.zza.zzbY(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 30:
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    zza(parcel.readInt(), zzamk.zza.zzbW(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 31:
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    zza(zzamf.zza.zzbR(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 32:
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    zza(zzame.zza.zzbQ(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 33:
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    zzb(zzamd.zza.zzbP(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 34:
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    zza(zzamj.zza.zzbV(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 35:
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    zzb(zzamp.zza.zzcb(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 36:
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    zza(zzami.zza.zzbU(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 37:
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    zza(parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readInt(), zzamk.zza.zzbW(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 38:
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    zza(parcel.readString(), zzamp.zza.zzcb(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 39:
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    zzb(parcel.readString(), zzamp.zza.zzcb(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 40:
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    zza(zzamm.zza.zzbY(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 41:
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    if (parcel.readInt() != 0) {
                        zzambVar2 = zzamb.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzambVar2, zzamk.zza.zzbW(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 42:
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    zzb(parcel.readString(), parcel.readString(), zzamg.zza.zzbS(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 43:
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    String readString4 = parcel.readString();
                    String readString5 = parcel.readString();
                    if (parcel.readInt() != 0) {
                        dataHolder4 = DataHolder.CREATOR.createFromParcel(parcel);
                    }
                    zza(readString4, readString5, dataHolder4, zzamk.zza.zzbW(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 44:
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    zzBM();
                    parcel2.writeNoException();
                    return true;
                case 45:
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    zzc(zzamd.zza.zzbP(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 46:
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    zza(parcel.readString(), parcel.readInt(), zzamo.zza.zzca(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 47:
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    zza(parcel.readInt() != 0, zzamp.zza.zzcb(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 48:
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    if (parcel.readInt() != 0) {
                        driveId = DriveId.CREATOR.createFromParcel(parcel);
                    }
                    zza(driveId, zzamp.zza.zzcb(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 49:
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    zzc(zzamp.zza.zzcb(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 50:
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    zza(parcel.readInt(), zzamp.zza.zzcb(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 51:
                    parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    zzanc zze = zze(parcel.readString(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    if (zze == null) {
                        parcel2.writeInt(0);
                        return true;
                    }
                    parcel2.writeInt(1);
                    zze.writeToParcel(parcel2, 1);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.drive.realtime.internal.IRealtimeService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zzBM() throws RemoteException;

    void zza(int i, zzamk zzamkVar) throws RemoteException;

    void zza(int i, zzamp zzampVar) throws RemoteException;

    void zza(DriveId driveId, zzamp zzampVar) throws RemoteException;

    void zza(zzalz zzalzVar, zzamp zzampVar) throws RemoteException;

    void zza(zzamb zzambVar, zzamk zzamkVar) throws RemoteException;

    void zza(zzamb zzambVar, zzamp zzampVar) throws RemoteException;

    void zza(zzamd zzamdVar) throws RemoteException;

    void zza(zzame zzameVar) throws RemoteException;

    void zza(zzamf zzamfVar) throws RemoteException;

    void zza(zzami zzamiVar) throws RemoteException;

    void zza(zzamj zzamjVar) throws RemoteException;

    void zza(zzamk zzamkVar) throws RemoteException;

    void zza(zzamm zzammVar) throws RemoteException;

    void zza(zzamp zzampVar) throws RemoteException;

    void zza(zzamu zzamuVar, zzamo zzamoVar) throws RemoteException;

    void zza(String str, int i, int i2, zzamh zzamhVar) throws RemoteException;

    void zza(String str, int i, int i2, zzamk zzamkVar) throws RemoteException;

    void zza(String str, int i, DataHolder dataHolder, zzamh zzamhVar) throws RemoteException;

    void zza(String str, int i, DataHolder dataHolder, zzamk zzamkVar) throws RemoteException;

    void zza(String str, int i, zzamo zzamoVar) throws RemoteException;

    void zza(String str, int i, zzamp zzampVar) throws RemoteException;

    void zza(String str, int i, String str2, int i2, zzamk zzamkVar) throws RemoteException;

    void zza(String str, int i, String str2, zzamk zzamkVar) throws RemoteException;

    void zza(String str, DataHolder dataHolder, zzamk zzamkVar) throws RemoteException;

    void zza(String str, zzamg zzamgVar) throws RemoteException;

    void zza(String str, zzamk zzamkVar) throws RemoteException;

    void zza(String str, zzaml zzamlVar) throws RemoteException;

    void zza(String str, zzamm zzammVar) throws RemoteException;

    void zza(String str, zzamo zzamoVar) throws RemoteException;

    void zza(String str, zzamp zzampVar) throws RemoteException;

    void zza(String str, String str2, DataHolder dataHolder, zzamk zzamkVar) throws RemoteException;

    void zza(String str, String str2, zzamg zzamgVar) throws RemoteException;

    void zza(String str, String str2, zzamh zzamhVar) throws RemoteException;

    void zza(String str, String str2, zzamk zzamkVar) throws RemoteException;

    void zza(boolean z, zzamp zzampVar) throws RemoteException;

    void zzb(zzamd zzamdVar) throws RemoteException;

    void zzb(zzamk zzamkVar) throws RemoteException;

    void zzb(zzamm zzammVar) throws RemoteException;

    void zzb(zzamp zzampVar) throws RemoteException;

    void zzb(String str, zzamg zzamgVar) throws RemoteException;

    void zzb(String str, zzamm zzammVar) throws RemoteException;

    void zzb(String str, zzamo zzamoVar) throws RemoteException;

    void zzb(String str, zzamp zzampVar) throws RemoteException;

    void zzb(String str, String str2, zzamg zzamgVar) throws RemoteException;

    void zzc(zzamd zzamdVar) throws RemoteException;

    void zzc(zzamp zzampVar) throws RemoteException;

    void zzc(String str, zzamm zzammVar) throws RemoteException;

    void zzd(zzamd zzamdVar) throws RemoteException;

    zzanc zze(String str, String str2, String str3) throws RemoteException;

    void zze(zzamd zzamdVar) throws RemoteException;
}
