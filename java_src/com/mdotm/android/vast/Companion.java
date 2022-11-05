package com.mdotm.android.vast;

import java.util.ArrayList;
/* loaded from: classes3.dex */
public class Companion extends BaseVastAd {
    public static String htmlResource = null;
    private static final long serialVersionUID = 1;
    protected String closeBtnLocation;
    public String closeBtnSize;
    protected byte[] companionImageByteArray;
    protected String companionStaticImageClickThrough;
    protected String height;
    protected String skipOffset;
    protected String staticResource;
    protected String width;
    protected ArrayList<String> vastHtmlClickTracking = new ArrayList<>();
    protected ArrayList<String> companionStaticImageClickTracking = new ArrayList<>();
    protected ArrayList<String> companionCreativeViewList = new ArrayList<>();

    public String getHTMLResource() {
        return htmlResource;
    }

    public ArrayList<String> vastHtmlClickTrack() {
        return this.vastHtmlClickTracking;
    }

    public String getSkipOffset() {
        return this.skipOffset;
    }

    public String getCloseLoc() {
        return this.closeBtnLocation;
    }
}
