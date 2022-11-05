package com.openx.dialogs;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.view.Display;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.openx.model.AdCreative;
import com.openx.sdk.browser.AdBrowserActivity;
import com.openx.view.AdBase;
import com.openx.view.AdCloseButton;
import com.openx.view.AdInterstitial;
import com.openx.view.WebViewBase;
import com.openx.view.WebViewInterstitial;
@SuppressLint({"NewApi"})
/* loaded from: classes3.dex */
public class AdInterstitialDialog extends AdBaseDialog {
    Context context;
    private int initialOrientation;

    public AdInterstitialDialog(Context context, WebViewBase webViewBase) {
        super(context, webViewBase);
        this.context = context;
        setInitialOrientation();
        if (!this.webViewBase.isMRAID()) {
            lockScreenOrientation();
        }
        if (((WebViewInterstitial) this.webViewBase).isImage) {
            initImageInterstitial();
        } else {
            preInit();
        }
        this.container.setBackgroundColor(((AdInterstitial) this.webViewBase.getPreloadedListener()).getBackgroundOpacity());
        setListeners();
        this.webViewBase.setDialog(this);
    }

    private void setListeners() {
        setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.openx.dialogs.AdInterstitialDialog.1
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                AdInterstitialDialog.this.resetInitialOrientation();
                if (AdInterstitialDialog.this.webViewBase.isMRAID()) {
                    AdInterstitialDialog.this.webViewBase.getMRAID().onStateChange("default");
                    AdInterstitialDialog.this.webViewBase.detachFromParent();
                    AdInterstitialDialog.this.mOrientationManager.restoreInitialOrientation();
                }
                AdInterstitial adInterstitial = (AdInterstitial) AdInterstitialDialog.this.webViewBase.getPreloadedListener();
                if (adInterstitial.getAdEventsListener() != null) {
                    adInterstitial.getAdEventsListener().onAdClosed();
                }
            }
        });
    }

    private void initImageInterstitial() {
        initImageView();
        this.webViewBase.stoppedLoading();
        AdBase.renderAd(this.webViewBase, this.trackImpression);
        renderCustomClose();
    }

    private void initImageView() {
        this.container = new RelativeLayout(this.activity);
        ImageView imageView = new ImageView(this.context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        imageView.setLayoutParams(layoutParams);
        imageView.setImageBitmap(((WebViewInterstitial) this.webViewBase).getImage());
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        imageClickListener(imageView);
        this.container.addView(imageView);
    }

    private void imageClickListener(ImageView imageView) {
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.openx.dialogs.AdInterstitialDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AdCreative creative = AdInterstitialDialog.this.webViewBase.getAd().getCreative();
                String clickURL = (creative == null || creative.getTracking() == null) ? "" : creative.getTracking().getClickURL();
                if (clickURL != null && !clickURL.contentEquals("")) {
                    Intent intent = new Intent(AdInterstitialDialog.this.context, AdBrowserActivity.class);
                    intent.putExtra(AdBrowserActivity.EXTRA_IS_INTERSTITIAL, true);
                    intent.setFlags(1073741824);
                    intent.putExtra(AdBrowserActivity.EXTRA_URL, clickURL);
                    intent.putExtra("densityScalingEnabled", false);
                    intent.putExtra(AdBrowserActivity.EXTRA_ALLOW_ORIENTATION_CHANGES, true);
                    AdInterstitialDialog.this.context.startActivity(intent);
                }
            }
        });
    }

    public void lockScreenOrientation() {
        Display defaultDisplay = ((Activity) this.context).getWindowManager().getDefaultDisplay();
        if (defaultDisplay.getWidth() <= defaultDisplay.getHeight()) {
            ((Activity) this.context).setRequestedOrientation(7);
        } else {
            ((Activity) this.context).setRequestedOrientation(6);
        }
    }

    private void setInitialOrientation() {
        this.initialOrientation = ((Activity) this.context).getRequestedOrientation();
    }

    public void resetInitialOrientation() {
        ((Activity) this.context).setRequestedOrientation(this.initialOrientation);
    }

    @Override // com.openx.dialogs.AdBaseDialog
    protected void renderCustomClose() {
        AdCloseButton adCloseButton = new AdCloseButton(this.activity);
        adCloseButton.setId(896723);
        RelativeLayout.LayoutParams closeBtnLayout = setCloseBtnLayout(adCloseButton);
        adCloseButton.setOnClickListener(new View.OnClickListener() { // from class: com.openx.dialogs.AdInterstitialDialog.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AdInterstitialDialog.this.cancel();
            }
        });
        this.container.addView(adCloseButton, closeBtnLayout);
        adCloseButton.bringToFront();
    }

    private RelativeLayout.LayoutParams setCloseBtnLayout(AdCloseButton adCloseButton) {
        int i = (getAvailableScreenSize()[0] * 10) / 100;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        AdInterstitial adInterstitial = (AdInterstitial) this.webViewBase.getPreloadedListener();
        switch (adInterstitial.getClosePosition() == null ? AdInterstitial.ClosePosition.SCREEN_TOP_RIGHT : adInterstitial.getClosePosition()) {
            case SCREEN_TOP_LEFT:
                layoutParams.addRule(10);
                layoutParams.addRule(9);
                layoutParams.leftMargin = 10;
                layoutParams.topMargin = 10;
                adCloseButton.setPadding(0, 0, i, i);
                break;
            default:
                layoutParams.addRule(10);
                layoutParams.addRule(11);
                layoutParams.rightMargin = 10;
                layoutParams.topMargin = 10;
                adCloseButton.setPadding(i, 0, 0, i);
                break;
        }
        return layoutParams;
    }
}
