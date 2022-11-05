package com.mdotm.android.vast;

import java.io.Serializable;
/* loaded from: classes3.dex */
public class BaseVastAd implements Serializable {
    private static final long serialVersionUID = 1;
    protected int adType;

    public int getAdType() {
        return this.adType;
    }

    public void setAdType(int i) {
        this.adType = i;
    }
}
