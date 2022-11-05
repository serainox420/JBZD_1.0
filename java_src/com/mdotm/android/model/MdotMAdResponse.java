package com.mdotm.android.model;

import com.mdotm.android.vast.Companion;
import java.io.Serializable;
import java.util.ArrayList;
/* loaded from: classes3.dex */
public class MdotMAdResponse implements Serializable {
    private static final long serialVersionUID = 878558512540821271L;
    private String Text;
    private int adType;
    private boolean cachedLocally;
    private Companion companion;
    private int height;
    private String imageUrl;
    private String imp_pixel;
    private ArrayList<String> impression;
    private boolean isRequestForBannerAd;
    private String landingUrl;
    private int launchType;
    private String originalImageUrl;
    private int resourceType;
    private int status;
    private int width;

    public boolean isRequestForBannerAd() {
        return this.isRequestForBannerAd;
    }

    public void setRequestForBannerAd(boolean z) {
        this.isRequestForBannerAd = z;
    }

    public int getAdType() {
        return this.adType;
    }

    public String getImp_pixel() {
        return this.imp_pixel;
    }

    public void setImp_pixel(String str) {
        this.imp_pixel = str;
    }

    public void setAdType(int i) {
        this.adType = i;
    }

    public String getImageUrl() {
        return this.imageUrl;
    }

    public void setImageUrl(String str) {
        this.imageUrl = str;
    }

    public String getLandingUrl() {
        return this.landingUrl;
    }

    public void setLandingUrl(String str) {
        this.landingUrl = str;
    }

    public String getText() {
        return this.Text;
    }

    public void setText(String str) {
        this.Text = str;
    }

    public void setResourceType(int i) {
        this.resourceType = i;
    }

    public int getResourceType() {
        return this.resourceType;
    }

    public void setWidth(int i) {
        this.width = i;
    }

    public int getWidth() {
        return this.width;
    }

    public void setHeight(int i) {
        this.height = i;
    }

    public int getHeight() {
        return this.height;
    }

    public void setCachedLocally(boolean z) {
        this.cachedLocally = z;
    }

    public boolean isCachedLocally() {
        return this.cachedLocally;
    }

    public void setLaunchType(int i) {
        this.launchType = i;
    }

    public int getLaunchType() {
        return this.launchType;
    }

    public int getStatus() {
        return this.status;
    }

    public void setStatus(int i) {
        this.status = i;
    }

    public Companion getCompanion() {
        return this.companion;
    }

    public void setCompanion(Companion companion) {
        this.companion = companion;
    }

    public ArrayList<String> getImpression() {
        return this.impression;
    }

    public void setImpression(ArrayList<String> arrayList) {
        this.impression = arrayList;
    }

    public String getOriginalImageUrl() {
        return this.originalImageUrl;
    }

    public void setOriginalImageUrl(String str) {
        this.originalImageUrl = str;
    }
}
