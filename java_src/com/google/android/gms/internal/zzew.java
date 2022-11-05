package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzer;
import com.google.android.gms.internal.zzet;
import com.google.android.gms.internal.zzey;
import com.google.android.gms.internal.zzhh;
import com.google.android.gms.internal.zzka;
import com.google.android.gms.internal.zzkz;
import com.google.android.gms.internal.zzlf;
import com.google.android.gms.internal.zznu;
/* loaded from: classes2.dex */
public interface zzew extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzew {

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: com.google.android.gms.internal.zzew$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static class C0329zza implements zzew {
            private IBinder zzrk;

            C0329zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.internal.zzew
            public zzer createAdLoaderBuilder(IObjectWrapper iObjectWrapper, String str, zzka zzkaVar, int i) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IClientApi");
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    obtain.writeString(str);
                    if (zzkaVar != null) {
                        iBinder = zzkaVar.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    obtain.writeInt(i);
                    this.zzrk.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return zzer.zza.zzo(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzew
            public zzkz createAdOverlay(IObjectWrapper iObjectWrapper) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IClientApi");
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    this.zzrk.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                    return zzkz.zza.zzT(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzew
            public zzet createBannerAdManager(IObjectWrapper iObjectWrapper, zzeg zzegVar, String str, zzka zzkaVar, int i) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IClientApi");
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    if (zzegVar != null) {
                        obtain.writeInt(1);
                        zzegVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeString(str);
                    if (zzkaVar != null) {
                        iBinder = zzkaVar.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    obtain.writeInt(i);
                    this.zzrk.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return zzet.zza.zzq(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzew
            public zzlf createInAppPurchaseManager(IObjectWrapper iObjectWrapper) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IClientApi");
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    this.zzrk.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                    return zzlf.zza.zzY(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzew
            public zzet createInterstitialAdManager(IObjectWrapper iObjectWrapper, zzeg zzegVar, String str, zzka zzkaVar, int i) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IClientApi");
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    if (zzegVar != null) {
                        obtain.writeInt(1);
                        zzegVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeString(str);
                    if (zzkaVar != null) {
                        iBinder = zzkaVar.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    obtain.writeInt(i);
                    this.zzrk.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return zzet.zza.zzq(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzew
            public zzhh createNativeAdViewDelegate(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IClientApi");
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    if (iObjectWrapper2 != null) {
                        iBinder = iObjectWrapper2.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    this.zzrk.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    return zzhh.zza.zzC(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzew
            public zznu createRewardedVideoAd(IObjectWrapper iObjectWrapper, zzka zzkaVar, int i) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IClientApi");
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    if (zzkaVar != null) {
                        iBinder = zzkaVar.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    obtain.writeInt(i);
                    this.zzrk.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                    return zznu.zza.zzah(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzew
            public zzet createSearchAdManager(IObjectWrapper iObjectWrapper, zzeg zzegVar, String str, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IClientApi");
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    if (zzegVar != null) {
                        obtain.writeInt(1);
                        zzegVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    this.zzrk.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                    return zzet.zza.zzq(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzew
            public zzey getMobileAdsSettingsManager(IObjectWrapper iObjectWrapper) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IClientApi");
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    this.zzrk.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    return zzey.zza.zzu(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzew
            public zzey getMobileAdsSettingsManagerWithClientJarVersion(IObjectWrapper iObjectWrapper, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.client.IClientApi");
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    obtain.writeInt(i);
                    this.zzrk.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                    return zzey.zza.zzu(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public zza() {
            attachInterface(this, "com.google.android.gms.ads.internal.client.IClientApi");
        }

        public static zzew asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IClientApi");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzew)) ? new C0329zza(iBinder) : (zzew) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            IBinder iBinder = null;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IClientApi");
                    zzet createBannerAdManager = createBannerAdManager(IObjectWrapper.zza.zzcd(parcel.readStrongBinder()), parcel.readInt() != 0 ? zzeg.CREATOR.createFromParcel(parcel) : null, parcel.readString(), zzka.zza.zzM(parcel.readStrongBinder()), parcel.readInt());
                    parcel2.writeNoException();
                    if (createBannerAdManager != null) {
                        iBinder = createBannerAdManager.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IClientApi");
                    zzet createInterstitialAdManager = createInterstitialAdManager(IObjectWrapper.zza.zzcd(parcel.readStrongBinder()), parcel.readInt() != 0 ? zzeg.CREATOR.createFromParcel(parcel) : null, parcel.readString(), zzka.zza.zzM(parcel.readStrongBinder()), parcel.readInt());
                    parcel2.writeNoException();
                    if (createInterstitialAdManager != null) {
                        iBinder = createInterstitialAdManager.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IClientApi");
                    zzer createAdLoaderBuilder = createAdLoaderBuilder(IObjectWrapper.zza.zzcd(parcel.readStrongBinder()), parcel.readString(), zzka.zza.zzM(parcel.readStrongBinder()), parcel.readInt());
                    parcel2.writeNoException();
                    if (createAdLoaderBuilder != null) {
                        iBinder = createAdLoaderBuilder.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IClientApi");
                    zzey mobileAdsSettingsManager = getMobileAdsSettingsManager(IObjectWrapper.zza.zzcd(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    if (mobileAdsSettingsManager != null) {
                        iBinder = mobileAdsSettingsManager.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case 5:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IClientApi");
                    zzhh createNativeAdViewDelegate = createNativeAdViewDelegate(IObjectWrapper.zza.zzcd(parcel.readStrongBinder()), IObjectWrapper.zza.zzcd(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    if (createNativeAdViewDelegate != null) {
                        iBinder = createNativeAdViewDelegate.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case 6:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IClientApi");
                    zznu createRewardedVideoAd = createRewardedVideoAd(IObjectWrapper.zza.zzcd(parcel.readStrongBinder()), zzka.zza.zzM(parcel.readStrongBinder()), parcel.readInt());
                    parcel2.writeNoException();
                    if (createRewardedVideoAd != null) {
                        iBinder = createRewardedVideoAd.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case 7:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IClientApi");
                    zzlf createInAppPurchaseManager = createInAppPurchaseManager(IObjectWrapper.zza.zzcd(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    if (createInAppPurchaseManager != null) {
                        iBinder = createInAppPurchaseManager.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case 8:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IClientApi");
                    zzkz createAdOverlay = createAdOverlay(IObjectWrapper.zza.zzcd(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    if (createAdOverlay != null) {
                        iBinder = createAdOverlay.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case 9:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IClientApi");
                    zzey mobileAdsSettingsManagerWithClientJarVersion = getMobileAdsSettingsManagerWithClientJarVersion(IObjectWrapper.zza.zzcd(parcel.readStrongBinder()), parcel.readInt());
                    parcel2.writeNoException();
                    if (mobileAdsSettingsManagerWithClientJarVersion != null) {
                        iBinder = mobileAdsSettingsManagerWithClientJarVersion.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case 10:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.client.IClientApi");
                    zzet createSearchAdManager = createSearchAdManager(IObjectWrapper.zza.zzcd(parcel.readStrongBinder()), parcel.readInt() != 0 ? zzeg.CREATOR.createFromParcel(parcel) : null, parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    if (createSearchAdManager != null) {
                        iBinder = createSearchAdManager.asBinder();
                    }
                    parcel2.writeStrongBinder(iBinder);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.ads.internal.client.IClientApi");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    zzer createAdLoaderBuilder(IObjectWrapper iObjectWrapper, String str, zzka zzkaVar, int i) throws RemoteException;

    zzkz createAdOverlay(IObjectWrapper iObjectWrapper) throws RemoteException;

    zzet createBannerAdManager(IObjectWrapper iObjectWrapper, zzeg zzegVar, String str, zzka zzkaVar, int i) throws RemoteException;

    zzlf createInAppPurchaseManager(IObjectWrapper iObjectWrapper) throws RemoteException;

    zzet createInterstitialAdManager(IObjectWrapper iObjectWrapper, zzeg zzegVar, String str, zzka zzkaVar, int i) throws RemoteException;

    zzhh createNativeAdViewDelegate(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) throws RemoteException;

    zznu createRewardedVideoAd(IObjectWrapper iObjectWrapper, zzka zzkaVar, int i) throws RemoteException;

    zzet createSearchAdManager(IObjectWrapper iObjectWrapper, zzeg zzegVar, String str, int i) throws RemoteException;

    zzey getMobileAdsSettingsManager(IObjectWrapper iObjectWrapper) throws RemoteException;

    zzey getMobileAdsSettingsManagerWithClientJarVersion(IObjectWrapper iObjectWrapper, int i) throws RemoteException;
}
