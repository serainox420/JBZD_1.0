package com.applovin.adview;

import android.content.Context;
import android.graphics.Color;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.applovin.impl.sdk.cb;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
/* loaded from: classes.dex */
public class ClickTrackingOverlayView extends RelativeLayout {
    public ClickTrackingOverlayView(Context context, AppLovinSdk appLovinSdk) {
        super(context, null, new cb(appLovinSdk).K());
        a(context, appLovinSdk);
    }

    private void a(Context context, AppLovinSdk appLovinSdk) {
        RelativeLayout.LayoutParams layoutParams;
        cb cbVar = new cb(appLovinSdk);
        ProgressBar progressBar = new ProgressBar(context);
        progressBar.setIndeterminate(true);
        int J = cbVar.J();
        if (J == -2 || J == -1) {
            layoutParams = new RelativeLayout.LayoutParams(J, J);
        } else {
            int dpToPx = AppLovinSdkUtils.dpToPx(context, J);
            layoutParams = new RelativeLayout.LayoutParams(dpToPx, dpToPx);
        }
        layoutParams.addRule(13);
        progressBar.setLayoutParams(layoutParams);
        setBackgroundColor(Color.parseColor(cbVar.I()));
        addView(progressBar);
    }
}
