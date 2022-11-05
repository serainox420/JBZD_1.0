package com.pubmatic.sdk.banner.mraid;

import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import com.pubmatic.sdk.banner.mraid.Consts;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.Locale;
/* loaded from: classes.dex */
public class Bridge {
    public final Handler handler;
    public final WebView webView;
    private Consts.PlacementType placementType = Consts.PlacementType.Inline;
    private Consts.State state = Consts.State.Loading;
    private ExpandProperties expandProperties = new ExpandProperties();
    private OrientationProperties orientationProperties = new OrientationProperties();
    private ResizeProperties resizeProperties = new ResizeProperties();

    /* loaded from: classes3.dex */
    public interface Handler {
        void mraidClose(Bridge bridge);

        void mraidCreateCalendarEvent(Bridge bridge, String str);

        void mraidExpand(Bridge bridge, String str);

        void mraidInit(Bridge bridge);

        void mraidOpen(Bridge bridge, String str);

        void mraidPlayVideo(Bridge bridge, String str);

        void mraidResize(Bridge bridge);

        void mraidStorePicture(Bridge bridge, String str);

        void mraidUpdateCurrentPosition(Bridge bridge);

        void mraidUpdatedExpandProperties(Bridge bridge);

        void mraidUpdatedOrientationProperties(Bridge bridge);

        void mraidUpdatedResizeProperties(Bridge bridge);
    }

    public Bridge(WebView webView, Handler handler) {
        if (webView == null) {
            throw new IllegalArgumentException("webView null");
        }
        if (handler == null) {
            throw new IllegalArgumentException("handler null");
        }
        this.webView = webView;
        this.handler = handler;
    }

    public void sendErrorMessage(String str, String str2) {
        this.webView.injectJavascript("mraid.fireErrorEvent('" + str + "','" + str2 + "');");
    }

    public Consts.PlacementType getPlacementType() {
        return this.placementType;
    }

    public void setPlacementType(Consts.PlacementType placementType) {
        this.placementType = placementType;
        String str = "inline";
        if (placementType == Consts.PlacementType.Interstitial) {
            str = "interstitial";
        }
        this.webView.injectJavascript("mraid.setPlacementType('" + str + "');");
    }

    public Consts.State getState() {
        return this.state;
    }

    public void setState(Consts.State state) {
        this.state = state;
        String str = "loading";
        switch (state) {
            case Loading:
                str = "loading";
                break;
            case Default:
                str = "default";
                break;
            case Hidden:
                str = "hidden";
                break;
            case Resized:
                str = "resized";
                break;
            case Expanded:
                str = "expanded";
                break;
        }
        this.webView.injectJavascript("mraid.setState('" + str + "');");
    }

    public void setSupportedFeature(Consts.Feature feature, boolean z) {
        String str = Consts.False;
        if (z) {
            str = "true";
        }
        String str2 = null;
        switch (feature) {
            case SMS:
                str2 = "sms";
                break;
            case Tel:
                str2 = "tel";
                break;
            case Calendar:
                str2 = Consts.FeatureCalendar;
                break;
            case StorePicture:
                str2 = "storePicture";
                break;
            case InlineVideo:
                str2 = Consts.FeatureInlineVideo;
                break;
        }
        if (str2 != null) {
            this.webView.injectJavascript("mraid.setSupports('" + str2 + "', " + str + ");");
        }
    }

    public void sendReady() {
        this.webView.injectJavascript("mraid.fireEvent('ready');");
    }

    public void setViewable(boolean z) {
        String str = Consts.False;
        if (z) {
            str = "true";
        }
        this.webView.injectJavascript("mraid.setViewable(" + str + ");");
    }

    public void setScreenSize(int i, int i2) {
        this.webView.injectJavascript("mraid.setScreenSize({width:" + i + ",height:" + i2 + "});");
    }

    public void setMaxSize(int i, int i2) {
        this.webView.injectJavascript("mraid.setMaxSize({width:" + i + ",height:" + i2 + "});");
    }

    public void setCurrentPosition(int i, int i2, int i3, int i4) {
        this.webView.injectJavascript("mraid.setCurrentPosition({x:" + i + ",y:" + i2 + ",width:" + i3 + ",height:" + i4 + "});");
    }

    public void setDefaultPosition(int i, int i2, int i3, int i4) {
        this.webView.injectJavascript("mraid.setDefaultPosition({x:" + i + ",y:" + i2 + ",width:" + i3 + ",height:" + i4 + "});");
    }

    public ExpandProperties getExpandProperties() {
        return this.expandProperties;
    }

    public void setExpandProperties(ExpandProperties expandProperties) {
        this.webView.injectJavascript("mraid.setExpandProperties(" + expandProperties.toString() + ");");
    }

    public OrientationProperties getOrientationProperties() {
        return this.orientationProperties;
    }

    public void setOrientationProperties(OrientationProperties orientationProperties) {
        this.webView.injectJavascript("mraid.setOrientationProperties(" + orientationProperties.toString() + ");");
    }

    public ResizeProperties getResizeProperties() {
        return this.resizeProperties;
    }

    public void setResizeProperties(ResizeProperties resizeProperties) {
        this.webView.injectJavascript("mraid.setResizeProperties(" + resizeProperties.toString() + ");");
    }

    public void sendPictureAdded(boolean z) {
        String str = Consts.False;
        if (z) {
            str = "true";
        }
        this.webView.injectJavascript("mraid.firePictureAddedEvent(" + str + ");");
    }

    @JavascriptInterface
    public void nativeInvoke(String str) {
        if (!TextUtils.isEmpty(str) && !str.startsWith("console")) {
            try {
                URI uri = new URI(str);
                if ("mraid".equals(uri.getScheme().toLowerCase(Locale.US))) {
                    String lowerCase = uri.getHost().toLowerCase(Locale.US);
                    String rawQuery = uri.getRawQuery();
                    HashMap hashMap = new HashMap(10);
                    if (rawQuery != null) {
                        try {
                            for (String str2 : rawQuery.split("\\&")) {
                                String[] split = str2.split("\\=");
                                if (split.length == 2) {
                                    hashMap.put(URLDecoder.decode(split[0], "UTF-8"), URLDecoder.decode(split[1], "UTF-8"));
                                }
                            }
                        } catch (Exception e) {
                        }
                    }
                    if (Consts.CommandInit.equals(lowerCase)) {
                        this.handler.mraidInit(this);
                    } else if ("close".equals(lowerCase)) {
                        this.handler.mraidClose(this);
                    } else if ("open".equals(lowerCase)) {
                        this.handler.mraidOpen(this, (String) hashMap.get("url"));
                    } else if (Consts.CommandUpdateCurrentPosition.equals(lowerCase)) {
                        this.handler.mraidUpdateCurrentPosition(this);
                    } else if ("expand".equals(lowerCase)) {
                        this.handler.mraidExpand(this, (String) hashMap.get("url"));
                    } else if (Consts.CommandSetExpandProperties.equals(lowerCase)) {
                        this.expandProperties = ExpandProperties.propertiesFromArgs(hashMap);
                        this.handler.mraidUpdatedExpandProperties(this);
                    } else if (Consts.CommandSetOrientationProperties.equals(lowerCase)) {
                        this.orientationProperties = OrientationProperties.propertiesFromArgs(hashMap);
                        this.handler.mraidUpdatedOrientationProperties(this);
                    } else if ("resize".equals(lowerCase)) {
                        this.handler.mraidResize(this);
                    } else if (Consts.CommandSetResizeProperties.equals(lowerCase)) {
                        this.resizeProperties = ResizeProperties.propertiesFromArgs(hashMap);
                        this.handler.mraidUpdatedResizeProperties(this);
                    } else if (Consts.CommandPlayVideo.equals(lowerCase)) {
                        this.handler.mraidPlayVideo(this, (String) hashMap.get("url"));
                    } else if (Consts.CommandCreateCalendarEvent.equals(lowerCase)) {
                        this.handler.mraidCreateCalendarEvent(this, (String) hashMap.get("event"));
                    } else if (Consts.CommandStorePicture.equals(lowerCase)) {
                        this.handler.mraidStorePicture(this, (String) hashMap.get("url"));
                    }
                }
            } catch (URISyntaxException e2) {
            }
        }
    }
}
