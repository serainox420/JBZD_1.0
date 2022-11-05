package com.loopme.adbrowser;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.loopme.common.Base64Drawables;
import com.loopme.common.Utils;
import com.mopub.mobileads.resource.DrawableConstants;
/* loaded from: classes2.dex */
public final class AdBrowserLayout extends RelativeLayout {
    private static final int HEADER_HEIGHT_DP = 30;
    private final BrowserWebView mAdBrowserWebview;
    private final Button mBackBtn;
    private Base64Drawables mBase64Drawables;
    private final Button mCloseBtn;
    private final RelativeLayout mFooterView;
    private final Button mNativeBtn;
    private final ProgressBar mProgressBar;
    private final Button mRefreshBtn;

    public AdBrowserLayout(Context context) {
        super(context);
        this.mBase64Drawables = new Base64Drawables();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        setLayoutParams(layoutParams);
        this.mAdBrowserWebview = new BrowserWebView(context);
        this.mAdBrowserWebview.setLayoutParams(layoutParams);
        addView(this.mAdBrowserWebview);
        this.mFooterView = new RelativeLayout(context);
        configFooterView();
        LinearLayout linearLayout = new LinearLayout(context);
        configButtonsContainer(linearLayout);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(Utils.getDisplayMetrics().widthPixels / 5, -1);
        int convertDpToPixel = Utils.convertDpToPixel(30.0f) / 2;
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(convertDpToPixel, convertDpToPixel);
        layoutParams3.addRule(13);
        this.mProgressBar = new ProgressBar(context);
        configProgressButton(context, linearLayout, layoutParams2, layoutParams3);
        this.mBackBtn = new Button(context);
        configBackButton(context, linearLayout, layoutParams2, layoutParams3);
        this.mRefreshBtn = new Button(context);
        configRefreshButton(context, linearLayout, layoutParams2, layoutParams3);
        this.mNativeBtn = new Button(context);
        configNativeButton(context, linearLayout, layoutParams2, layoutParams3);
        this.mCloseBtn = new Button(context);
        configCloseButton(context, linearLayout, layoutParams2, layoutParams3);
        this.mFooterView.addView(initBottomWhiteLineView(context));
    }

    private void configProgressButton(Context context, LinearLayout linearLayout, RelativeLayout.LayoutParams layoutParams, RelativeLayout.LayoutParams layoutParams2) {
        RelativeLayout relativeLayout = new RelativeLayout(context);
        relativeLayout.setLayoutParams(layoutParams);
        this.mProgressBar.setLayoutParams(layoutParams2);
        relativeLayout.addView(this.mProgressBar);
        linearLayout.addView(relativeLayout);
    }

    private void configButtonsContainer(LinearLayout linearLayout) {
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        linearLayout.setBackgroundColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
        this.mFooterView.addView(linearLayout);
    }

    private void configFooterView() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, Utils.convertDpToPixel(30.0f));
        layoutParams.addRule(12);
        this.mFooterView.setLayoutParams(layoutParams);
        addView(this.mFooterView);
    }

    private View initBottomWhiteLineView(Context context) {
        View view = new View(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, 1);
        layoutParams.addRule(12);
        view.setLayoutParams(layoutParams);
        view.setBackgroundColor(-1);
        return view;
    }

    @SuppressLint({"NewApi"})
    private void configBackButton(Context context, LinearLayout linearLayout, RelativeLayout.LayoutParams layoutParams, RelativeLayout.LayoutParams layoutParams2) {
        RelativeLayout relativeLayout = new RelativeLayout(context);
        relativeLayout.setLayoutParams(layoutParams);
        if (Build.VERSION.SDK_INT < 16) {
            this.mBackBtn.setBackgroundDrawable(Utils.decodeImage(this.mBase64Drawables.getBackInactive()));
        } else {
            this.mBackBtn.setBackground(Utils.decodeImage(this.mBase64Drawables.getBackInactive()));
        }
        this.mBackBtn.setLayoutParams(layoutParams2);
        relativeLayout.addView(this.mBackBtn);
        linearLayout.addView(relativeLayout);
    }

    @SuppressLint({"NewApi"})
    private void configRefreshButton(Context context, LinearLayout linearLayout, RelativeLayout.LayoutParams layoutParams, RelativeLayout.LayoutParams layoutParams2) {
        RelativeLayout relativeLayout = new RelativeLayout(context);
        relativeLayout.setLayoutParams(layoutParams);
        if (Build.VERSION.SDK_INT < 16) {
            this.mRefreshBtn.setBackgroundDrawable(Utils.decodeImage(this.mBase64Drawables.getRefresh()));
        } else {
            this.mRefreshBtn.setBackground(Utils.decodeImage(this.mBase64Drawables.getRefresh()));
        }
        this.mRefreshBtn.setLayoutParams(layoutParams2);
        relativeLayout.addView(this.mRefreshBtn);
        linearLayout.addView(relativeLayout);
    }

    @SuppressLint({"NewApi"})
    private void configNativeButton(Context context, LinearLayout linearLayout, RelativeLayout.LayoutParams layoutParams, RelativeLayout.LayoutParams layoutParams2) {
        RelativeLayout relativeLayout = new RelativeLayout(context);
        relativeLayout.setLayoutParams(layoutParams);
        if (Build.VERSION.SDK_INT < 16) {
            this.mNativeBtn.setBackgroundDrawable(Utils.decodeImage(this.mBase64Drawables.getNativeBrowser()));
        } else {
            this.mNativeBtn.setBackground(Utils.decodeImage(this.mBase64Drawables.getNativeBrowser()));
        }
        this.mNativeBtn.setLayoutParams(layoutParams2);
        relativeLayout.addView(this.mNativeBtn);
        linearLayout.addView(relativeLayout);
    }

    @SuppressLint({"NewApi"})
    private void configCloseButton(Context context, LinearLayout linearLayout, RelativeLayout.LayoutParams layoutParams, RelativeLayout.LayoutParams layoutParams2) {
        RelativeLayout relativeLayout = new RelativeLayout(context);
        relativeLayout.setLayoutParams(layoutParams);
        if (Build.VERSION.SDK_INT < 16) {
            this.mCloseBtn.setBackgroundDrawable(Utils.decodeImage(this.mBase64Drawables.getClose()));
        } else {
            this.mCloseBtn.setBackground(Utils.decodeImage(this.mBase64Drawables.getClose()));
        }
        this.mCloseBtn.setLayoutParams(layoutParams2);
        relativeLayout.addView(this.mCloseBtn);
        linearLayout.addView(relativeLayout);
    }

    public ProgressBar getProgressBar() {
        return this.mProgressBar;
    }

    public Button getBackButton() {
        return this.mBackBtn;
    }

    public Button getRefreshButton() {
        return this.mRefreshBtn;
    }

    public Button getCloseButton() {
        return this.mCloseBtn;
    }

    public Button getNativeButton() {
        return this.mNativeBtn;
    }

    public BrowserWebView getWebView() {
        return this.mAdBrowserWebview;
    }
}
