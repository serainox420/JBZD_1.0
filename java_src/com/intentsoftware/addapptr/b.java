package com.intentsoftware.addapptr;

import java.util.ArrayList;
/* compiled from: AdConfig.java */
/* loaded from: classes2.dex */
public class b {
    private final String adId;
    private final BannerSize bannerSize;
    private long lastTryTimestamp;
    private final AdNetwork network;
    private final int percentage;
    private final String placementName;
    private final int priority;
    private final AdType size;

    public b(AdType adType, AdNetwork adNetwork, String str, int i, int i2, String str2, BannerSize bannerSize) {
        this.network = adNetwork;
        this.size = adType;
        this.adId = str;
        this.priority = i;
        this.percentage = i2;
        this.placementName = str2;
        this.bannerSize = bannerSize;
    }

    public AdNetwork getNetwork() {
        return this.network;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdType getSize() {
        return this.size;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getAdId() {
        return this.adId;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getPriority() {
        return this.priority;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getPercentage() {
        return this.percentage;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getPlacementName() {
        return this.placementName;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BannerSize getBannerSize() {
        return this.bannerSize;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArrayList<PlacementSize> getSupportedPlacementSizes() {
        PlacementSize[] values;
        ArrayList<PlacementSize> arrayList = new ArrayList<>();
        if (this.bannerSize != null) {
            arrayList.add(PlacementSize.MultiSizeBanner);
            for (PlacementSize placementSize : PlacementSize.values()) {
                if (placementSize.getBannerSize() == this.bannerSize) {
                    arrayList.add(placementSize);
                }
            }
        } else if (this.size == AdType.FULLSCREEN) {
            arrayList.add(PlacementSize.Fullscreen);
        } else if (this.size == AdType.NATIVE) {
            arrayList.add(PlacementSize.Native);
        } else if (this.size == AdType.NATIVE_BANNER) {
            arrayList.add(PlacementSize.Banner300x250);
            arrayList.add(PlacementSize.Banner320x53);
            arrayList.add(PlacementSize.Banner768x90);
            arrayList.add(PlacementSize.Banner468x60);
        } else if (this.size == AdType.NATIVE_INTERSTITIAL) {
            arrayList.add(PlacementSize.Fullscreen);
        } else {
            switch (this.network) {
                case AMAZON:
                    arrayList.add(PlacementSize.Banner300x250);
                    arrayList.add(PlacementSize.Banner320x53);
                    arrayList.add(PlacementSize.Banner768x90);
                    break;
                case MOPUB:
                    arrayList.add(PlacementSize.Banner300x250);
                    arrayList.add(PlacementSize.Banner320x53);
                    arrayList.add(PlacementSize.Banner768x90);
                    break;
                case ADMOB:
                    arrayList.add(PlacementSize.Banner300x250);
                    arrayList.add(PlacementSize.Banner320x53);
                    arrayList.add(PlacementSize.Banner768x90);
                    arrayList.add(PlacementSize.Banner468x60);
                    break;
                case EMPTY:
                    arrayList.add(PlacementSize.Banner300x250);
                    arrayList.add(PlacementSize.Banner320x53);
                    arrayList.add(PlacementSize.Banner768x90);
                    arrayList.add(PlacementSize.Banner468x60);
                    break;
                case APPLOVIN:
                    arrayList.add(PlacementSize.Banner300x250);
                    arrayList.add(PlacementSize.Banner320x53);
                    arrayList.add(PlacementSize.Banner768x90);
                    break;
                case HOUSE:
                    arrayList.add(PlacementSize.Banner300x250);
                    arrayList.add(PlacementSize.Banner320x53);
                    arrayList.add(PlacementSize.Banner768x90);
                    arrayList.add(PlacementSize.Banner468x60);
                    break;
                case INMOBI:
                    arrayList.add(PlacementSize.Banner300x250);
                    arrayList.add(PlacementSize.Banner320x53);
                    arrayList.add(PlacementSize.Banner768x90);
                    arrayList.add(PlacementSize.Banner468x60);
                    break;
                case MILLENNIAL:
                    arrayList.add(PlacementSize.Banner320x53);
                    arrayList.add(PlacementSize.Banner300x250);
                    arrayList.add(PlacementSize.Banner768x90);
                    arrayList.add(PlacementSize.Banner468x60);
                    break;
                case NEXAGE:
                    arrayList.add(PlacementSize.Banner300x250);
                    arrayList.add(PlacementSize.Banner320x53);
                    arrayList.add(PlacementSize.Banner768x90);
                    break;
                case ADX:
                    arrayList.add(PlacementSize.Banner300x250);
                    arrayList.add(PlacementSize.Banner320x53);
                    arrayList.add(PlacementSize.Banner768x90);
                    arrayList.add(PlacementSize.Banner468x60);
                    break;
                case DFP:
                    arrayList.add(PlacementSize.Banner300x250);
                    arrayList.add(PlacementSize.Banner320x53);
                    arrayList.add(PlacementSize.Banner768x90);
                    arrayList.add(PlacementSize.Banner468x60);
                    break;
                case SMAATO:
                    arrayList.add(PlacementSize.Banner320x53);
                    arrayList.add(PlacementSize.Banner300x250);
                    arrayList.add(PlacementSize.Banner768x90);
                    break;
                case SMARTAD:
                    arrayList.add(PlacementSize.Banner300x250);
                    arrayList.add(PlacementSize.Banner320x53);
                    arrayList.add(PlacementSize.Banner768x90);
                    break;
                case APPRUPT:
                    arrayList.add(PlacementSize.Banner320x53);
                    arrayList.add(PlacementSize.Banner300x250);
                    break;
                case FACEBOOK:
                    arrayList.add(PlacementSize.Banner300x250);
                    arrayList.add(PlacementSize.Banner320x53);
                    arrayList.add(PlacementSize.Banner768x90);
                    break;
                case OPENX:
                    arrayList.add(PlacementSize.Banner300x250);
                    arrayList.add(PlacementSize.Banner320x53);
                    arrayList.add(PlacementSize.Banner468x60);
                    arrayList.add(PlacementSize.Banner768x90);
                    break;
                case PUBMATIC:
                    arrayList.add(PlacementSize.Banner300x250);
                    arrayList.add(PlacementSize.Banner320x53);
                    arrayList.add(PlacementSize.Banner468x60);
                    arrayList.add(PlacementSize.Banner768x90);
                    break;
                case FLURRY:
                    arrayList.add(PlacementSize.Banner320x53);
                    break;
                case REVMOB:
                    arrayList.add(PlacementSize.Banner320x53);
                    break;
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getLastTryTimestamp() {
        return this.lastTryTimestamp;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setLastTryTimestamp(long j) {
        this.lastTryTimestamp = j;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        if (this.priority != bVar.priority || this.percentage != bVar.percentage || this.network != bVar.network || this.size != bVar.size || !this.adId.equals(bVar.adId)) {
            return false;
        }
        if (this.placementName != null) {
            if (!this.placementName.equals(bVar.placementName)) {
                return false;
            }
        } else if (bVar.placementName != null) {
            return false;
        }
        if (this.bannerSize != bVar.bannerSize) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = ((this.placementName != null ? this.placementName.hashCode() : 0) + (((((((((this.network.hashCode() * 31) + this.size.hashCode()) * 31) + this.adId.hashCode()) * 31) + this.priority) * 31) + this.percentage) * 31)) * 31;
        if (this.bannerSize != null) {
            i = this.bannerSize.hashCode();
        }
        return hashCode + i;
    }
}
