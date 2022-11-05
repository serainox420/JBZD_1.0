package com.google.android.gms.cast.framework.media;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.cast.framework.media.zzb;
import com.google.android.gms.internal.zzyz;
/* loaded from: classes2.dex */
public class CastMediaOptions extends com.google.android.gms.common.internal.safeparcel.zza {
    private final String zzarL;
    private final String zzarM;
    private final zzb zzarN;
    private final NotificationOptions zzarO;
    private static final zzyz zzapV = new zzyz("CastMediaOptions");
    public static final Parcelable.Creator<CastMediaOptions> CREATOR = new zza();

    /* loaded from: classes2.dex */
    public static final class Builder {
        private String zzarM;
        private ImagePicker zzarP;
        private String zzarL = MediaIntentReceiver.class.getName();
        private NotificationOptions zzarO = new NotificationOptions.Builder().build();

        public CastMediaOptions build() {
            return new CastMediaOptions(this.zzarL, this.zzarM, this.zzarP == null ? null : this.zzarP.zztq().asBinder(), this.zzarO);
        }

        public Builder setExpandedControllerActivityClassName(String str) {
            this.zzarM = str;
            return this;
        }

        public Builder setImagePicker(ImagePicker imagePicker) {
            this.zzarP = imagePicker;
            return this;
        }

        public Builder setMediaIntentReceiverClassName(String str) {
            this.zzarL = str;
            return this;
        }

        public Builder setNotificationOptions(NotificationOptions notificationOptions) {
            this.zzarO = notificationOptions;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CastMediaOptions(String str, String str2, IBinder iBinder, NotificationOptions notificationOptions) {
        this.zzarL = str;
        this.zzarM = str2;
        this.zzarN = zzb.zza.zzbc(iBinder);
        this.zzarO = notificationOptions;
    }

    public String getExpandedControllerActivityClassName() {
        return this.zzarM;
    }

    public ImagePicker getImagePicker() {
        if (this.zzarN != null) {
            try {
                return (ImagePicker) com.google.android.gms.dynamic.zzd.zzF(this.zzarN.zztp());
            } catch (RemoteException e) {
                zzapV.zzb(e, "Unable to call %s on %s.", "getWrappedClientObject", zzb.class.getSimpleName());
            }
        }
        return null;
    }

    public String getMediaIntentReceiverClassName() {
        return this.zzarL;
    }

    public NotificationOptions getNotificationOptions() {
        return this.zzarO;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zza.zza(this, parcel, i);
    }

    public IBinder zzto() {
        if (this.zzarN == null) {
            return null;
        }
        return this.zzarN.asBinder();
    }
}
