package com.unity3d.ads.metadata;

import android.content.Context;
/* loaded from: classes3.dex */
public class MediationMetaData extends MetaData {
    public static final String KEY_NAME = "name";
    public static final String KEY_ORDINAL = "ordinal";
    public static final String KEY_VERSION = "version";

    public MediationMetaData(Context context) {
        super(context);
        setCategory("mediation");
    }

    public void setOrdinal(int i) {
        set(KEY_ORDINAL, Integer.valueOf(i));
    }

    public void setName(String str) {
        set("name", str);
    }

    public void setVersion(String str) {
        set("version", str);
    }
}
