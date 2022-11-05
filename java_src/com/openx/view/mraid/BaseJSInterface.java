package com.openx.view.mraid;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.webkit.JavascriptInterface;
import android.widget.PopupWindow;
import com.openx.common.deviceData.listeners.DeviceInfoListener;
import com.openx.common.utils.helpers.Utils;
import com.openx.common.utils.logger.OXLog;
import com.openx.core.network.BaseNetworkTask;
import com.openx.core.network.BaseResponseHandler;
import com.openx.core.network.ResponseHandler;
import com.openx.core.sdk.OXMManagersResolver;
import com.openx.core.sdk.OXSettings;
import com.openx.errors.UnknownError;
import com.openx.model.Ad;
import com.openx.model.AdCreative;
import com.openx.view.WebViewBase;
import com.openx.view.mraid.methods.CalendarEvent;
import com.openx.view.mraid.methods.Close;
import com.openx.view.mraid.methods.Expand;
import com.openx.view.mraid.methods.Open;
import com.openx.view.mraid.methods.PlayVideo;
import com.openx.view.mraid.methods.Resize;
import com.openx.view.mraid.methods.StorePicture;
import com.openx.view.mraid.network.GetOriginalUrlTask;
import com.openx.view.mraid.network.RedirectURLListener;
import com.pubmatic.sdk.banner.mraid.Consts;
import java.util.Hashtable;
import org.json.JSONObject;
@SuppressLint({"NewApi"})
/* loaded from: classes.dex */
public class BaseJSInterface implements BaseResponseHandler, JSInterface {
    private static final int MAX_REDIRECTS = 3;
    public static String disabledFlags = null;
    private WebViewBase adBaseView;
    private Context context;
    private ViewGroup.LayoutParams mDefaultLayoutParams;
    private boolean mLaunchedWithURL;
    private PopupWindow mResizedAdWindow;
    private Boolean mRestoreState;
    private String mURLForLaunching;
    CalendarEvent mraidCalendarEvent;
    private Close mraidClose;
    private Expand mraidExpand;
    private Open mraidOpen;
    private PlayVideo mraidPlayVideo;
    private Resize mraidResize;
    private StorePicture mraidStorePicture;
    private Hashtable<String, Handler> mHandlersQueue = new Hashtable<>();
    private String mCurrentState = null;
    private Boolean mCurrentViewable = null;
    private String mExpandProperties = null;
    private String mOrientationProperties = null;

    public BaseJSInterface(Context context, WebViewBase webViewBase) {
        this.context = context;
        this.adBaseView = webViewBase;
    }

    public WebViewBase getAdBaseView() {
        return this.adBaseView;
    }

    public Close getMRAIDClose() {
        return this.mraidClose == null ? new Close(this.context, this, this.adBaseView) : this.mraidClose;
    }

    @JavascriptInterface
    public void setBackgroundWhite() {
        this.adBaseView.setBackgroundColor(-1);
    }

    @JavascriptInterface
    public void getImageWidth(int i, int i2, String str) {
        OXLog.debug("imagesrc", i + " x " + i2 + "src: " + str);
    }

    @Override // com.openx.view.mraid.JSInterface
    @JavascriptInterface
    public String getMaxSize() {
        JSONObject jSONObject = new JSONObject();
        try {
            Rect windowVisibleRect = getWindowVisibleRect();
            jSONObject.put("width", (int) (windowVisibleRect.width() / Utils.DENSITY));
            jSONObject.put("height", (int) (windowVisibleRect.height() / Utils.DENSITY));
            return jSONObject.toString();
        } catch (Exception e) {
            Utils.log(this, e.getMessage());
            return "{}";
        }
    }

    @Override // com.openx.view.mraid.JSInterface
    @JavascriptInterface
    public String getScreenSize() {
        JSONObject jSONObject = new JSONObject();
        try {
            DeviceInfoListener deviceManager = OXMManagersResolver.getInstance().getDeviceManager();
            jSONObject.put("width", (int) (deviceManager.getScreenWidth() / Utils.DENSITY));
            jSONObject.put("height", (int) (deviceManager.getScreenHeight() / Utils.DENSITY));
            return jSONObject.toString();
        } catch (Exception e) {
            Utils.log(this, e.getMessage());
            return "{}";
        }
    }

    @Override // com.openx.view.mraid.JSInterface
    @JavascriptInterface
    public String getDefaultPosition() {
        JSONObject jSONObject = new JSONObject();
        try {
            Rect defaultPosition = this.adBaseView.getDefaultPosition();
            jSONObject.put(JSInterface.JSON_X, (int) (defaultPosition.left / Utils.DENSITY));
            jSONObject.put(JSInterface.JSON_Y, (int) (defaultPosition.top / Utils.DENSITY));
            jSONObject.put("width", (int) ((defaultPosition.right / Utils.DENSITY) - (defaultPosition.left / Utils.DENSITY)));
            jSONObject.put("height", (int) ((defaultPosition.bottom / Utils.DENSITY) - (defaultPosition.top / Utils.DENSITY)));
            return jSONObject.toString();
        } catch (Exception e) {
            Utils.log(this, e.getMessage());
            return "{}";
        }
    }

    @Override // com.openx.view.mraid.JSInterface
    @JavascriptInterface
    public String getCurrentPosition() {
        JSONObject jSONObject = new JSONObject();
        try {
            Rect rect = new Rect();
            this.adBaseView.getGlobalVisibleRect(rect);
            jSONObject.put(JSInterface.JSON_X, (int) (rect.left / Utils.DENSITY));
            jSONObject.put(JSInterface.JSON_Y, (int) (rect.top / Utils.DENSITY));
            jSONObject.put("width", (int) ((rect.right / Utils.DENSITY) - (rect.left / Utils.DENSITY)));
            jSONObject.put("height", (int) ((rect.bottom / Utils.DENSITY) - (rect.top / Utils.DENSITY)));
            return jSONObject.toString();
        } catch (Exception e) {
            Utils.log(this, e.getMessage());
            return "{}";
        }
    }

    @Override // com.openx.view.mraid.JSInterface
    @JavascriptInterface
    public void onOrientationPropertiesChanged(String str) {
    }

    @JavascriptInterface
    public String getPlacementType() {
        return null;
    }

    @Override // com.openx.view.mraid.JSInterface
    @JavascriptInterface
    public void close() {
        if (this.mraidClose == null) {
            this.mraidClose = new Close(this.context, this, this.adBaseView);
        }
        this.mraidClose.closeThroughJS(true);
    }

    @Override // com.openx.view.mraid.JSInterface
    @JavascriptInterface
    public void resize() {
        this.adBaseView.stoppedLoading();
        if (this.mraidResize == null) {
            this.mraidResize = new Resize(this.context, this, this.adBaseView);
        }
        this.mraidResize.resize();
    }

    @Override // com.openx.view.mraid.JSInterface
    @JavascriptInterface
    public void expand() {
        OXLog.debug("MRAID", "stopping loading and calling mraidExpand 0");
        this.adBaseView.stoppedLoading();
        expand(null);
    }

    @Override // com.openx.view.mraid.JSInterface
    @JavascriptInterface
    public void expand(final String str) {
        OXLog.debug("MRAID", "stopping loading and calling mraidExpand");
        if (this.mraidExpand == null) {
            this.mraidExpand = new Expand(this.context, this, this.adBaseView);
        }
        ((Activity) this.context).runOnUiThread(new Runnable() { // from class: com.openx.view.mraid.BaseJSInterface.1
            @Override // java.lang.Runnable
            public void run() {
                OXLog.debug("MRAID", "stopping loading and calling mraidExpand 1");
                BaseJSInterface.this.adBaseView.stoppedLoading();
                BaseJSInterface.this.mraidExpand.expand(str);
            }
        });
    }

    @Override // com.openx.view.mraid.JSInterface
    @JavascriptInterface
    public void open(String str) {
        if (this.mraidOpen == null) {
            this.mraidOpen = new Open(this.context, this, this.adBaseView);
        }
        this.mraidOpen.open(str);
    }

    @Override // com.openx.view.mraid.JSInterface
    @JavascriptInterface
    public void javaScriptCallback(String str, String str2, String str3) {
        Handler findHandler = findHandler(str);
        if (findHandler != null) {
            Message message = new Message();
            Bundle bundle = new Bundle();
            bundle.putString(JSInterface.JSON_METHOD, str2);
            bundle.putString("value", str3);
            message.setData(bundle);
            findHandler.dispatchMessage(message);
            removeHandler(str);
        }
    }

    @Override // com.openx.view.mraid.JSInterface
    @JavascriptInterface
    public void createCalendarEvent(String str) {
        if (this.mraidCalendarEvent == null) {
            this.mraidCalendarEvent = new CalendarEvent(this.context, this, this.adBaseView);
        }
        this.mraidCalendarEvent.createCalendarEvent(str);
    }

    @Override // com.openx.view.mraid.JSInterface
    @JavascriptInterface
    public void storePicture(String str) {
        if (this.mraidStorePicture == null) {
            this.mraidStorePicture = new StorePicture(this.context, this, this.adBaseView);
        }
        this.mraidStorePicture.storePicture(str);
    }

    @Override // com.openx.view.mraid.JSInterface
    @JavascriptInterface
    public boolean supports(String str) {
        if (str == null || str.equals("")) {
            return false;
        }
        if (str.equalsIgnoreCase("sms")) {
            return OXMManagersResolver.getInstance().getDeviceManager().hasTelephony();
        }
        if (str.equalsIgnoreCase("tel")) {
            return OXMManagersResolver.getInstance().getDeviceManager().hasTelephony();
        }
        if (str.equalsIgnoreCase(Consts.FeatureCalendar)) {
            return true;
        }
        if (str.equalsIgnoreCase("storePicture")) {
            return OXMManagersResolver.getInstance().getDeviceManager().canStorePicture();
        }
        return str.equalsIgnoreCase(Consts.FeatureInlineVideo) && Utils.atLeastHoneycomb() && this.adBaseView.isHardwareAccelerated();
    }

    @Override // com.openx.view.mraid.JSInterface
    @JavascriptInterface
    public void playVideo(String str) {
        if (this.mraidPlayVideo == null) {
            this.mraidPlayVideo = new PlayVideo(this.context, this, this.adBaseView);
        }
        this.mraidPlayVideo.playVideo(str);
    }

    public Rect getWindowVisibleRect() {
        if (((Activity) this.context) != null) {
            Rect rect = new Rect();
            ((Activity) this.context).getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
            return rect;
        }
        return null;
    }

    public void onError(String str, String str2) {
        evaluateJavaScript(String.format("mraid.onError('%1$s', '%2$s');", str, str2));
    }

    public void onReady() {
        if (this.adBaseView.getDefaultPosition() == null) {
            this.adBaseView.post(new Runnable() { // from class: com.openx.view.mraid.BaseJSInterface.2
                @Override // java.lang.Runnable
                public void run() {
                    Rect rect = new Rect();
                    BaseJSInterface.this.adBaseView.getGlobalVisibleRect(rect);
                    BaseJSInterface.this.adBaseView.setDefaultPosition(rect);
                }
            });
        }
        if (this.adBaseView != null) {
            this.adBaseView.loadUrl("javascript: if (window.mraid) { mraid.onReady(); " + (disabledFlags == null ? "" : disabledFlags) + "}");
        }
    }

    protected void onSizeChange(int i, int i2) {
        evaluateJavaScript(String.format("mraid.onSizeChange(%d, %d);", Integer.valueOf(i), Integer.valueOf(i2)));
    }

    public void onStateChange(String str) {
        if (str != null) {
            if (this.mCurrentState == null || !this.mCurrentState.equals(str)) {
                this.mCurrentState = str;
                evaluateJavaScript(String.format("mraid.onStateChange('%1$s');", str));
            }
        }
    }

    public void onViewableChange(boolean z) {
        if (this.mCurrentViewable == null || this.mCurrentViewable.booleanValue() != z) {
            this.mCurrentViewable = Boolean.valueOf(z);
            evaluateJavaScript(String.format("mraid.onViewableChange(%1$b);", Boolean.valueOf(z)));
        }
    }

    public void getResizeProperties(Handler handler) {
        callJavaScriptMethodWithResult("getResizeProperties", handler);
    }

    public void getExpandProperties(Handler handler) {
        callJavaScriptMethodWithResult("getExpandProperties", handler);
    }

    public void getOrientationProperties(Handler handler) {
        callJavaScriptMethodWithResult("getOrientationProperties", handler);
    }

    public void getState(Handler handler) {
        callJavaScriptMethodWithResult("getState", handler);
    }

    public void isViewable(Handler handler) {
        callJavaScriptMethodWithResult("isViewable", handler);
    }

    protected void clearFlags() {
        this.mCurrentState = null;
        this.mCurrentViewable = null;
    }

    public void followToOriginalUrl(String str, RedirectURLListener redirectURLListener) {
        GetOriginalUrlTask getOriginalUrlTask = new GetOriginalUrlTask(new getOriginalURLCallBack(redirectURLListener));
        BaseNetworkTask.GetUrlParams getUrlParams = new BaseNetworkTask.GetUrlParams();
        getUrlParams.url = str;
        getUrlParams.userAgent = OXSettings.userAgent;
        getOriginalUrlTask.execute(new BaseNetworkTask.GetUrlParams[]{getUrlParams});
    }

    /* loaded from: classes3.dex */
    private class getOriginalURLCallBack implements ResponseHandler {
        RedirectURLListener listener;

        public getOriginalURLCallBack(RedirectURLListener redirectURLListener) {
            this.listener = redirectURLListener;
        }

        @Override // com.openx.core.network.ResponseHandler
        public void processResponse(BaseNetworkTask.GetUrlResult getUrlResult) {
            if (getUrlResult != null) {
                if (!TextUtils.isEmpty(getUrlResult.originalUrl)) {
                    Utils.log(this, String.format(Utils.getLogMessage("server_redirected"), getUrlResult.originalUrl));
                }
                if (this.listener != null) {
                    this.listener.onSuccess(getUrlResult.originalUrl, getUrlResult.contentType);
                    return;
                }
                return;
            }
            if (this.listener != null) {
                this.listener.onFailed();
            }
            Utils.log(this, Utils.getLogMessage("server_redirected_to_incorrect_url"));
        }

        @Override // com.openx.core.network.ResponseHandler
        public void processError(String str) {
            Utils.log(this, new UnknownError(str).getMessage());
            if (this.listener != null) {
                this.listener.onFailed();
            }
        }

        @Override // com.openx.core.network.ResponseHandler
        public void processError(String str, Throwable th) {
            Utils.log(this, new UnknownError(str).getMessage());
            if (this.listener != null) {
                this.listener.onFailed();
            }
        }
    }

    public boolean hasRestoreStateFlag() {
        return this.mRestoreState != null;
    }

    protected void setRestoreStateOnPopupClose(boolean z) {
        this.mRestoreState = Boolean.valueOf(z);
    }

    public boolean getRestoreStateOnPopupClose() {
        boolean booleanValue = this.mRestoreState.booleanValue();
        this.mRestoreState = null;
        return booleanValue;
    }

    public void setOrientationProperties(String str) {
        this.mOrientationProperties = str;
    }

    public String getOrientationProperties() {
        return this.mOrientationProperties;
    }

    public void setExpandProperties(String str) {
        this.mExpandProperties = str;
    }

    public String getExpandProperties() {
        return this.mExpandProperties;
    }

    public String getURLForLaunching() {
        return this.mURLForLaunching == null ? "" : this.mURLForLaunching;
    }

    public void setURLForLaunching(String str) {
        this.mURLForLaunching = str;
    }

    public boolean isLaunchWithURL() {
        return this.mLaunchedWithURL;
    }

    public void setDefaultLayoutParams(ViewGroup.LayoutParams layoutParams) {
        this.mDefaultLayoutParams = layoutParams;
    }

    public ViewGroup.LayoutParams getDefaultLayoutParams() {
        return this.mDefaultLayoutParams;
    }

    public void setLaunchWithURL(boolean z) {
        this.mLaunchedWithURL = z;
    }

    private Hashtable<String, Handler> getHandlersQueue() {
        return this.mHandlersQueue;
    }

    public void setResizedAdWindow(PopupWindow popupWindow) {
        this.mResizedAdWindow = popupWindow;
    }

    public PopupWindow getResizedAdWindow() {
        return this.mResizedAdWindow;
    }

    public boolean isResizedAdWindowOpened() {
        return getResizedAdWindow() != null;
    }

    public void closeResizedAdWindow(boolean z) {
        if (isResizedAdWindowOpened()) {
            setRestoreStateOnPopupClose(z);
            getResizedAdWindow().dismiss();
        }
    }

    protected void callJavaScriptMethodWithResult(String str, Handler handler) {
        if (this.adBaseView.isMRAID()) {
            String queueHandler = queueHandler(handler);
            if (queueHandler != null) {
                evaluateJavaScript("jsBridge.javaScriptCallback('" + queueHandler + "', '" + str + "', (function() { var retVal = mraid." + str + "(); if (typeof retVal === 'object') { retVal = JSON.stringify(retVal); } return retVal; })())");
            }
        } else if (handler != null) {
            Message message = new Message();
            Bundle bundle = new Bundle();
            bundle.putString(JSInterface.JSON_METHOD, str);
            bundle.putString("value", "");
            message.setData(bundle);
            handler.dispatchMessage(message);
        }
    }

    private void evaluateJavaScript(final String str) {
        OXLog.debug("BaseJSInterface", "BaseJSInterface: evaluateJavaScript: " + str);
        ((Activity) this.adBaseView.getContext()).runOnUiThread(new Runnable() { // from class: com.openx.view.mraid.BaseJSInterface.3
            @Override // java.lang.Runnable
            public void run() {
                BaseJSInterface.this.adBaseView.loadUrl("javascript: if (window.mraid && (window.mraid.getState() != 'loading' ) && ( window.mraid.getState() != 'hidden') ) { " + str + " }");
            }
        });
    }

    private String queueHandler(Handler handler) {
        if (handler == null) {
            return null;
        }
        String valueOf = String.valueOf(System.identityHashCode(handler));
        if (getHandlersQueue().containsKey(valueOf)) {
            getHandlersQueue().remove(valueOf);
        }
        getHandlersQueue().put(valueOf, handler);
        return valueOf;
    }

    private Handler findHandler(String str) {
        if (str == null || str.equals("") || !getHandlersQueue().containsKey(str)) {
            return null;
        }
        return getHandlersQueue().get(str);
    }

    private void removeHandler(String str) {
        if (str != null && !str.equals("") && getHandlersQueue().containsKey(str)) {
            getHandlersQueue().remove(str);
        }
    }

    public AdCreative getCreative() {
        Ad ad = this.adBaseView.getAd();
        if (ad == null || ad.getCreatives() == null || ad.getCreatives().size() <= 0) {
            return null;
        }
        return ad.getCreatives().elementAt(0);
    }
}
