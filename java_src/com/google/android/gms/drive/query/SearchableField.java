package com.google.android.gms.drive.query;

import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.SearchableCollectionMetadataField;
import com.google.android.gms.drive.metadata.SearchableMetadataField;
import com.google.android.gms.drive.metadata.SearchableOrderedMetadataField;
import com.google.android.gms.drive.metadata.internal.AppVisibleCustomProperties;
import com.google.android.gms.internal.zzalu;
import com.google.android.gms.internal.zzalw;
import java.util.Date;
/* loaded from: classes2.dex */
public class SearchableField {
    public static final SearchableMetadataField<String> TITLE = zzalu.zzaPD;
    public static final SearchableMetadataField<String> MIME_TYPE = zzalu.zzaPu;
    public static final SearchableMetadataField<Boolean> TRASHED = zzalu.zzaPE;
    public static final SearchableCollectionMetadataField<DriveId> PARENTS = zzalu.zzaPz;
    public static final SearchableOrderedMetadataField<Date> zzaQe = zzalw.zzaPT;
    public static final SearchableMetadataField<Boolean> STARRED = zzalu.zzaPB;
    public static final SearchableOrderedMetadataField<Date> MODIFIED_DATE = zzalw.zzaPR;
    public static final SearchableOrderedMetadataField<Date> LAST_VIEWED_BY_ME = zzalw.zzaPQ;
    public static final SearchableMetadataField<Boolean> IS_PINNED = zzalu.zzaPm;
    public static final SearchableMetadataField<AppVisibleCustomProperties> zzaQf = zzalu.zzaOZ;
}
