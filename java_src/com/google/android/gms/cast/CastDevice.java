package com.google.android.gms.cast;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.internal.zzyr;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public class CastDevice extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable {
    public static final int CAPABILITY_AUDIO_IN = 8;
    public static final int CAPABILITY_AUDIO_OUT = 4;
    public static final int CAPABILITY_MULTIZONE_GROUP = 32;
    public static final int CAPABILITY_VIDEO_IN = 2;
    public static final int CAPABILITY_VIDEO_OUT = 1;
    public static final Parcelable.Creator<CastDevice> CREATOR = new zze();
    private int zzJO;
    private String zzanm;
    String zzann;
    private Inet4Address zzano;
    private String zzanp;
    private String zzanq;
    private String zzanr;
    private int zzans;
    private List<WebImage> zzant;
    private int zzanu;
    private String zzanv;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CastDevice(String str, String str2, String str3, String str4, String str5, int i, List<WebImage> list, int i2, int i3, String str6) {
        this.zzanm = zzcF(str);
        this.zzann = zzcF(str2);
        if (!TextUtils.isEmpty(this.zzann)) {
            try {
                InetAddress byName = InetAddress.getByName(this.zzann);
                if (byName instanceof Inet4Address) {
                    this.zzano = (Inet4Address) byName;
                }
            } catch (UnknownHostException e) {
                String str7 = this.zzann;
                String valueOf = String.valueOf(e.getMessage());
                Log.i("CastDevice", new StringBuilder(String.valueOf(str7).length() + 48 + String.valueOf(valueOf).length()).append("Unable to convert host address (").append(str7).append(") to ipaddress: ").append(valueOf).toString());
            }
        }
        this.zzanp = zzcF(str3);
        this.zzanq = zzcF(str4);
        this.zzanr = zzcF(str5);
        this.zzans = i;
        this.zzant = list == null ? new ArrayList<>() : list;
        this.zzanu = i2;
        this.zzJO = i3;
        this.zzanv = zzcF(str6);
    }

    public static CastDevice getFromBundle(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        bundle.setClassLoader(CastDevice.class.getClassLoader());
        return (CastDevice) bundle.getParcelable("com.google.android.gms.cast.EXTRA_CAST_DEVICE");
    }

    private static String zzcF(String str) {
        return str == null ? "" : str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CastDevice)) {
            return false;
        }
        CastDevice castDevice = (CastDevice) obj;
        return this.zzanm == null ? castDevice.zzanm == null : zzyr.zza(this.zzanm, castDevice.zzanm) && zzyr.zza(this.zzano, castDevice.zzano) && zzyr.zza(this.zzanq, castDevice.zzanq) && zzyr.zza(this.zzanp, castDevice.zzanp) && zzyr.zza(this.zzanr, castDevice.zzanr) && this.zzans == castDevice.zzans && zzyr.zza(this.zzant, castDevice.zzant) && this.zzanu == castDevice.zzanu && this.zzJO == castDevice.zzJO && zzyr.zza(this.zzanv, castDevice.zzanv);
    }

    public int getCapabilities() {
        return this.zzanu;
    }

    public String getDeviceId() {
        return this.zzanm.startsWith("__cast_nearby__") ? this.zzanm.substring("__cast_nearby__".length() + 1) : this.zzanm;
    }

    public String getDeviceVersion() {
        return this.zzanr;
    }

    public String getFriendlyName() {
        return this.zzanp;
    }

    public WebImage getIcon(int i, int i2) {
        WebImage webImage;
        WebImage webImage2 = null;
        if (this.zzant.isEmpty()) {
            return null;
        }
        if (i <= 0 || i2 <= 0) {
            return this.zzant.get(0);
        }
        WebImage webImage3 = null;
        for (WebImage webImage4 : this.zzant) {
            int width = webImage4.getWidth();
            int height = webImage4.getHeight();
            if (width < i || height < i2) {
                if (width < i && height < i2 && (webImage2 == null || (webImage2.getWidth() < width && webImage2.getHeight() < height))) {
                    webImage = webImage3;
                    webImage3 = webImage;
                    webImage2 = webImage4;
                }
                webImage4 = webImage2;
                webImage = webImage3;
                webImage3 = webImage;
                webImage2 = webImage4;
            } else {
                if (webImage3 == null || (webImage3.getWidth() > width && webImage3.getHeight() > height)) {
                    WebImage webImage5 = webImage2;
                    webImage = webImage4;
                    webImage4 = webImage5;
                    webImage3 = webImage;
                    webImage2 = webImage4;
                }
                webImage4 = webImage2;
                webImage = webImage3;
                webImage3 = webImage;
                webImage2 = webImage4;
            }
        }
        if (webImage3 == null) {
            webImage3 = webImage2 != null ? webImage2 : this.zzant.get(0);
        }
        return webImage3;
    }

    public List<WebImage> getIcons() {
        return Collections.unmodifiableList(this.zzant);
    }

    public Inet4Address getIpAddress() {
        return this.zzano;
    }

    public String getModelName() {
        return this.zzanq;
    }

    public int getServicePort() {
        return this.zzans;
    }

    public int getStatus() {
        return this.zzJO;
    }

    public boolean hasCapabilities(int[] iArr) {
        if (iArr == null) {
            return false;
        }
        for (int i : iArr) {
            if (!hasCapability(i)) {
                return false;
            }
        }
        return true;
    }

    public boolean hasCapability(int i) {
        return (this.zzanu & i) == i;
    }

    public boolean hasIcons() {
        return !this.zzant.isEmpty();
    }

    public int hashCode() {
        if (this.zzanm == null) {
            return 0;
        }
        return this.zzanm.hashCode();
    }

    public boolean isOnLocalNetwork() {
        return !this.zzanm.startsWith("__cast_nearby__");
    }

    public boolean isSameDevice(CastDevice castDevice) {
        if (castDevice == null) {
            return false;
        }
        return this.zzanm == null ? castDevice.zzanm == null : zzyr.zza(this.zzanm, castDevice.zzanm);
    }

    public void putInBundle(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        bundle.putParcelable("com.google.android.gms.cast.EXTRA_CAST_DEVICE", this);
    }

    public String toString() {
        return String.format("\"%s\" (%s)", this.zzanp, this.zzanm);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zze.zza(this, parcel, i);
    }

    public String zzsh() {
        return this.zzanm;
    }

    public String zzsi() {
        return this.zzanv;
    }
}
