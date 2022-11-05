package com.google.android.gms.drive.metadata.internal;

import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.drive.DriveFolder;
/* loaded from: classes2.dex */
public class zzj {
    private String zzaOU;

    private zzj(String str) {
        this.zzaOU = str.toLowerCase();
    }

    public static zzj zzdK(String str) {
        zzac.zzax(str == null || !str.isEmpty());
        if (str == null) {
            return null;
        }
        return new zzj(str);
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (obj.getClass() != getClass()) {
            return false;
        }
        return this.zzaOU.equals(((zzj) obj).zzaOU);
    }

    public int hashCode() {
        return this.zzaOU.hashCode();
    }

    public boolean isFolder() {
        return this.zzaOU.equals(DriveFolder.MIME_TYPE);
    }

    public String toString() {
        return this.zzaOU;
    }

    public boolean zzBA() {
        return !zzBB() && !isFolder();
    }

    public boolean zzBB() {
        return this.zzaOU.startsWith("application/vnd.google-apps");
    }
}
