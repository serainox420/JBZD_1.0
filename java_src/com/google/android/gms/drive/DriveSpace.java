package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.facebook.share.internal.ShareConstants;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.zzac;
import java.util.Set;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
public class DriveSpace extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable {
    public static final Parcelable.Creator<DriveSpace> CREATOR = new zzj();
    public static final DriveSpace zzaKW = new DriveSpace("DRIVE");
    public static final DriveSpace zzaKX = new DriveSpace("APP_DATA_FOLDER");
    public static final DriveSpace zzaKY = new DriveSpace(ShareConstants.PHOTOS);
    public static final Set<DriveSpace> zzaKZ = com.google.android.gms.common.util.zzf.zza(zzaKW, zzaKX, zzaKY);
    public static final String zzaLa = TextUtils.join(",", zzaKZ.toArray());
    private static final Pattern zzaLb = Pattern.compile("[A-Z0-9_]*");
    private final String mName;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DriveSpace(int i, String str) {
        this.zzaiI = i;
        this.mName = (String) zzac.zzw(str);
    }

    private DriveSpace(String str) {
        this(1, str);
    }

    public boolean equals(Object obj) {
        if (obj == null || obj.getClass() != DriveSpace.class) {
            return false;
        }
        return this.mName.equals(((DriveSpace) obj).mName);
    }

    public String getName() {
        return this.mName;
    }

    public int hashCode() {
        return 1247068382 ^ this.mName.hashCode();
    }

    public String toString() {
        return this.mName;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzj.zza(this, parcel, i);
    }
}
