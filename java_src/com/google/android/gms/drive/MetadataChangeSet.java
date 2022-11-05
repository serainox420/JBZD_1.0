package com.google.android.gms.drive;

import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.drive.metadata.CustomPropertyKey;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.metadata.internal.AppVisibleCustomProperties;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import com.google.android.gms.internal.zzalu;
import com.google.android.gms.internal.zzalw;
import java.util.Collections;
import java.util.Date;
import java.util.Map;
/* loaded from: classes2.dex */
public final class MetadataChangeSet {
    public static final int CUSTOM_PROPERTY_SIZE_LIMIT_BYTES = 124;
    public static final int INDEXABLE_TEXT_SIZE_LIMIT_BYTES = 131072;
    public static final int MAX_PRIVATE_PROPERTIES_PER_RESOURCE_PER_APP = 30;
    public static final int MAX_PUBLIC_PROPERTIES_PER_RESOURCE = 30;
    public static final int MAX_TOTAL_PROPERTIES_PER_RESOURCE = 100;
    public static final MetadataChangeSet zzaLk = new MetadataChangeSet(MetadataBundle.zzBx());
    private final MetadataBundle zzaLl;

    /* loaded from: classes2.dex */
    public static class Builder {
        private final MetadataBundle zzaLl = MetadataBundle.zzBx();
        private AppVisibleCustomProperties.zza zzaLm;

        private AppVisibleCustomProperties.zza zzAG() {
            if (this.zzaLm == null) {
                this.zzaLm = new AppVisibleCustomProperties.zza();
            }
            return this.zzaLm;
        }

        private int zzdH(String str) {
            if (str == null) {
                return 0;
            }
            return str.getBytes().length;
        }

        private String zzj(String str, int i, int i2) {
            return String.format("%s must be no more than %d bytes, but is %d bytes.", str, Integer.valueOf(i), Integer.valueOf(i2));
        }

        private void zzk(String str, int i, int i2) {
            zzac.zzb(i2 <= i, zzj(str, i, i2));
        }

        public MetadataChangeSet build() {
            if (this.zzaLm != null) {
                this.zzaLl.zzc(zzalu.zzaOZ, this.zzaLm.zzBt());
            }
            return new MetadataChangeSet(this.zzaLl);
        }

        public Builder deleteCustomProperty(CustomPropertyKey customPropertyKey) {
            zzac.zzb(customPropertyKey, "key");
            zzAG().zza(customPropertyKey, null);
            return this;
        }

        public Builder setCustomProperty(CustomPropertyKey customPropertyKey, String str) {
            zzac.zzb(customPropertyKey, "key");
            zzac.zzb(str, "value");
            zzk("The total size of key string and value string of a custom property", MetadataChangeSet.CUSTOM_PROPERTY_SIZE_LIMIT_BYTES, zzdH(customPropertyKey.getKey()) + zzdH(str));
            zzAG().zza(customPropertyKey, str);
            return this;
        }

        public Builder setDescription(String str) {
            this.zzaLl.zzc(zzalu.zzaPa, str);
            return this;
        }

        public Builder setIndexableText(String str) {
            zzk("Indexable text size", MetadataChangeSet.INDEXABLE_TEXT_SIZE_LIMIT_BYTES, zzdH(str));
            this.zzaLl.zzc(zzalu.zzaPg, str);
            return this;
        }

        public Builder setLastViewedByMeDate(Date date) {
            this.zzaLl.zzc(zzalw.zzaPQ, date);
            return this;
        }

        public Builder setMimeType(String str) {
            this.zzaLl.zzc(zzalu.zzaPu, str);
            return this;
        }

        public Builder setPinned(boolean z) {
            this.zzaLl.zzc(zzalu.zzaPm, Boolean.valueOf(z));
            return this;
        }

        public Builder setStarred(boolean z) {
            this.zzaLl.zzc(zzalu.zzaPB, Boolean.valueOf(z));
            return this;
        }

        public Builder setTitle(String str) {
            this.zzaLl.zzc(zzalu.zzaPD, str);
            return this;
        }

        public Builder setViewed(boolean z) {
            this.zzaLl.zzc(zzalu.zzaPt, Boolean.valueOf(z));
            return this;
        }
    }

    public MetadataChangeSet(MetadataBundle metadataBundle) {
        this.zzaLl = metadataBundle.zzBy();
    }

    public Map<CustomPropertyKey, String> getCustomPropertyChangeMap() {
        AppVisibleCustomProperties appVisibleCustomProperties = (AppVisibleCustomProperties) this.zzaLl.zza(zzalu.zzaOZ);
        return appVisibleCustomProperties == null ? Collections.emptyMap() : appVisibleCustomProperties.zzBs();
    }

    public String getDescription() {
        return (String) this.zzaLl.zza(zzalu.zzaPa);
    }

    public String getIndexableText() {
        return (String) this.zzaLl.zza(zzalu.zzaPg);
    }

    public Date getLastViewedByMeDate() {
        return (Date) this.zzaLl.zza(zzalw.zzaPQ);
    }

    public String getMimeType() {
        return (String) this.zzaLl.zza(zzalu.zzaPu);
    }

    public String getTitle() {
        return (String) this.zzaLl.zza(zzalu.zzaPD);
    }

    public Boolean isPinned() {
        return (Boolean) this.zzaLl.zza(zzalu.zzaPm);
    }

    public Boolean isStarred() {
        return (Boolean) this.zzaLl.zza(zzalu.zzaPB);
    }

    public Boolean isViewed() {
        return (Boolean) this.zzaLl.zza(zzalu.zzaPt);
    }

    public MetadataBundle zzAE() {
        return this.zzaLl;
    }

    public MetadataChangeSet zzAF() {
        return new MetadataChangeSet(zzAE());
    }

    public <T> MetadataChangeSet zza(MetadataField<T> metadataField, T t) {
        MetadataChangeSet zzAF = zzAF();
        zzAF.zzAE().zzc(metadataField, t);
        return zzAF;
    }
}
