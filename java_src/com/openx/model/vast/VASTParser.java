package com.openx.model.vast;

import android.content.Context;
import android.text.TextUtils;
import android.util.Xml;
import com.openx.common.utils.logger.OXLog;
import com.openx.errors.VastParseError;
import com.openx.model.video.VideoAdEvent;
import com.smartadserver.android.library.model.SASNativeVideoAdElement;
import java.io.IOException;
import java.io.Serializable;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes3.dex */
public class VASTParser implements Serializable {
    private static final String TAG = "VASTParser";
    private static final long serialVersionUID = 4648633237840654799L;
    private String clickThroughUrl;
    private String clickTrackingUrl;
    private String duration;
    private volatile boolean hasWrapper;
    private String impressionTrackerUrl;
    private String mediaFileUrl;
    private boolean ready;
    private String skipOffset;
    VAST vast;
    private volatile VASTParser wrappedVASTXml;
    private ArrayList<com.openx.model.vast.Tracking> trackings = new ArrayList<>();
    private ArrayList<Impression> impressions = new ArrayList<>();
    private ArrayList<ClickTracking> clickTrackings = new ArrayList<>();

    public ArrayList<com.openx.model.vast.Tracking> getTrackings() {
        return this.trackings;
    }

    public ArrayList<Impression> getImpressions() {
        return this.impressions;
    }

    public ArrayList<ClickTracking> getClickTrackings() {
        return this.clickTrackings;
    }

    /* loaded from: classes3.dex */
    public static class Tracking implements Serializable {
        public static final int EVENT_ACCEPTINVITATION = 16;
        public static final int EVENT_ACCEPTINVITATIONLINEAR = 17;
        public static final int EVENT_CLOSE = 19;
        public static final int EVENT_CLOSELINEAR = 18;
        public static final int EVENT_COLLAPSE = 15;
        public static final int EVENT_COMPLETE = 6;
        public static final int EVENT_CREATIVEVIEW = 1;
        public static final int EVENT_EXITFULLSCREEN = 13;
        public static final int EVENT_EXPAND = 14;
        public static final int EVENT_FIRSTQUARTILE = 3;
        public static final int EVENT_FULLSCREEN = 12;
        public static final int EVENT_IMPRESSION = 0;
        public static final String[] EVENT_MAPPING = {"impression", SASNativeVideoAdElement.TRACKING_EVENT_NAME_CREATIVE_VIEW, SASNativeVideoAdElement.TRACKING_EVENT_NAME_START, SASNativeVideoAdElement.TRACKING_EVENT_NAME_FIRST_QUARTILE, SASNativeVideoAdElement.TRACKING_EVENT_NAME_MIDPOINT, SASNativeVideoAdElement.TRACKING_EVENT_NAME_THIRD_QUARTILE, SASNativeVideoAdElement.TRACKING_EVENT_NAME_COMPLETE, SASNativeVideoAdElement.TRACKING_EVENT_NAME_MUTE, SASNativeVideoAdElement.TRACKING_EVENT_NAME_UNMUTE, SASNativeVideoAdElement.TRACKING_EVENT_NAME_PAUSE, SASNativeVideoAdElement.TRACKING_EVENT_NAME_REWIND, SASNativeVideoAdElement.TRACKING_EVENT_NAME_RESUME, "fullscreen", SASNativeVideoAdElement.TRACKING_EVENT_NAME_EXIT_FULLSCREEN, "expand", "collapse", "acceptInvitation", "acceptInvitationLinear", "closeLinear", "close", SASNativeVideoAdElement.TRACKING_EVENT_NAME_SKIP, SASNativeVideoAdElement.TRACKING_EVENT_NAME_PROGRESS};
        public static final int EVENT_MIDPOINT = 4;
        public static final int EVENT_MUTE = 7;
        public static final int EVENT_PAUSE = 9;
        public static final int EVENT_PROGRESS = 21;
        public static final int EVENT_RESUME = 11;
        public static final int EVENT_REWIND = 10;
        public static final int EVENT_SKIP = 20;
        public static final int EVENT_START = 2;
        public static final int EVENT_THIRDQUARTILE = 5;
        public static final int EVENT_UNMUTE = 8;
        private static final long serialVersionUID = 8219500864032723708L;
        private int event;
        private String url;

        public Tracking(String str, String str2) {
            this.event = findEvent(str);
            this.url = str2;
        }

        private int findEvent(String str) {
            for (int i = 0; i < EVENT_MAPPING.length; i++) {
                if (EVENT_MAPPING[i].equals(str)) {
                    return i;
                }
            }
            return -1;
        }

        public int getEvent() {
            return this.event;
        }

        public String getUrl() {
            return this.url;
        }
    }

    public VASTParser(Context context, String str) throws VastParseError {
        this.ready = false;
        try {
            readVAST(str);
            this.ready = true;
        } catch (Exception e) {
            throw new VastParseError(e.getLocalizedMessage());
        }
    }

    private void readVAST(String str) throws XmlPullParserException, IOException {
        XmlPullParser newPullParser = Xml.newPullParser();
        newPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", false);
        newPullParser.setInput(new StringReader(str));
        newPullParser.nextTag();
        this.vast = new VAST(newPullParser);
    }

    public List<String> getImpressionTrackerUrl() {
        waitForWrapper();
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.impressionTrackerUrl);
        if (this.wrappedVASTXml != null && this.wrappedVASTXml.getImpressionTrackerUrl() != null) {
            arrayList.addAll(this.wrappedVASTXml.getImpressionTrackerUrl());
        }
        return arrayList;
    }

    public String getDuration() {
        waitForWrapper();
        return (this.duration != null || this.wrappedVASTXml == null) ? this.duration : this.wrappedVASTXml.getDuration();
    }

    public String getVASTAdTagURI(VASTParser vASTParser) {
        Iterator<Ad> it = vASTParser.vast.ads.iterator();
        while (it.hasNext()) {
            Ad next = it.next();
            if (next.wrapper != null && next.wrapper.vastAdTagURI != null) {
                return next.wrapper.vastAdTagURI.value;
            }
        }
        return null;
    }

    public String getMediaFileUrl(VASTParser vASTParser, int i) {
        if (this.wrappedVASTXml != null) {
            this.wrappedVASTXml.getMediaFileUrl(this.wrappedVASTXml, i);
        } else if (this.mediaFileUrl == null) {
            Iterator<Creative> it = vASTParser.vast.ads.get(i).inline.creatives.iterator();
            while (it.hasNext()) {
                Creative next = it.next();
                if (next.linear != null) {
                    Iterator<MediaFile> it2 = next.linear.mediaFiles.iterator();
                    if (it2.hasNext()) {
                        MediaFile next2 = it2.next();
                        if (next2.type.contains("mp4") || next2.type.contains("3gp")) {
                            return next2.value;
                        }
                    } else {
                        continue;
                    }
                }
            }
        }
        return "invalid media file";
    }

    public ArrayList<Impression> getImpressionEvents(VAST vast, int i) {
        Ad ad = vast.ads.get(i);
        if (ad.inline != null) {
            return ad.inline.impressions;
        }
        if (ad.wrapper != null) {
            return ad.wrapper.impressions;
        }
        return null;
    }

    public ArrayList<Impression> getImpressions(VASTParser vASTParser, int i) {
        if (getImpressionEvents(vASTParser.vast, i) != null) {
            this.impressions.addAll(getImpressionEvents(vASTParser.vast, i));
        }
        if (vASTParser.wrappedVASTXml != null) {
            getImpressions(vASTParser.wrappedVASTXml, i);
        }
        return this.impressions;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x003b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ArrayList<com.openx.model.vast.Tracking> getTrackingEvents(VAST vast, int i) {
        Ad ad = vast.ads.get(i);
        if (ad.inline != null) {
            Iterator<Creative> it = ad.inline.creatives.iterator();
            while (it.hasNext()) {
                Creative next = it.next();
                if (next.linear != null) {
                    return next.linear.trackingEvents;
                }
            }
        } else if (ad.wrapper != null) {
            Iterator<Creative> it2 = ad.wrapper.creatives.iterator();
            while (it2.hasNext()) {
                Creative next2 = it2.next();
                if (next2.linear != null) {
                    return next2.linear.trackingEvents;
                }
                if (next2.nonLinearAds != null) {
                    return next2.nonLinearAds.trackingEvents;
                }
                if (next2.companionAds != null) {
                }
                while (it2.hasNext()) {
                }
            }
        }
        return null;
    }

    public ArrayList<com.openx.model.vast.Tracking> getAllTrackings(VASTParser vASTParser, int i) {
        if (getTrackingEvents(vASTParser.vast, i) != null) {
            this.trackings.addAll(getTrackingEvents(vASTParser.vast, i));
        }
        if (vASTParser.wrappedVASTXml != null) {
            getAllTrackings(vASTParser.wrappedVASTXml, i);
        }
        return this.trackings;
    }

    public List<String> getTrackingByType(VideoAdEvent.Event event) {
        Iterator<com.openx.model.vast.Tracking> it = this.trackings.iterator();
        ArrayList arrayList = new ArrayList();
        while (it.hasNext()) {
            com.openx.model.vast.Tracking next = it.next();
            OXLog.debug(TAG, "iterating: " + next.event);
            if (next.event.equals(Tracking.EVENT_MAPPING[event.ordinal()])) {
                OXLog.debug(TAG, "iterating match: " + next.event);
                arrayList.add(next.value);
            }
        }
        return arrayList;
    }

    public String getSkipOffset(VASTParser vASTParser, int i) {
        Ad ad;
        if (this.skipOffset == null && this.wrappedVASTXml != null) {
            return this.wrappedVASTXml.getSkipOffset(vASTParser, i);
        }
        if (TextUtils.isEmpty(this.skipOffset) && (ad = vASTParser.vast.ads.get(i)) != null && ad.inline != null) {
            Iterator<Creative> it = ad.inline.creatives.iterator();
            while (it.hasNext()) {
                Creative next = it.next();
                if (next.linear != null) {
                    return next.linear.skipoffset;
                }
            }
        }
        return this.skipOffset;
    }

    public String getError(VASTParser vASTParser, int i) {
        Ad ad = vASTParser.vast.ads.get(i);
        if (ad == null || ad.inline == null || ad.inline.error == null) {
            return null;
        }
        return ad.inline.error.value;
    }

    public String getClickThroughUrl(VASTParser vASTParser, int i) {
        if (this.wrappedVASTXml != null) {
            return this.wrappedVASTXml.getClickThroughUrl(this.wrappedVASTXml, i);
        }
        if (this.clickThroughUrl == null) {
            Iterator<Creative> it = vASTParser.vast.ads.get(i).inline.creatives.iterator();
            while (it.hasNext()) {
                Creative next = it.next();
                if (next.linear != null && next.linear.videoClicks != null && next.linear.videoClicks.clickThrough != null) {
                    return next.linear.videoClicks.clickThrough.value;
                }
            }
        }
        return null;
    }

    private ArrayList<ClickTracking> findClickTrackings(VAST vast, int i) {
        Ad ad = vast.ads.get(i);
        if (ad.inline != null) {
            Iterator<Creative> it = ad.inline.creatives.iterator();
            while (it.hasNext()) {
                Creative next = it.next();
                if (next.linear != null && next.linear.videoClicks != null && next.linear.videoClicks.clickTrackings != null) {
                    return next.linear.videoClicks.clickTrackings;
                }
            }
        } else if (ad.wrapper != null) {
            Iterator<Creative> it2 = ad.wrapper.creatives.iterator();
            while (it2.hasNext()) {
                Creative next2 = it2.next();
                if (next2.linear != null && next2.linear.videoClicks != null && next2.linear.videoClicks.clickTrackings != null) {
                    return next2.linear.videoClicks.clickTrackings;
                }
            }
        }
        return null;
    }

    public ArrayList<ClickTracking> getClickTrackings(VASTParser vASTParser, int i) {
        if (findClickTrackings(vASTParser.vast, i) != null) {
            this.clickTrackings.addAll(findClickTrackings(vASTParser.vast, i));
        }
        if (vASTParser.wrappedVASTXml != null) {
            getClickTrackings(vASTParser.wrappedVASTXml, i);
        }
        return this.clickTrackings;
    }

    public List<String> getClickTrackingUrl() {
        waitForWrapper();
        ArrayList arrayList = new ArrayList();
        if (this.clickTrackingUrl != null) {
            arrayList.add(this.clickTrackingUrl);
        }
        if (this.wrappedVASTXml != null && this.wrappedVASTXml.getClickTrackingUrl() != null) {
            arrayList.addAll(this.wrappedVASTXml.getClickTrackingUrl());
        }
        return arrayList;
    }

    public synchronized boolean isReady() {
        waitForWrapper();
        return this.ready && (this.wrappedVASTXml == null ? !this.hasWrapper : this.wrappedVASTXml.isReady());
    }

    private void waitForWrapper() {
        if (this.hasWrapper) {
            while (this.hasWrapper) {
                if (this.wrappedVASTXml == null || !this.wrappedVASTXml.isReady()) {
                    try {
                        Thread.sleep(750L);
                    } catch (Exception e) {
                    }
                    Thread.yield();
                } else {
                    return;
                }
            }
        }
    }

    public void setWrapper(VASTParser vASTParser) {
        this.wrappedVASTXml = vASTParser;
    }

    public VASTParser getWrappedVASTXml() {
        return this.wrappedVASTXml;
    }

    public boolean hasWrapper() {
        return this.hasWrapper;
    }
}
