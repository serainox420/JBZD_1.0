package com.amazon.device.ads;

import java.util.Iterator;
import java.util.Set;
/* loaded from: classes.dex */
class AdData implements Iterable<AAXCreative> {
    private int adHeight;
    private int adWidth;
    private String creative;
    private Set<AAXCreative> creativeTypes;
    private long expirationTimeMs = -1;
    private boolean fetched;
    private String impPixelUrl;
    private String instrPixelUrl;
    private AdProperties properties;

    /* JADX INFO: Access modifiers changed from: protected */
    public String getCreative() {
        return this.creative;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setCreative(String str) {
        this.creative = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AdProperties getProperties() {
        return this.properties;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setProperties(AdProperties adProperties) {
        this.properties = adProperties;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Set<AAXCreative> getCreativeTypes() {
        return this.creativeTypes;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setCreativeTypes(Set<AAXCreative> set) {
        this.creativeTypes = set;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String getInstrumentationPixelUrl() {
        return this.instrPixelUrl;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setInstrumentationPixelUrl(String str) {
        this.instrPixelUrl = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String getImpressionPixelUrl() {
        return this.impPixelUrl;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setImpressionPixelUrl(String str) {
        this.impPixelUrl = str;
    }

    public boolean getIsFetched() {
        return this.fetched;
    }

    public void setFetched(boolean z) {
        this.fetched = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setHeight(int i) {
        this.adHeight = i;
    }

    public int getHeight() {
        return this.adHeight;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setWidth(int i) {
        this.adWidth = i;
    }

    public int getWidth() {
        return this.adWidth;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setExpirationTimeMillis(long j) {
        this.expirationTimeMs = j;
    }

    public boolean isExpired() {
        return this.expirationTimeMs >= 0 && System.currentTimeMillis() > this.expirationTimeMs;
    }

    public long getTimeToExpire() {
        return this.expirationTimeMs - System.currentTimeMillis();
    }

    @Override // java.lang.Iterable
    public Iterator<AAXCreative> iterator() {
        return this.creativeTypes.iterator();
    }
}
