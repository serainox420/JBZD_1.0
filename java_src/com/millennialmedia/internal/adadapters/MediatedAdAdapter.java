package com.millennialmedia.internal.adadapters;
/* loaded from: classes3.dex */
public interface MediatedAdAdapter {
    void setMediationInfo(MediationInfo mediationInfo);

    /* loaded from: classes3.dex */
    public static class MediationInfo {
        public String siteId;
        public String spaceId;

        public MediationInfo(String str, String str2) {
            this.siteId = str;
            this.spaceId = str2;
        }
    }
}
