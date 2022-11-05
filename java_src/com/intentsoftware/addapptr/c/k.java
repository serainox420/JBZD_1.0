package com.intentsoftware.addapptr.c;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* compiled from: TargetingInformation.java */
/* loaded from: classes2.dex */
public class k {
    private Map<String, List<String>> targetingInfo;

    public void setMap(Map<String, List<String>> map) {
        this.targetingInfo = map;
    }

    public Map<String, List<String>> getMap() {
        return this.targetingInfo;
    }

    public boolean hasInformation() {
        return this.targetingInfo != null && !this.targetingInfo.isEmpty();
    }

    public String getValuesAsString(String str) {
        ArrayList arrayList = new ArrayList();
        for (List<String> list : this.targetingInfo.values()) {
            arrayList.add(TextUtils.join(str, list));
        }
        return TextUtils.join(str, arrayList);
    }
}
