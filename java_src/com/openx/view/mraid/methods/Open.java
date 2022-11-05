package com.openx.view.mraid.methods;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.google.android.gms.drive.DriveFile;
import com.openx.common.utils.helpers.Utils;
import com.openx.common.utils.logger.OXLog;
import com.openx.model.AdCreative;
import com.openx.sdk.browser.AdBrowserActivity;
import com.openx.view.WebViewBase;
import com.openx.view.WebViewInterstitial;
import com.openx.view.mraid.BaseJSInterface;
import com.openx.view.mraid.network.RedirectURLListener;
/* loaded from: classes3.dex */
public class Open {
    WebViewBase adBaseView;
    private Context context;
    BaseJSInterface jsi;

    public Open(Context context, BaseJSInterface baseJSInterface, WebViewBase webViewBase) {
        this.context = context;
        this.adBaseView = webViewBase;
        this.jsi = baseJSInterface;
    }

    public void open(String str) {
        this.jsi.followToOriginalUrl(str, new RedirectURLListener() { // from class: com.openx.view.mraid.methods.Open.1
            @Override // com.openx.view.mraid.network.RedirectURLListener
            public void onSuccess(String str2, String str3) {
                if (Utils.isRecognizedUrl(str2)) {
                    OXLog.debug("Open", "Open: redirection succeeded");
                    Utils.log(this, Utils.getLogMessage("check_perm_to_launch_ext_app"));
                    Utils.log(this, Utils.getLogMessage("perm_granted"));
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str2));
                    intent.addFlags(DriveFile.MODE_READ_ONLY);
                    try {
                        Open.this.context.startActivity(intent);
                    } catch (ActivityNotFoundException e) {
                        Utils.log(this, String.format(Utils.getLogMessage("could_not_handle_intent"), str2));
                    }
                } else if (str2 != null && (str2.startsWith("http:") || str2.startsWith("https:"))) {
                    if (!Utils.isVideoContent(str3)) {
                        Open.this.showModalAd(Open.this.context, str2);
                    } else {
                        Open.this.jsi.playVideo(str2);
                    }
                } else {
                    Utils.log(this, String.format(Utils.getLogMessage("could_not_handle_intent"), str2));
                }
            }

            @Override // com.openx.view.mraid.network.RedirectURLListener
            public void onFailed() {
                OXLog.debug("Open", "Open: redirection failed");
            }
        });
    }

    public void showModalAd(Context context, String str) {
        AdCreative creative;
        Utils.getLogMessage("check_perm_to_proc_url");
        Utils.log(this, Utils.getLogMessage("perm_granted"));
        this.jsi.setLaunchWithURL(str != null);
        if (this.jsi.isLaunchWithURL()) {
            this.jsi.setURLForLaunching(str);
            Utils.log(this, Utils.getLogMessage("show_inapp_browser"));
        } else {
            Utils.log(this, Utils.getLogMessage("starting_interstitial"));
        }
        Intent intent = new Intent(context, AdBrowserActivity.class);
        if (this.adBaseView instanceof WebViewInterstitial) {
            intent.putExtra(AdBrowserActivity.EXTRA_IS_INTERSTITIAL, true);
        }
        if (!this.jsi.isLaunchWithURL() && !this.adBaseView.isMRAID() && (creative = this.jsi.getCreative()) != null) {
            intent.putExtra(AdBrowserActivity.EXTRA_WIDTH, creative.getWidth());
            intent.putExtra(AdBrowserActivity.EXTRA_HEIGHT, creative.getHeight());
        }
        intent.setFlags(1073741824);
        intent.putExtra(AdBrowserActivity.EXTRA_AD, this.adBaseView.getAd());
        if (this.jsi.isLaunchWithURL()) {
            intent.putExtra(AdBrowserActivity.EXTRA_URL, this.jsi.getURLForLaunching());
        }
        intent.putExtra("densityScalingEnabled", false);
        intent.putExtra(AdBrowserActivity.EXTRA_ALLOW_ORIENTATION_CHANGES, true);
        context.startActivity(intent);
        this.adBaseView.stoppedLoading();
    }
}
