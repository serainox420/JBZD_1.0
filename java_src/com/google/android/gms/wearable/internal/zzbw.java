package com.google.android.gms.wearable.internal;

import android.net.Uri;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.google.android.gms.wearable.Asset;
import com.google.android.gms.wearable.ConnectionConfiguration;
import com.google.android.gms.wearable.PutDataRequest;
import com.google.android.gms.wearable.internal.zzbt;
import com.google.android.gms.wearable.internal.zzbu;
/* loaded from: classes2.dex */
public interface zzbw extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzbw {

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: com.google.android.gms.wearable.internal.zzbw$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static class C0495zza implements zzbw {
            private IBinder zzrk;

            C0495zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.wearable.internal.zzbw
            public void zza(zzbu zzbuVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    obtain.writeStrongBinder(zzbuVar != null ? zzbuVar.asBinder() : null);
                    this.zzrk.transact(22, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbw
            public void zza(zzbu zzbuVar, byte b) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    obtain.writeStrongBinder(zzbuVar != null ? zzbuVar.asBinder() : null);
                    obtain.writeByte(b);
                    this.zzrk.transact(53, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbw
            public void zza(zzbu zzbuVar, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    obtain.writeStrongBinder(zzbuVar != null ? zzbuVar.asBinder() : null);
                    obtain.writeInt(i);
                    this.zzrk.transact(43, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbw
            public void zza(zzbu zzbuVar, Uri uri) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    obtain.writeStrongBinder(zzbuVar != null ? zzbuVar.asBinder() : null);
                    if (uri != null) {
                        obtain.writeInt(1);
                        uri.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbw
            public void zza(zzbu zzbuVar, Uri uri, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    obtain.writeStrongBinder(zzbuVar != null ? zzbuVar.asBinder() : null);
                    if (uri != null) {
                        obtain.writeInt(1);
                        uri.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(i);
                    this.zzrk.transact(40, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbw
            public void zza(zzbu zzbuVar, Asset asset) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    obtain.writeStrongBinder(zzbuVar != null ? zzbuVar.asBinder() : null);
                    if (asset != null) {
                        obtain.writeInt(1);
                        asset.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(13, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbw
            public void zza(zzbu zzbuVar, ConnectionConfiguration connectionConfiguration) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    obtain.writeStrongBinder(zzbuVar != null ? zzbuVar.asBinder() : null);
                    if (connectionConfiguration != null) {
                        obtain.writeInt(1);
                        connectionConfiguration.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(20, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbw
            public void zza(zzbu zzbuVar, PutDataRequest putDataRequest) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    obtain.writeStrongBinder(zzbuVar != null ? zzbuVar.asBinder() : null);
                    if (putDataRequest != null) {
                        obtain.writeInt(1);
                        putDataRequest.writeToParcel(obtain, 0);
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

            @Override // com.google.android.gms.wearable.internal.zzbw
            public void zza(zzbu zzbuVar, zzbt zzbtVar, String str) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    obtain.writeStrongBinder(zzbuVar != null ? zzbuVar.asBinder() : null);
                    if (zzbtVar != null) {
                        iBinder = zzbtVar.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    obtain.writeString(str);
                    this.zzrk.transact(34, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbw
            public void zza(zzbu zzbuVar, zzc zzcVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    obtain.writeStrongBinder(zzbuVar != null ? zzbuVar.asBinder() : null);
                    if (zzcVar != null) {
                        obtain.writeInt(1);
                        zzcVar.writeToParcel(obtain, 0);
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

            @Override // com.google.android.gms.wearable.internal.zzbw
            public void zza(zzbu zzbuVar, zzck zzckVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    obtain.writeStrongBinder(zzbuVar != null ? zzbuVar.asBinder() : null);
                    if (zzckVar != null) {
                        obtain.writeInt(1);
                        zzckVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(17, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbw
            public void zza(zzbu zzbuVar, zzk zzkVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    obtain.writeStrongBinder(zzbuVar != null ? zzbuVar.asBinder() : null);
                    if (zzkVar != null) {
                        obtain.writeInt(1);
                        zzkVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(27, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbw
            public void zza(zzbu zzbuVar, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    obtain.writeStrongBinder(zzbuVar != null ? zzbuVar.asBinder() : null);
                    obtain.writeString(str);
                    this.zzrk.transact(21, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbw
            public void zza(zzbu zzbuVar, String str, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    obtain.writeStrongBinder(zzbuVar != null ? zzbuVar.asBinder() : null);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    this.zzrk.transact(42, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbw
            public void zza(zzbu zzbuVar, String str, ParcelFileDescriptor parcelFileDescriptor) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    obtain.writeStrongBinder(zzbuVar != null ? zzbuVar.asBinder() : null);
                    obtain.writeString(str);
                    if (parcelFileDescriptor != null) {
                        obtain.writeInt(1);
                        parcelFileDescriptor.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(38, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbw
            public void zza(zzbu zzbuVar, String str, ParcelFileDescriptor parcelFileDescriptor, long j, long j2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    obtain.writeStrongBinder(zzbuVar != null ? zzbuVar.asBinder() : null);
                    obtain.writeString(str);
                    if (parcelFileDescriptor != null) {
                        obtain.writeInt(1);
                        parcelFileDescriptor.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeLong(j);
                    obtain.writeLong(j2);
                    this.zzrk.transact(39, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbw
            public void zza(zzbu zzbuVar, String str, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    obtain.writeStrongBinder(zzbuVar != null ? zzbuVar.asBinder() : null);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.zzrk.transact(31, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbw
            public void zza(zzbu zzbuVar, String str, String str2, byte[] bArr) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    obtain.writeStrongBinder(zzbuVar != null ? zzbuVar.asBinder() : null);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeByteArray(bArr);
                    this.zzrk.transact(12, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbw
            public void zza(zzbu zzbuVar, boolean z) throws RemoteException {
                int i = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    obtain.writeStrongBinder(zzbuVar != null ? zzbuVar.asBinder() : null);
                    if (z) {
                        i = 1;
                    }
                    obtain.writeInt(i);
                    this.zzrk.transact(48, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbw
            public void zzb(zzbu zzbuVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    obtain.writeStrongBinder(zzbuVar != null ? zzbuVar.asBinder() : null);
                    this.zzrk.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbw
            public void zzb(zzbu zzbuVar, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    obtain.writeStrongBinder(zzbuVar != null ? zzbuVar.asBinder() : null);
                    obtain.writeInt(i);
                    this.zzrk.transact(28, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbw
            public void zzb(zzbu zzbuVar, Uri uri) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    obtain.writeStrongBinder(zzbuVar != null ? zzbuVar.asBinder() : null);
                    if (uri != null) {
                        obtain.writeInt(1);
                        uri.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbw
            public void zzb(zzbu zzbuVar, Uri uri, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    obtain.writeStrongBinder(zzbuVar != null ? zzbuVar.asBinder() : null);
                    if (uri != null) {
                        obtain.writeInt(1);
                        uri.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(i);
                    this.zzrk.transact(41, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbw
            public void zzb(zzbu zzbuVar, ConnectionConfiguration connectionConfiguration) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    obtain.writeStrongBinder(zzbuVar != null ? zzbuVar.asBinder() : null);
                    if (connectionConfiguration != null) {
                        obtain.writeInt(1);
                        connectionConfiguration.writeToParcel(obtain, 0);
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

            @Override // com.google.android.gms.wearable.internal.zzbw
            public void zzb(zzbu zzbuVar, zzbt zzbtVar, String str) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    obtain.writeStrongBinder(zzbuVar != null ? zzbuVar.asBinder() : null);
                    if (zzbtVar != null) {
                        iBinder = zzbtVar.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    obtain.writeString(str);
                    this.zzrk.transact(35, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbw
            public void zzb(zzbu zzbuVar, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    obtain.writeStrongBinder(zzbuVar != null ? zzbuVar.asBinder() : null);
                    obtain.writeString(str);
                    this.zzrk.transact(23, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbw
            public void zzb(zzbu zzbuVar, String str, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    obtain.writeStrongBinder(zzbuVar != null ? zzbuVar.asBinder() : null);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    this.zzrk.transact(33, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbw
            public void zzb(zzbu zzbuVar, boolean z) throws RemoteException {
                int i = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    obtain.writeStrongBinder(zzbuVar != null ? zzbuVar.asBinder() : null);
                    if (z) {
                        i = 1;
                    }
                    obtain.writeInt(i);
                    this.zzrk.transact(50, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbw
            public void zzc(zzbu zzbuVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    obtain.writeStrongBinder(zzbuVar != null ? zzbuVar.asBinder() : null);
                    this.zzrk.transact(14, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbw
            public void zzc(zzbu zzbuVar, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    obtain.writeStrongBinder(zzbuVar != null ? zzbuVar.asBinder() : null);
                    obtain.writeInt(i);
                    this.zzrk.transact(29, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbw
            public void zzc(zzbu zzbuVar, Uri uri) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    obtain.writeStrongBinder(zzbuVar != null ? zzbuVar.asBinder() : null);
                    if (uri != null) {
                        obtain.writeInt(1);
                        uri.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrk.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbw
            public void zzc(zzbu zzbuVar, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    obtain.writeStrongBinder(zzbuVar != null ? zzbuVar.asBinder() : null);
                    obtain.writeString(str);
                    this.zzrk.transact(24, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbw
            public void zzd(zzbu zzbuVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    obtain.writeStrongBinder(zzbuVar != null ? zzbuVar.asBinder() : null);
                    this.zzrk.transact(15, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbw
            public void zzd(zzbu zzbuVar, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    obtain.writeStrongBinder(zzbuVar != null ? zzbuVar.asBinder() : null);
                    obtain.writeString(str);
                    this.zzrk.transact(46, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbw
            public void zze(zzbu zzbuVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    obtain.writeStrongBinder(zzbuVar != null ? zzbuVar.asBinder() : null);
                    this.zzrk.transact(18, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbw
            public void zze(zzbu zzbuVar, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    obtain.writeStrongBinder(zzbuVar != null ? zzbuVar.asBinder() : null);
                    obtain.writeString(str);
                    this.zzrk.transact(47, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbw
            public void zzf(zzbu zzbuVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    obtain.writeStrongBinder(zzbuVar != null ? zzbuVar.asBinder() : null);
                    this.zzrk.transact(19, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbw
            public void zzf(zzbu zzbuVar, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    obtain.writeStrongBinder(zzbuVar != null ? zzbuVar.asBinder() : null);
                    obtain.writeString(str);
                    this.zzrk.transact(32, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbw
            public void zzg(zzbu zzbuVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    obtain.writeStrongBinder(zzbuVar != null ? zzbuVar.asBinder() : null);
                    this.zzrk.transact(25, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbw
            public void zzh(zzbu zzbuVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    obtain.writeStrongBinder(zzbuVar != null ? zzbuVar.asBinder() : null);
                    this.zzrk.transact(26, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbw
            public void zzi(zzbu zzbuVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    obtain.writeStrongBinder(zzbuVar != null ? zzbuVar.asBinder() : null);
                    this.zzrk.transact(30, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbw
            public void zzj(zzbu zzbuVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    obtain.writeStrongBinder(zzbuVar != null ? zzbuVar.asBinder() : null);
                    this.zzrk.transact(37, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbw
            public void zzk(zzbu zzbuVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    obtain.writeStrongBinder(zzbuVar != null ? zzbuVar.asBinder() : null);
                    this.zzrk.transact(49, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbw
            public void zzl(zzbu zzbuVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    obtain.writeStrongBinder(zzbuVar != null ? zzbuVar.asBinder() : null);
                    this.zzrk.transact(51, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbw
            public void zzm(zzbu zzbuVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    obtain.writeStrongBinder(zzbuVar != null ? zzbuVar.asBinder() : null);
                    this.zzrk.transact(52, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbw
            public void zzn(zzbu zzbuVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    obtain.writeStrongBinder(zzbuVar != null ? zzbuVar.asBinder() : null);
                    this.zzrk.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbw
            public void zzo(zzbu zzbuVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    obtain.writeStrongBinder(zzbuVar != null ? zzbuVar.asBinder() : null);
                    this.zzrk.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.wearable.internal.zzbw
            public void zzp(zzbu zzbuVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
                    obtain.writeStrongBinder(zzbuVar != null ? zzbuVar.asBinder() : null);
                    this.zzrk.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzbw zzfD(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.wearable.internal.IWearableService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzbw)) ? new C0495zza(iBinder) : (zzbw) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            boolean z = false;
            ConnectionConfiguration connectionConfiguration = null;
            ConnectionConfiguration connectionConfiguration2 = null;
            PutDataRequest putDataRequest = null;
            Uri uri = null;
            Uri uri2 = null;
            Uri uri3 = null;
            Uri uri4 = null;
            Uri uri5 = null;
            Asset asset = null;
            zzc zzcVar = null;
            zzck zzckVar = null;
            zzk zzkVar = null;
            ParcelFileDescriptor parcelFileDescriptor = null;
            switch (i) {
                case 2:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    zzbu zzfB = zzbu.zza.zzfB(parcel.readStrongBinder());
                    if (parcel.readInt() != 0) {
                        connectionConfiguration = ConnectionConfiguration.CREATOR.createFromParcel(parcel);
                    }
                    zzb(zzfB, connectionConfiguration);
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    zzn(zzbu.zza.zzfB(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    zzo(zzbu.zza.zzfB(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    zzp(zzbu.zza.zzfB(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    zzbu zzfB2 = zzbu.zza.zzfB(parcel.readStrongBinder());
                    if (parcel.readInt() != 0) {
                        putDataRequest = PutDataRequest.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzfB2, putDataRequest);
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    zzbu zzfB3 = zzbu.zza.zzfB(parcel.readStrongBinder());
                    if (parcel.readInt() != 0) {
                        uri = (Uri) Uri.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzfB3, uri);
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    zzb(zzbu.zza.zzfB(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    zzbu zzfB4 = zzbu.zza.zzfB(parcel.readStrongBinder());
                    if (parcel.readInt() != 0) {
                        uri2 = (Uri) Uri.CREATOR.createFromParcel(parcel);
                    }
                    zzb(zzfB4, uri2);
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    zzbu zzfB5 = zzbu.zza.zzfB(parcel.readStrongBinder());
                    if (parcel.readInt() != 0) {
                        uri4 = (Uri) Uri.CREATOR.createFromParcel(parcel);
                    }
                    zzc(zzfB5, uri4);
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    zza(zzbu.zza.zzfB(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.createByteArray());
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    zzbu zzfB6 = zzbu.zza.zzfB(parcel.readStrongBinder());
                    if (parcel.readInt() != 0) {
                        asset = Asset.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzfB6, asset);
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    zzc(zzbu.zza.zzfB(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 15:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    zzd(zzbu.zza.zzfB(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 16:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    zzbu zzfB7 = zzbu.zza.zzfB(parcel.readStrongBinder());
                    if (parcel.readInt() != 0) {
                        zzcVar = zzc.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzfB7, zzcVar);
                    parcel2.writeNoException();
                    return true;
                case 17:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    zzbu zzfB8 = zzbu.zza.zzfB(parcel.readStrongBinder());
                    if (parcel.readInt() != 0) {
                        zzckVar = zzck.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzfB8, zzckVar);
                    parcel2.writeNoException();
                    return true;
                case 18:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    zze(zzbu.zza.zzfB(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 19:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    zzf(zzbu.zza.zzfB(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 20:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    zzbu zzfB9 = zzbu.zza.zzfB(parcel.readStrongBinder());
                    if (parcel.readInt() != 0) {
                        connectionConfiguration2 = ConnectionConfiguration.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzfB9, connectionConfiguration2);
                    parcel2.writeNoException();
                    return true;
                case 21:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    zza(zzbu.zza.zzfB(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 22:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    zza(zzbu.zza.zzfB(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 23:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    zzb(zzbu.zza.zzfB(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 24:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    zzc(zzbu.zza.zzfB(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 25:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    zzg(zzbu.zza.zzfB(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 26:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    zzh(zzbu.zza.zzfB(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 27:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    zzbu zzfB10 = zzbu.zza.zzfB(parcel.readStrongBinder());
                    if (parcel.readInt() != 0) {
                        zzkVar = zzk.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzfB10, zzkVar);
                    parcel2.writeNoException();
                    return true;
                case 28:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    zzb(zzbu.zza.zzfB(parcel.readStrongBinder()), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 29:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    zzc(zzbu.zza.zzfB(parcel.readStrongBinder()), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 30:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    zzi(zzbu.zza.zzfB(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 31:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    zza(zzbu.zza.zzfB(parcel.readStrongBinder()), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 32:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    zzf(zzbu.zza.zzfB(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 33:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    zzb(zzbu.zza.zzfB(parcel.readStrongBinder()), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 34:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    zza(zzbu.zza.zzfB(parcel.readStrongBinder()), zzbt.zza.zzfA(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 35:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    zzb(zzbu.zza.zzfB(parcel.readStrongBinder()), zzbt.zza.zzfA(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 37:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    zzj(zzbu.zza.zzfB(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 38:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    zzbu zzfB11 = zzbu.zza.zzfB(parcel.readStrongBinder());
                    String readString = parcel.readString();
                    if (parcel.readInt() != 0) {
                        parcelFileDescriptor = (ParcelFileDescriptor) ParcelFileDescriptor.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzfB11, readString, parcelFileDescriptor);
                    parcel2.writeNoException();
                    return true;
                case 39:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    zza(zzbu.zza.zzfB(parcel.readStrongBinder()), parcel.readString(), parcel.readInt() != 0 ? (ParcelFileDescriptor) ParcelFileDescriptor.CREATOR.createFromParcel(parcel) : null, parcel.readLong(), parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 40:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    zzbu zzfB12 = zzbu.zza.zzfB(parcel.readStrongBinder());
                    if (parcel.readInt() != 0) {
                        uri3 = (Uri) Uri.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzfB12, uri3, parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 41:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    zzbu zzfB13 = zzbu.zza.zzfB(parcel.readStrongBinder());
                    if (parcel.readInt() != 0) {
                        uri5 = (Uri) Uri.CREATOR.createFromParcel(parcel);
                    }
                    zzb(zzfB13, uri5, parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 42:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    zza(zzbu.zza.zzfB(parcel.readStrongBinder()), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 43:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    zza(zzbu.zza.zzfB(parcel.readStrongBinder()), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 46:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    zzd(zzbu.zza.zzfB(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 47:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    zze(zzbu.zza.zzfB(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 48:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    zza(zzbu.zza.zzfB(parcel.readStrongBinder()), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 49:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    zzk(zzbu.zza.zzfB(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 50:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    zzbu zzfB14 = zzbu.zza.zzfB(parcel.readStrongBinder());
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    zzb(zzfB14, z);
                    parcel2.writeNoException();
                    return true;
                case 51:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    zzl(zzbu.zza.zzfB(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 52:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    zzm(zzbu.zza.zzfB(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 53:
                    parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
                    zza(zzbu.zza.zzfB(parcel.readStrongBinder()), parcel.readByte());
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.wearable.internal.IWearableService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(zzbu zzbuVar) throws RemoteException;

    void zza(zzbu zzbuVar, byte b) throws RemoteException;

    void zza(zzbu zzbuVar, int i) throws RemoteException;

    void zza(zzbu zzbuVar, Uri uri) throws RemoteException;

    void zza(zzbu zzbuVar, Uri uri, int i) throws RemoteException;

    void zza(zzbu zzbuVar, Asset asset) throws RemoteException;

    void zza(zzbu zzbuVar, ConnectionConfiguration connectionConfiguration) throws RemoteException;

    void zza(zzbu zzbuVar, PutDataRequest putDataRequest) throws RemoteException;

    void zza(zzbu zzbuVar, zzbt zzbtVar, String str) throws RemoteException;

    void zza(zzbu zzbuVar, zzc zzcVar) throws RemoteException;

    void zza(zzbu zzbuVar, zzck zzckVar) throws RemoteException;

    void zza(zzbu zzbuVar, zzk zzkVar) throws RemoteException;

    void zza(zzbu zzbuVar, String str) throws RemoteException;

    void zza(zzbu zzbuVar, String str, int i) throws RemoteException;

    void zza(zzbu zzbuVar, String str, ParcelFileDescriptor parcelFileDescriptor) throws RemoteException;

    void zza(zzbu zzbuVar, String str, ParcelFileDescriptor parcelFileDescriptor, long j, long j2) throws RemoteException;

    void zza(zzbu zzbuVar, String str, String str2) throws RemoteException;

    void zza(zzbu zzbuVar, String str, String str2, byte[] bArr) throws RemoteException;

    void zza(zzbu zzbuVar, boolean z) throws RemoteException;

    void zzb(zzbu zzbuVar) throws RemoteException;

    void zzb(zzbu zzbuVar, int i) throws RemoteException;

    void zzb(zzbu zzbuVar, Uri uri) throws RemoteException;

    void zzb(zzbu zzbuVar, Uri uri, int i) throws RemoteException;

    void zzb(zzbu zzbuVar, ConnectionConfiguration connectionConfiguration) throws RemoteException;

    void zzb(zzbu zzbuVar, zzbt zzbtVar, String str) throws RemoteException;

    void zzb(zzbu zzbuVar, String str) throws RemoteException;

    void zzb(zzbu zzbuVar, String str, int i) throws RemoteException;

    void zzb(zzbu zzbuVar, boolean z) throws RemoteException;

    void zzc(zzbu zzbuVar) throws RemoteException;

    void zzc(zzbu zzbuVar, int i) throws RemoteException;

    void zzc(zzbu zzbuVar, Uri uri) throws RemoteException;

    void zzc(zzbu zzbuVar, String str) throws RemoteException;

    void zzd(zzbu zzbuVar) throws RemoteException;

    void zzd(zzbu zzbuVar, String str) throws RemoteException;

    void zze(zzbu zzbuVar) throws RemoteException;

    void zze(zzbu zzbuVar, String str) throws RemoteException;

    void zzf(zzbu zzbuVar) throws RemoteException;

    void zzf(zzbu zzbuVar, String str) throws RemoteException;

    void zzg(zzbu zzbuVar) throws RemoteException;

    void zzh(zzbu zzbuVar) throws RemoteException;

    void zzi(zzbu zzbuVar) throws RemoteException;

    void zzj(zzbu zzbuVar) throws RemoteException;

    void zzk(zzbu zzbuVar) throws RemoteException;

    void zzl(zzbu zzbuVar) throws RemoteException;

    void zzm(zzbu zzbuVar) throws RemoteException;

    void zzn(zzbu zzbuVar) throws RemoteException;

    void zzo(zzbu zzbuVar) throws RemoteException;

    void zzp(zzbu zzbuVar) throws RemoteException;
}
