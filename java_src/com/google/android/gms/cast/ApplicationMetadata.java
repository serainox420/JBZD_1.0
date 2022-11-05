package com.google.android.gms.cast;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.internal.zzyr;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public class ApplicationMetadata extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<ApplicationMetadata> CREATOR = new zzd();
    String mName;
    List<WebImage> zzGq;
    String zzamX;
    List<String> zzamY;
    String zzamZ;
    Uri zzana;

    private ApplicationMetadata() {
        this.zzGq = new ArrayList();
        this.zzamY = new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ApplicationMetadata(String str, String str2, List<WebImage> list, List<String> list2, String str3, Uri uri) {
        this.zzamX = str;
        this.mName = str2;
        this.zzGq = list;
        this.zzamY = list2;
        this.zzamZ = str3;
        this.zzana = uri;
    }

    public boolean areNamespacesSupported(List<String> list) {
        return this.zzamY != null && this.zzamY.containsAll(list);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ApplicationMetadata)) {
            return false;
        }
        ApplicationMetadata applicationMetadata = (ApplicationMetadata) obj;
        return zzyr.zza(this.zzamX, applicationMetadata.zzamX) && zzyr.zza(this.zzGq, applicationMetadata.zzGq) && zzyr.zza(this.mName, applicationMetadata.mName) && zzyr.zza(this.zzamY, applicationMetadata.zzamY) && zzyr.zza(this.zzamZ, applicationMetadata.zzamZ) && zzyr.zza(this.zzana, applicationMetadata.zzana);
    }

    public String getApplicationId() {
        return this.zzamX;
    }

    public List<WebImage> getImages() {
        return this.zzGq;
    }

    public String getName() {
        return this.mName;
    }

    public String getSenderAppIdentifier() {
        return this.zzamZ;
    }

    public List<String> getSupportedNamespaces() {
        return Collections.unmodifiableList(this.zzamY);
    }

    public int hashCode() {
        return zzaa.hashCode(this.zzamX, this.mName, this.zzGq, this.zzamY, this.zzamZ, this.zzana);
    }

    public boolean isNamespaceSupported(String str) {
        return this.zzamY != null && this.zzamY.contains(str);
    }

    public String toString() {
        int i = 0;
        StringBuilder append = new StringBuilder().append("applicationId: ").append(this.zzamX).append(", name: ").append(this.mName).append(", images.count: ").append(this.zzGq == null ? 0 : this.zzGq.size()).append(", namespaces.count: ");
        if (this.zzamY != null) {
            i = this.zzamY.size();
        }
        return append.append(i).append(", senderAppIdentifier: ").append(this.zzamZ).append(", senderAppLaunchUrl: ").append(this.zzana).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzd.zza(this, parcel, i);
    }

    public Uri zzsg() {
        return this.zzana;
    }
}
