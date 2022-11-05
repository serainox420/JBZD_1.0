package com.openx.view.mraid.methods;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import com.openx.common.utils.helpers.Utils;
import com.openx.common.utils.logger.OXLog;
import com.openx.core.sdk.OXMManagersResolver;
import com.openx.dialogs.AdExpandedDialog;
import com.openx.model.AdCreative;
import com.openx.view.AdBase;
import com.openx.view.WebViewBase;
import com.openx.view.mraid.BaseJSInterface;
import com.openx.view.mraid.network.RedirectURLListener;
/* loaded from: classes3.dex */
public class Expand {
    private String adHTML;
    private boolean clickTracked;
    private Context context;
    BaseJSInterface jsi;
    WebViewBase webViewBanner;

    public Expand(Context context, BaseJSInterface baseJSInterface, WebViewBase webViewBase) {
        this.context = context;
        this.webViewBanner = webViewBase;
        this.jsi = baseJSInterface;
    }

    public void expand(String str) {
        int indexOf;
        AdCreative creative = this.webViewBanner.getAd().getCreative();
        String clickURL = (creative == null || creative.getTracking() == null) ? "" : creative.getTracking().getClickURL();
        if (!TextUtils.isEmpty(clickURL) && (indexOf = clickURL.indexOf("?")) != -1) {
            clickURL.substring(0, indexOf);
        }
        this.adHTML = this.webViewBanner.getAd().getHTML();
        if (!this.adHTML.contains("clickUrl") && !TextUtils.isEmpty(clickURL) && !this.clickTracked) {
            Utils.log(this, "Track Expand Click");
            this.clickTracked = true;
            ((AdBase) this.webViewBanner.getPreloadedListener()).getAdModel().trackAdModelEvents("click", clickURL);
        }
        OXMManagersResolver.getInstance().setCurrentAd(this.webViewBanner);
        this.jsi.followToOriginalUrl(str, new AnonymousClass1());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.openx.view.mraid.methods.Expand$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 implements RedirectURLListener {
        AnonymousClass1() {
        }

        @Override // com.openx.view.mraid.network.RedirectURLListener
        public void onSuccess(final String str, String str2) {
            if (Utils.isVideoContent(str2)) {
                Expand.this.jsi.playVideo(str);
            } else {
                Expand.this.jsi.getState(new Handler() { // from class: com.openx.view.mraid.methods.Expand.1.1
                    @Override // android.os.Handler
                    public void handleMessage(final Message message) {
                        super.handleMessage(message);
                        ((Activity) Expand.this.context).runOnUiThread(new Runnable() { // from class: com.openx.view.mraid.methods.Expand.1.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                boolean z = true;
                                String string = message.getData().getString("value");
                                if (!string.equals("loading") && !string.equals("hidden") && !string.equals("expanded")) {
                                    if (string.equals("resized")) {
                                        Expand.this.jsi.closeResizedAdWindow(true);
                                    }
                                    Expand.this.jsi.setDefaultLayoutParams(Expand.this.webViewBanner.getLayoutParams());
                                    BaseJSInterface baseJSInterface = Expand.this.jsi;
                                    if (str == null) {
                                        z = false;
                                    }
                                    baseJSInterface.setLaunchWithURL(z);
                                    if (Expand.this.jsi.isLaunchWithURL()) {
                                        Expand.this.jsi.setURLForLaunching(str);
                                    }
                                    Expand.this.webViewBanner.stoppedLoading();
                                    OXLog.debug("MRAID", "Attempting ExpandDialog");
                                    new AdExpandedDialog(Expand.this.context, Expand.this.webViewBanner).show();
                                }
                            }
                        });
                    }
                });
            }
        }

        @Override // com.openx.view.mraid.network.RedirectURLListener
        public void onFailed() {
        }
    }
}
