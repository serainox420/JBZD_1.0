package com.unity3d.ads.adunit;

import android.app.Activity;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.mopub.mobileads.resource.DrawableConstants;
import com.openx.view.mraid.JSInterface;
import com.unity3d.ads.api.AdUnit;
import com.unity3d.ads.api.VideoPlayer;
import com.unity3d.ads.log.DeviceLog;
import com.unity3d.ads.misc.ViewUtilities;
import com.unity3d.ads.video.VideoPlayerView;
import com.unity3d.ads.webview.WebViewApp;
import com.unity3d.ads.webview.WebViewEventCategory;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes3.dex */
public class AdUnitActivity extends Activity {
    public static final String EXTRA_ACTIVITY_ID = "activityId";
    public static final String EXTRA_KEEP_SCREEN_ON = "keepScreenOn";
    public static final String EXTRA_KEY_EVENT_LIST = "keyEvents";
    public static final String EXTRA_ORIENTATION = "orientation";
    public static final String EXTRA_SYSTEM_UI_VISIBILITY = "systemUiVisibility";
    public static final String EXTRA_VIEWS = "views";
    private int _activityId;
    boolean _keepScreenOn;
    private ArrayList<Integer> _keyEventList;
    private RelativeLayout _layout;
    private int _orientation = -1;
    private int _systemUiVisibility;
    private RelativeLayout _videoContainer;
    private String[] _views;

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        AdUnitEvent adUnitEvent;
        super.onCreate(bundle);
        if (WebViewApp.getCurrentApp() == null) {
            DeviceLog.error("Unity Ads web app is null, closing Unity Ads activity from onCreate");
            finish();
            return;
        }
        AdUnit.setAdUnitActivity(this);
        createLayout();
        ViewUtilities.removeViewFromParent(this._layout);
        addContentView(this._layout, this._layout.getLayoutParams());
        if (bundle == null) {
            this._views = getIntent().getStringArrayExtra(EXTRA_VIEWS);
            this._keyEventList = getIntent().getIntegerArrayListExtra(EXTRA_KEY_EVENT_LIST);
            if (getIntent().hasExtra("orientation")) {
                this._orientation = getIntent().getIntExtra("orientation", -1);
            }
            if (getIntent().hasExtra(EXTRA_SYSTEM_UI_VISIBILITY)) {
                this._systemUiVisibility = getIntent().getIntExtra(EXTRA_SYSTEM_UI_VISIBILITY, 0);
            }
            if (getIntent().hasExtra(EXTRA_ACTIVITY_ID)) {
                this._activityId = getIntent().getIntExtra(EXTRA_ACTIVITY_ID, -1);
            }
            adUnitEvent = AdUnitEvent.ON_CREATE;
        } else {
            this._views = bundle.getStringArray(EXTRA_VIEWS);
            this._orientation = bundle.getInt("orientation", -1);
            this._systemUiVisibility = bundle.getInt(EXTRA_SYSTEM_UI_VISIBILITY, 0);
            this._keyEventList = bundle.getIntegerArrayList(EXTRA_KEY_EVENT_LIST);
            this._keepScreenOn = bundle.getBoolean(EXTRA_KEEP_SCREEN_ON);
            this._activityId = bundle.getInt(EXTRA_ACTIVITY_ID, -1);
            setKeepScreenOn(this._keepScreenOn);
            adUnitEvent = AdUnitEvent.ON_RESTORE;
        }
        setOrientation(this._orientation);
        setSystemUiVisibility(this._systemUiVisibility);
        if (this._views != null && Arrays.asList(this._views).contains("videoplayer")) {
            createVideoPlayer();
        }
        WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.ADUNIT, adUnitEvent, Integer.valueOf(this._activityId));
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        if (WebViewApp.getCurrentApp() == null) {
            if (!isFinishing()) {
                DeviceLog.error("Unity Ads web app is null, closing Unity Ads activity from onStart");
                finish();
                return;
            }
            return;
        }
        WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.ADUNIT, AdUnitEvent.ON_START, Integer.valueOf(this._activityId));
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        if (WebViewApp.getCurrentApp() == null) {
            if (!isFinishing()) {
                DeviceLog.error("Unity Ads web app is null, closing Unity Ads activity from onStop");
                finish();
                return;
            }
            return;
        }
        WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.ADUNIT, AdUnitEvent.ON_STOP, Integer.valueOf(this._activityId));
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (WebViewApp.getCurrentApp() == null) {
            if (!isFinishing()) {
                DeviceLog.error("Unity Ads web app is null, closing Unity Ads activity from onResume");
                finish();
                return;
            }
            return;
        }
        setViews(this._views);
        WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.ADUNIT, AdUnitEvent.ON_RESUME, Integer.valueOf(this._activityId));
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        if (WebViewApp.getCurrentApp() == null) {
            if (!isFinishing()) {
                DeviceLog.error("Unity Ads web app is null, closing Unity Ads activity from onPause");
                finish();
                return;
            }
            return;
        }
        if (isFinishing()) {
            ViewUtilities.removeViewFromParent(WebViewApp.getCurrentApp().getWebView());
        }
        destroyVideoPlayer();
        WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.ADUNIT, AdUnitEvent.ON_PAUSE, Boolean.valueOf(isFinishing()), Integer.valueOf(this._activityId));
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("orientation", this._orientation);
        bundle.putInt(EXTRA_SYSTEM_UI_VISIBILITY, this._systemUiVisibility);
        bundle.putIntegerArrayList(EXTRA_KEY_EVENT_LIST, this._keyEventList);
        bundle.putBoolean(EXTRA_KEEP_SCREEN_ON, this._keepScreenOn);
        bundle.putStringArray(EXTRA_VIEWS, this._views);
        bundle.putInt(EXTRA_ACTIVITY_ID, this._activityId);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        if (WebViewApp.getCurrentApp() == null) {
            if (!isFinishing()) {
                DeviceLog.error("Unity Ads web app is null, closing Unity Ads activity from onDestroy");
                finish();
                return;
            }
            return;
        }
        WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.ADUNIT, AdUnitEvent.ON_DESTROY, Boolean.valueOf(isFinishing()), Integer.valueOf(this._activityId));
        if (AdUnit.getCurrentAdUnitActivityId() == this._activityId) {
            AdUnit.setAdUnitActivity(null);
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (this._keyEventList == null || !this._keyEventList.contains(Integer.valueOf(i))) {
            return false;
        }
        WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.ADUNIT, AdUnitEvent.KEY_DOWN, Integer.valueOf(i), Long.valueOf(keyEvent.getEventTime()), Long.valueOf(keyEvent.getDownTime()), Integer.valueOf(keyEvent.getRepeatCount()), Integer.valueOf(this._activityId));
        return true;
    }

    public void setViewFrame(String str, int i, int i2, int i3, int i4) {
        View view = null;
        if (str.equals("adunit")) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i3, i4);
            layoutParams.setMargins(i, i2, 0, 0);
            this._layout.setLayoutParams(layoutParams);
        } else if (str.equals("videoplayer")) {
            view = this._videoContainer;
        } else if (str.equals("webview")) {
            view = WebViewApp.getCurrentApp().getWebView();
        }
        if (view != null) {
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(i3, i4);
            layoutParams2.setMargins(i, i2, 0, 0);
            view.setLayoutParams(layoutParams2);
        }
    }

    public Map<String, Integer> getViewFrame(String str) {
        RelativeLayout webView;
        if (str.equals("adunit")) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this._layout.getLayoutParams();
            HashMap hashMap = new HashMap();
            hashMap.put(JSInterface.JSON_X, Integer.valueOf(layoutParams.leftMargin));
            hashMap.put(JSInterface.JSON_Y, Integer.valueOf(layoutParams.topMargin));
            hashMap.put("width", Integer.valueOf(this._layout.getWidth()));
            hashMap.put("height", Integer.valueOf(this._layout.getHeight()));
            return hashMap;
        }
        if (str.equals("videoplayer")) {
            webView = this._videoContainer;
        } else {
            webView = str.equals("webview") ? WebViewApp.getCurrentApp().getWebView() : null;
        }
        if (webView == null) {
            return null;
        }
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) webView.getLayoutParams();
        HashMap hashMap2 = new HashMap();
        hashMap2.put(JSInterface.JSON_X, Integer.valueOf(layoutParams2.leftMargin));
        hashMap2.put(JSInterface.JSON_Y, Integer.valueOf(layoutParams2.topMargin));
        hashMap2.put("width", Integer.valueOf(webView.getWidth()));
        hashMap2.put("height", Integer.valueOf(webView.getHeight()));
        return hashMap2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public void setViews(String[] strArr) {
        boolean z;
        if (strArr == null) {
            strArr = new String[0];
        }
        ArrayList arrayList = new ArrayList(Arrays.asList(strArr));
        if (this._views == null) {
            this._views = new String[0];
        }
        ArrayList arrayList2 = new ArrayList(Arrays.asList(this._views));
        arrayList2.removeAll(arrayList);
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            switch (str.hashCode()) {
                case 1224424441:
                    if (str.equals("webview")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1865295644:
                    if (str.equals("videoplayer")) {
                        z = false;
                        break;
                    }
                    z = true;
                    break;
                default:
                    z = true;
                    break;
            }
            switch (z) {
                case false:
                    destroyVideoPlayer();
                    break;
                case true:
                    ViewUtilities.removeViewFromParent(WebViewApp.getCurrentApp().getWebView());
                    break;
            }
        }
        this._views = strArr;
        for (String str2 : strArr) {
            if (str2 != null) {
                if (str2.equals("videoplayer")) {
                    createVideoPlayer();
                    handleViewPlacement(this._videoContainer);
                } else if (!str2.equals("webview")) {
                    continue;
                } else if (WebViewApp.getCurrentApp() != null) {
                    handleViewPlacement(WebViewApp.getCurrentApp().getWebView());
                } else {
                    DeviceLog.error("WebApp IS NULL!");
                    throw new NullPointerException();
                }
            }
        }
    }

    private void handleViewPlacement(View view) {
        if (view.getParent() != null && view.getParent().equals(this._layout)) {
            this._layout.bringChildToFront(view);
            return;
        }
        ViewUtilities.removeViewFromParent(view);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        layoutParams.setMargins(0, 0, 0, 0);
        view.setPadding(0, 0, 0, 0);
        this._layout.addView(view, layoutParams);
    }

    public String[] getViews() {
        return this._views;
    }

    public void setOrientation(int i) {
        this._orientation = i;
        setRequestedOrientation(i);
    }

    public boolean setKeepScreenOn(boolean z) {
        this._keepScreenOn = z;
        if (getWindow() == null) {
            return false;
        }
        if (z) {
            getWindow().addFlags(128);
        } else {
            getWindow().clearFlags(128);
        }
        return true;
    }

    public boolean setSystemUiVisibility(int i) {
        this._systemUiVisibility = i;
        if (Build.VERSION.SDK_INT >= 11) {
            try {
                getWindow().getDecorView().setSystemUiVisibility(i);
                return true;
            } catch (Exception e) {
                DeviceLog.exception("Error while setting SystemUIVisibility", e);
                return false;
            }
        }
        return false;
    }

    public void setKeyEventList(ArrayList<Integer> arrayList) {
        this._keyEventList = arrayList;
    }

    private void createLayout() {
        if (this._layout == null) {
            this._layout = new RelativeLayout(this);
            this._layout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
            ViewUtilities.setBackground(this._layout, new ColorDrawable(DrawableConstants.CtaButton.BACKGROUND_COLOR));
        }
    }

    private void createVideoPlayer() {
        if (this._videoContainer == null) {
            this._videoContainer = new RelativeLayout(this);
        }
        if (VideoPlayer.getVideoPlayerView() == null) {
            VideoPlayer.setVideoPlayerView(new VideoPlayerView(this));
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.addRule(13);
            VideoPlayer.getVideoPlayerView().setLayoutParams(layoutParams);
            this._videoContainer.addView(VideoPlayer.getVideoPlayerView());
        }
    }

    private void destroyVideoPlayer() {
        if (VideoPlayer.getVideoPlayerView() != null) {
            VideoPlayer.getVideoPlayerView().stopVideoProgressTimer();
            VideoPlayer.getVideoPlayerView().stopPlayback();
            ViewUtilities.removeViewFromParent(VideoPlayer.getVideoPlayerView());
        }
        VideoPlayer.setVideoPlayerView(null);
        if (this._videoContainer != null) {
            ViewUtilities.removeViewFromParent(this._videoContainer);
            this._videoContainer = null;
        }
    }
}
