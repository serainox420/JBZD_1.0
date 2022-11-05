package com.mdotm.android.vast;

import java.io.Serializable;
/* loaded from: classes3.dex */
public class AdResource implements Serializable {
    private static final long serialVersionUID = 1;
    protected boolean cachedLocally;
    protected int delivery;
    protected int height;
    protected int resourceType;
    protected String url;
    protected int width;

    public int getDelivery() {
        return this.delivery;
    }

    public boolean isCachedLocally() {
        return this.cachedLocally;
    }

    public void setCachedLocally(boolean z) {
        this.cachedLocally = z;
    }

    public String getUrl() {
        return this.url;
    }

    public void setDelivery(int i) {
        this.delivery = i;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public int getHeight() {
        return this.height;
    }

    public int getWidth() {
        return this.width;
    }

    public void setHeight(int i) {
        this.height = i;
    }

    public void setWidth(int i) {
        this.width = i;
    }

    public int getResourceType() {
        return this.resourceType;
    }

    public void setResourceType(int i) {
        this.resourceType = i;
    }
}
