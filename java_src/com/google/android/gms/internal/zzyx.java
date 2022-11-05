package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.cast.ApplicationMetadata;
/* loaded from: classes2.dex */
public interface zzyx extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzyx {
        public zza() {
            attachInterface(this, "com.google.android.gms.cast.internal.ICastDeviceControllerListener");
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            boolean z = false;
            zzys zzysVar = null;
            ApplicationMetadata applicationMetadata = null;
            zzyl zzylVar = null;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceControllerListener");
                    zzcl(parcel.readInt());
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceControllerListener");
                    if (parcel.readInt() != 0) {
                        applicationMetadata = ApplicationMetadata.CREATOR.createFromParcel(parcel);
                    }
                    String readString = parcel.readString();
                    String readString2 = parcel.readString();
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    zza(applicationMetadata, readString, readString2, z);
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceControllerListener");
                    zzbZ(parcel.readInt());
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceControllerListener");
                    String readString3 = parcel.readString();
                    double readDouble = parcel.readDouble();
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    zza(readString3, readDouble, z);
                    return true;
                case 5:
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceControllerListener");
                    zzA(parcel.readString(), parcel.readString());
                    return true;
                case 6:
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceControllerListener");
                    zzb(parcel.readString(), parcel.createByteArray());
                    return true;
                case 7:
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceControllerListener");
                    zzcn(parcel.readInt());
                    return true;
                case 8:
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceControllerListener");
                    zzcm(parcel.readInt());
                    return true;
                case 9:
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceControllerListener");
                    onApplicationDisconnected(parcel.readInt());
                    return true;
                case 10:
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceControllerListener");
                    zza(parcel.readString(), parcel.readLong(), parcel.readInt());
                    return true;
                case 11:
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceControllerListener");
                    zzc(parcel.readString(), parcel.readLong());
                    return true;
                case 12:
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceControllerListener");
                    if (parcel.readInt() != 0) {
                        zzylVar = zzyl.CREATOR.createFromParcel(parcel);
                    }
                    zzb(zzylVar);
                    return true;
                case 13:
                    parcel.enforceInterface("com.google.android.gms.cast.internal.ICastDeviceControllerListener");
                    if (parcel.readInt() != 0) {
                        zzysVar = zzys.CREATOR.createFromParcel(parcel);
                    }
                    zzb(zzysVar);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.cast.internal.ICastDeviceControllerListener");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void onApplicationDisconnected(int i) throws RemoteException;

    void zzA(String str, String str2) throws RemoteException;

    void zza(ApplicationMetadata applicationMetadata, String str, String str2, boolean z) throws RemoteException;

    void zza(String str, double d, boolean z) throws RemoteException;

    void zza(String str, long j, int i) throws RemoteException;

    void zzb(zzyl zzylVar) throws RemoteException;

    void zzb(zzys zzysVar) throws RemoteException;

    void zzb(String str, byte[] bArr) throws RemoteException;

    void zzbZ(int i) throws RemoteException;

    void zzc(String str, long j) throws RemoteException;

    void zzcl(int i) throws RemoteException;

    void zzcm(int i) throws RemoteException;

    void zzcn(int i) throws RemoteException;
}
