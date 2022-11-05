package com.google.android.gms.drive;

import com.google.android.gms.common.data.Freezable;
import com.google.android.gms.drive.metadata.CustomPropertyKey;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.metadata.internal.AppVisibleCustomProperties;
import com.google.android.gms.internal.zzalu;
import com.google.android.gms.internal.zzalw;
import com.google.android.gms.internal.zzaly;
import java.util.Collections;
import java.util.Date;
import java.util.Map;
/* loaded from: classes2.dex */
public abstract class Metadata implements Freezable<Metadata> {
    public static final int CONTENT_AVAILABLE_LOCALLY = 1;
    public static final int CONTENT_NOT_AVAILABLE_LOCALLY = 0;

    public String getAlternateLink() {
        return (String) zza(zzalu.zzaOY);
    }

    public int getContentAvailability() {
        Integer num = (Integer) zza(zzaly.zzaPW);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public Date getCreatedDate() {
        return (Date) zza(zzalw.zzaPP);
    }

    public Map<CustomPropertyKey, String> getCustomProperties() {
        AppVisibleCustomProperties appVisibleCustomProperties = (AppVisibleCustomProperties) zza(zzalu.zzaOZ);
        return appVisibleCustomProperties == null ? Collections.emptyMap() : appVisibleCustomProperties.zzBs();
    }

    public String getDescription() {
        return (String) zza(zzalu.zzaPa);
    }

    public DriveId getDriveId() {
        return (DriveId) zza(zzalu.zzaOX);
    }

    public String getEmbedLink() {
        return (String) zza(zzalu.zzaPb);
    }

    public String getFileExtension() {
        return (String) zza(zzalu.zzaPc);
    }

    public long getFileSize() {
        return ((Long) zza(zzalu.zzaPd)).longValue();
    }

    public Date getLastViewedByMeDate() {
        return (Date) zza(zzalw.zzaPQ);
    }

    public String getMimeType() {
        return (String) zza(zzalu.zzaPu);
    }

    public Date getModifiedByMeDate() {
        return (Date) zza(zzalw.zzaPS);
    }

    public Date getModifiedDate() {
        return (Date) zza(zzalw.zzaPR);
    }

    public String getOriginalFilename() {
        return (String) zza(zzalu.zzaPv);
    }

    public long getQuotaBytesUsed() {
        return ((Long) zza(zzalu.zzaPA)).longValue();
    }

    public Date getSharedWithMeDate() {
        return (Date) zza(zzalw.zzaPT);
    }

    public String getTitle() {
        return (String) zza(zzalu.zzaPD);
    }

    public String getWebContentLink() {
        return (String) zza(zzalu.zzaPF);
    }

    public String getWebViewLink() {
        return (String) zza(zzalu.zzaPG);
    }

    public boolean isEditable() {
        Boolean bool = (Boolean) zza(zzalu.zzaPj);
        if (bool == null) {
            return false;
        }
        return bool.booleanValue();
    }

    public boolean isExplicitlyTrashed() {
        Boolean bool = (Boolean) zza(zzalu.zzaPk);
        if (bool == null) {
            return false;
        }
        return bool.booleanValue();
    }

    public boolean isFolder() {
        return DriveFolder.MIME_TYPE.equals(getMimeType());
    }

    public boolean isInAppFolder() {
        Boolean bool = (Boolean) zza(zzalu.zzaPh);
        if (bool == null) {
            return false;
        }
        return bool.booleanValue();
    }

    public boolean isPinnable() {
        Boolean bool = (Boolean) zza(zzaly.zzaPX);
        if (bool == null) {
            return false;
        }
        return bool.booleanValue();
    }

    public boolean isPinned() {
        Boolean bool = (Boolean) zza(zzalu.zzaPm);
        if (bool == null) {
            return false;
        }
        return bool.booleanValue();
    }

    public boolean isRestricted() {
        Boolean bool = (Boolean) zza(zzalu.zzaPo);
        if (bool == null) {
            return false;
        }
        return bool.booleanValue();
    }

    public boolean isShared() {
        Boolean bool = (Boolean) zza(zzalu.zzaPp);
        if (bool == null) {
            return false;
        }
        return bool.booleanValue();
    }

    public boolean isStarred() {
        Boolean bool = (Boolean) zza(zzalu.zzaPB);
        if (bool == null) {
            return false;
        }
        return bool.booleanValue();
    }

    public boolean isTrashable() {
        Boolean bool = (Boolean) zza(zzalu.zzaPs);
        if (bool == null) {
            return true;
        }
        return bool.booleanValue();
    }

    public boolean isTrashed() {
        Boolean bool = (Boolean) zza(zzalu.zzaPE);
        if (bool == null) {
            return false;
        }
        return bool.booleanValue();
    }

    public boolean isViewed() {
        Boolean bool = (Boolean) zza(zzalu.zzaPt);
        if (bool == null) {
            return false;
        }
        return bool.booleanValue();
    }

    public abstract <T> T zza(MetadataField<T> metadataField);
}
