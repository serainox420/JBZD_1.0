package com.millennialmedia.internal.video;

import android.content.Context;
import android.webkit.JavascriptInterface;
import com.facebook.common.time.Clock;
import com.millennialmedia.MMLog;
import com.millennialmedia.internal.Handshake;
import com.millennialmedia.internal.MMWebView;
import com.millennialmedia.internal.adcontrollers.VASTVideoController;
import com.millennialmedia.internal.utils.EnvironmentUtils;
import com.millennialmedia.internal.utils.JSONUtils;
import com.mopub.mobileads.resource.DrawableConstants;
import java.util.Arrays;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class VPAIDWebView extends MMWebView implements VASTVideoController.VideoViewActions {
    private static final String d = VPAIDWebView.class.getSimpleName();
    private static final List<String> e = Arrays.asList("vpaid.js");
    private boolean f;
    private List g;
    private long h;

    public VPAIDWebView(Context context, boolean z, MMWebView.MMWebViewListener mMWebViewListener) {
        super(context, new MMWebView.MMWebViewOptions(true, z, false, false), mMWebViewListener);
        this.f = false;
        this.h = Clock.MAX_TIME;
        setTag("VPAIDWebView");
        setBackgroundColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
    }

    public void setVastDocuments(List list) {
        this.g = list;
        super.setContent("<HTML><HEAD><meta name='viewport' content='width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no' /></HEAD><BODY></BODY></HTML>");
    }

    @Override // com.millennialmedia.internal.MMWebView
    protected void a() {
        if (this.g == null) {
            if (this.f4095a != null) {
                this.f4095a.onFailed();
                return;
            }
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("vastDocs", JSONUtils.buildFromList(this.g));
            jSONObject.put("minSkipOffset", Handshake.getVASTVideoSkipOffsetMin());
            jSONObject.put("maxSkipOffset", Handshake.getVASTVideoSkipOffsetMax());
            jSONObject.put("desiredBitrate", getDesiredBitrate());
            jSONObject.put("startAdTimeout", Handshake.getVPAIDStartAdTimeout());
            jSONObject.put("skipAdTimeout", Handshake.getVPAIDSkipAdTimeout());
            jSONObject.put("adUnitTimeout", Handshake.getVPAIDAdUnitTimeout());
            jSONObject.put("htmlEndCardTimeout", Handshake.getVPAIDHTMLEndCardTimeout());
            callJavascript("MmJsBridge.vpaid.init", jSONObject);
        } catch (JSONException e2) {
            MMLog.e(d, "Unable to create JSON arguments for vpaid init", e2);
            if (this.f4095a != null) {
                this.f4095a.onFailed();
            }
        }
        this.g = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.millennialmedia.internal.MMWebView
    public void b() {
        addJavascriptInterface(this, "MmInjectedFunctionsVpaid");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.millennialmedia.internal.MMWebView
    public List<String> getExtraScriptsToInject() {
        return e;
    }

    @Override // com.millennialmedia.internal.adcontrollers.VASTVideoController.VideoViewActions
    public boolean onBackPressed() {
        if (!this.f && System.currentTimeMillis() >= this.h) {
            this.f = true;
            if (MMLog.isDebugEnabled()) {
                MMLog.d(d, "Back button enabled due to delay timeout");
            }
        }
        return this.f;
    }

    @Override // com.millennialmedia.internal.MMWebView, com.millennialmedia.internal.adcontrollers.VASTVideoController.VideoViewActions
    public void shutdown() {
        super.shutdown();
    }

    @Override // com.millennialmedia.internal.adcontrollers.VASTVideoController.VideoViewActions
    public void updateLayout() {
    }

    @JavascriptInterface
    public void adLoadSucceeded(String str) throws JSONException {
        if (MMLog.isDebugEnabled()) {
            MMLog.d(d, "Received adLoadSucceeded notification from VPAID");
        }
        if (this.f4095a != null) {
            this.f4095a.onLoaded();
        }
        this.h = System.currentTimeMillis() + Handshake.getVPAIDMaxBackButtonDelay();
    }

    @JavascriptInterface
    public void adLoadFailed(String str) throws JSONException {
        if (MMLog.isDebugEnabled()) {
            MMLog.d(d, "Received adLoadFailed notification from VPAID");
        }
        if (this.f4095a != null) {
            this.f4095a.onFailed();
        }
    }

    @JavascriptInterface
    public void adSkippable(String str) throws JSONException {
        if (MMLog.isDebugEnabled()) {
            MMLog.d(d, "Received adSkippable notification from VPAID");
        }
        this.f = true;
    }

    private static int getDesiredBitrate() {
        String networkConnectionType = EnvironmentUtils.getNetworkConnectionType();
        if ("wifi".equalsIgnoreCase(networkConnectionType)) {
            return 1200;
        }
        if ("lte".equalsIgnoreCase(networkConnectionType)) {
        }
        return 800;
    }
}
