package com.millennialmedia.internal;

import com.millennialmedia.MMLog;
import com.millennialmedia.internal.utils.Utils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public abstract class AdPlacementMetadata<MetadataType> {
    public static final String METADATA_KEY_HEIGHT = "height";
    public static final String METADATA_KEY_KEYWORDS = "keywords";
    public static final String METADATA_KEY_NATIVE_TYPES = "nativeTypes";
    public static final String METADATA_KEY_PLACEMENT_ID = "placementId";
    public static final String METADATA_KEY_PLACEMENT_TYPE = "placementType";
    public static final String METADATA_KEY_SUPPORTED_ORIENTATIONS = "supportedOrientations";
    public static final String METADATA_KEY_WIDTH = "width";

    /* renamed from: a  reason: collision with root package name */
    private static final String f4049a = AdPlacementMetadata.class.getName();
    private static final List<String> b = Arrays.asList("portrait", "landscape");
    private String c;
    private String d;
    private List e;
    private final String f;

    /* JADX INFO: Access modifiers changed from: protected */
    public AdPlacementMetadata(String str) {
        this.f = str;
    }

    public Map<String, Object> toMap(AdPlacement adPlacement) {
        HashMap hashMap = new HashMap();
        hashMap.put(METADATA_KEY_PLACEMENT_ID, adPlacement.placementId);
        hashMap.put(METADATA_KEY_PLACEMENT_TYPE, this.f);
        Utils.injectIfNotNull(hashMap, "keywords", this.c);
        Utils.injectIfNotNull(hashMap, METADATA_KEY_SUPPORTED_ORIENTATIONS, this.e);
        return hashMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public MetadataType setSupportedOrientations(String str) {
        this.e = a("orientation", str, b);
        return this;
    }

    public List getSupportedOrientations() {
        return this.e;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public MetadataType setKeywords(String str) {
        this.c = str;
        return this;
    }

    public String getKeywords() {
        return this.c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public MetadataType setImpressionGroup(String str) {
        this.d = str;
        return this;
    }

    public String getImpressionGroup() {
        return this.d;
    }

    protected List<String> a(String str, String str2, List<String> list) {
        if (str2 != null) {
            ArrayList arrayList = new ArrayList();
            for (String str3 : str2.split(",")) {
                String trim = str3.trim();
                if (!list.contains(trim)) {
                    MMLog.e(f4049a, "Value <" + trim + "> is not a valid " + str);
                } else if (!arrayList.contains(trim)) {
                    arrayList.add(trim);
                }
            }
            if (arrayList.size() != 0) {
                return arrayList;
            }
            return null;
        }
        return null;
    }
}
