package com.openx.dialogs;

import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import android.widget.RelativeLayout;
import com.openx.view.AdBanner;
import com.openx.view.AdCloseButton;
import com.openx.view.WebViewBase;
import com.openx.view.mraid.methods.Close;
/* loaded from: classes3.dex */
public class AdExpandedDialog extends AdBaseDialog {
    public AdExpandedDialog(Context context, WebViewBase webViewBase) {
        super(context, webViewBase);
        this.webViewBase.detachFromParent();
        ((AdBanner) this.webViewBase.getPreloadedListener()).setVisibility(4);
        preInit();
        setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.openx.dialogs.AdExpandedDialog.1
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                AdExpandedDialog.this.webViewBase.getMRAID().onStateChange("default");
                AdBanner adBanner = (AdBanner) AdExpandedDialog.this.webViewBase.getPreloadedListener();
                adBanner.setVisibility(0);
                adBanner.initStartLoading(AdExpandedDialog.this.webViewBase);
                AdExpandedDialog.this.mOrientationManager.restoreInitialOrientation();
                if (adBanner.getAdEventsListener() != null) {
                    adBanner.getAdEventsListener().onAdClosed();
                }
            }
        });
        this.webViewBase.setDialog(this);
    }

    @Override // com.openx.dialogs.AdBaseDialog
    protected void renderCustomClose() {
        AdCloseButton adCloseButton = new AdCloseButton(this.activity);
        adCloseButton.setId(896723);
        int i = (getAvailableScreenSize()[0] * 10) / 100;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(10);
        layoutParams.addRule(11);
        layoutParams.rightMargin = 10;
        layoutParams.topMargin = 10;
        adCloseButton.setPadding(i, 0, 0, i);
        adCloseButton.setOnClickListener(new View.OnClickListener() { // from class: com.openx.dialogs.AdExpandedDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                new Close(AdExpandedDialog.this.activity, AdExpandedDialog.this.webViewBase.getMRAID(), AdExpandedDialog.this.webViewBase).closeThroughJS(true);
            }
        });
        this.container.addView(adCloseButton, layoutParams);
    }
}
