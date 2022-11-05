package com.millennialmedia.internal;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public class AdMetadata extends HashMap<String, String> {
    public static final String ENHANCED_AD_CONTROL_ENABLED = "enhancedAdControlEnabled";
    public static final String TRANSPARENT = "x-mm-transparent";

    public boolean isTransparent() {
        String str = get(TRANSPARENT);
        return str != null && Boolean.parseBoolean(str);
    }

    public void addAll(AdMetadata adMetadata) {
        if (adMetadata != null) {
            for (Map.Entry<String, String> entry : adMetadata.entrySet()) {
                put(entry.getKey(), entry.getValue());
            }
        }
    }

    public boolean getBoolean(String str, boolean z) {
        Boolean valueOf;
        if (containsKey(str) && (valueOf = Boolean.valueOf(Boolean.parseBoolean(get(str)))) != null) {
            return valueOf.booleanValue();
        }
        return z;
    }
}
