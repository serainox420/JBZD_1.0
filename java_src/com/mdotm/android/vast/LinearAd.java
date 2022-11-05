package com.mdotm.android.vast;

import java.util.ArrayList;
/* loaded from: classes3.dex */
public class LinearAd extends BaseVastAd {
    private static final long serialVersionUID = 1;
    protected AdResource adResource;
    protected String closeBtnLocation;
    protected String closeBtnSize;
    protected String counteroffset;
    protected String countersize;
    protected String counterstroke;
    protected String duration;
    protected VastIcons icon;
    protected String skipOffset;
    protected LinearAdTrackingEvents trackingEvents;
    protected ArrayList<String> videoClicks = new ArrayList<>();
    protected ArrayList<String> videoClickTracking = new ArrayList<>();

    public String getDuration() {
        return this.duration;
    }

    public LinearAdTrackingEvents getTrackingEvents() {
        return this.trackingEvents;
    }

    public ArrayList<String> getVideoClicks() {
        return this.videoClicks;
    }

    public ArrayList<String> getVideoClickTrack() {
        return this.videoClickTracking;
    }

    public AdResource getAdResource() {
        return this.adResource;
    }

    public void setDuration(String str) {
        this.duration = str;
    }

    public void setTrackingEvents(LinearAdTrackingEvents linearAdTrackingEvents) {
        this.trackingEvents = linearAdTrackingEvents;
    }

    public void setVideoClicks(ArrayList<String> arrayList) {
        this.videoClicks = arrayList;
    }

    public void setAdResource(AdResource adResource) {
        this.adResource = adResource;
    }
}
