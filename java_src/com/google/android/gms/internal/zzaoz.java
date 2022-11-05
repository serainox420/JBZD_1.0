package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.fitness.request.SessionInsertRequest;
import com.google.android.gms.fitness.request.SessionReadRequest;
/* loaded from: classes2.dex */
public interface zzaoz extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzaoz {

        /* renamed from: com.google.android.gms.internal.zzaoz$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0241zza implements zzaoz {
            private IBinder zzrk;

            C0241zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzaoz
            public void zza(SessionInsertRequest sessionInsertRequest) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitSessionsApi");
                    if (sessionInsertRequest != null) {
                        obtain.writeInt(1);
                        sessionInsertRequest.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaoz
            public void zza(SessionReadRequest sessionReadRequest) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitSessionsApi");
                    if (sessionReadRequest != null) {
                        obtain.writeInt(1);
                        sessionReadRequest.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaoz
            public void zza(com.google.android.gms.fitness.request.zzbb zzbbVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitSessionsApi");
                    if (zzbbVar != null) {
                        obtain.writeInt(1);
                        zzbbVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaoz
            public void zza(com.google.android.gms.fitness.request.zzbd zzbdVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitSessionsApi");
                    if (zzbdVar != null) {
                        obtain.writeInt(1);
                        zzbdVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaoz
            public void zza(com.google.android.gms.fitness.request.zzbf zzbfVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitSessionsApi");
                    if (zzbfVar != null) {
                        obtain.writeInt(1);
                        zzbfVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzaoz
            public void zza(com.google.android.gms.fitness.request.zzbh zzbhVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.fitness.internal.IGoogleFitSessionsApi");
                    if (zzbhVar != null) {
                        obtain.writeInt(1);
                        zzbhVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzaoz zzcD(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.fitness.internal.IGoogleFitSessionsApi");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzaoz)) ? new C0241zza(iBinder) : (zzaoz) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            com.google.android.gms.fitness.request.zzbh zzbhVar = null;
            com.google.android.gms.fitness.request.zzbd zzbdVar = null;
            com.google.android.gms.fitness.request.zzbf zzbfVar = null;
            SessionInsertRequest sessionInsertRequest = null;
            SessionReadRequest sessionReadRequest = null;
            com.google.android.gms.fitness.request.zzbb zzbbVar = null;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitSessionsApi");
                    if (parcel.readInt() != 0) {
                        zzbdVar = com.google.android.gms.fitness.request.zzbd.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzbdVar);
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitSessionsApi");
                    if (parcel.readInt() != 0) {
                        zzbfVar = com.google.android.gms.fitness.request.zzbf.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzbfVar);
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitSessionsApi");
                    if (parcel.readInt() != 0) {
                        sessionInsertRequest = SessionInsertRequest.CREATOR.createFromParcel(parcel);
                    }
                    zza(sessionInsertRequest);
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitSessionsApi");
                    if (parcel.readInt() != 0) {
                        sessionReadRequest = SessionReadRequest.CREATOR.createFromParcel(parcel);
                    }
                    zza(sessionReadRequest);
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitSessionsApi");
                    if (parcel.readInt() != 0) {
                        zzbbVar = com.google.android.gms.fitness.request.zzbb.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzbbVar);
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface("com.google.android.gms.fitness.internal.IGoogleFitSessionsApi");
                    if (parcel.readInt() != 0) {
                        zzbhVar = com.google.android.gms.fitness.request.zzbh.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzbhVar);
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.fitness.internal.IGoogleFitSessionsApi");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(SessionInsertRequest sessionInsertRequest) throws RemoteException;

    void zza(SessionReadRequest sessionReadRequest) throws RemoteException;

    void zza(com.google.android.gms.fitness.request.zzbb zzbbVar) throws RemoteException;

    void zza(com.google.android.gms.fitness.request.zzbd zzbdVar) throws RemoteException;

    void zza(com.google.android.gms.fitness.request.zzbf zzbfVar) throws RemoteException;

    void zza(com.google.android.gms.fitness.request.zzbh zzbhVar) throws RemoteException;
}
