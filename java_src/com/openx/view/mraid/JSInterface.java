package com.openx.view.mraid;

import android.webkit.JavascriptInterface;
/* loaded from: classes.dex */
public interface JSInterface {
    public static final String ACTION_CLOSE = "close";
    public static final String ACTION_CREATE_CALENDAR_EVENT = "createCalendarEvent";
    public static final String ACTION_EXPAND = "expand";
    public static final String ACTION_GET_CURRENT_POSITION = "getCurrentPosition";
    public static final String ACTION_GET_DEFAULT_POSITION = "getDefaultPosition";
    public static final String ACTION_GET_MAX_SIZE = "getMaxSize";
    public static final String ACTION_GET_PLACEMENT_TYPE = "getPlacementType";
    public static final String ACTION_GET_SCREEN_SIZE = "getScreenSize";
    public static final String ACTION_OPEN = "open";
    public static final String ACTION_PLAY_VIDEO = "playVideo";
    public static final String ACTION_RESIZE = "resize";
    public static final String ACTION_STORE_PICTURE = "storePicture";
    public static final String JSON_HEIGHT = "height";
    public static final String JSON_IS_MODAL = "isModal";
    public static final String JSON_METHOD = "method";
    public static final String JSON_USE_CUSTOM_CLOSE = "useCustomClose";
    public static final String JSON_VALUE = "value";
    public static final String JSON_WIDTH = "width";
    public static final String JSON_X = "x";
    public static final String JSON_Y = "y";
    public static final String STATE_DEFAULT = "default";
    public static final String STATE_EXPANDED = "expanded";
    public static final String STATE_HIDDEN = "hidden";
    public static final String STATE_LOADING = "loading";
    public static final String STATE_RESIZED = "resized";

    @JavascriptInterface
    void close();

    @JavascriptInterface
    void createCalendarEvent(String str);

    @JavascriptInterface
    void expand();

    @JavascriptInterface
    void expand(String str);

    @JavascriptInterface
    String getCurrentPosition();

    @JavascriptInterface
    String getDefaultPosition();

    @JavascriptInterface
    String getMaxSize();

    @JavascriptInterface
    String getPlacementType();

    @JavascriptInterface
    String getScreenSize();

    @JavascriptInterface
    void javaScriptCallback(String str, String str2, String str3);

    @JavascriptInterface
    void onOrientationPropertiesChanged(String str);

    @JavascriptInterface
    void open(String str);

    @JavascriptInterface
    void playVideo(String str);

    @JavascriptInterface
    void resize();

    @JavascriptInterface
    void storePicture(String str);

    @JavascriptInterface
    boolean supports(String str);
}
