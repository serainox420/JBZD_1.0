package com.mdotm.android.vast;

import java.io.Serializable;
import java.util.ArrayList;
/* loaded from: classes3.dex */
public class VastAd implements Serializable {
    protected static boolean isNonLinear = false;
    private static final long serialVersionUID = -6182479523309358562L;
    protected String adSystem;
    protected String adTitle;
    protected String description;
    private int status;
    protected ArrayList<String> servey = new ArrayList<>();
    protected ArrayList<String> error = new ArrayList<>();
    protected ArrayList<String> impression = new ArrayList<>();
    protected ArrayList<BaseVastAd> vastAds = new ArrayList<>();
    protected Companion companion = new Companion();
    protected boolean liniearAndCompanion = false;

    public String getAdTitle() {
        return this.adTitle;
    }

    public String getAdSystem() {
        return this.adSystem;
    }

    public String getDescription() {
        return this.description;
    }

    public ArrayList<String> getServey() {
        return this.servey;
    }

    public ArrayList<String> getError() {
        return this.error;
    }

    public ArrayList<String> getImpression() {
        return this.impression;
    }

    public ArrayList<BaseVastAd> getVastAds() {
        return this.vastAds;
    }

    public void setAdTitle(String str) {
        this.adTitle = str;
    }

    public void setAdSystem(String str) {
        this.adSystem = str;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public void setServey(ArrayList<String> arrayList) {
        this.servey = arrayList;
    }

    public void setError(ArrayList<String> arrayList) {
        this.error = arrayList;
    }

    public void setImpression(ArrayList<String> arrayList) {
        this.impression = arrayList;
    }

    public void setVastAds(ArrayList<BaseVastAd> arrayList) {
        this.vastAds = arrayList;
    }

    public int getStatus() {
        return this.status;
    }

    public void setStatus(int i) {
        this.status = i;
    }
}
