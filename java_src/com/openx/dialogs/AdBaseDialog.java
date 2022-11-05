package com.openx.dialogs;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Message;
import android.view.KeyEvent;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.openx.common.utils.helpers.Utils;
import com.openx.view.AdBase;
import com.openx.view.WebViewBanner;
import com.openx.view.WebViewBase;
import com.openx.view.mraid.OrientationManager;
import com.pubmatic.sdk.banner.mraid.Consts;
import org.json.JSONException;
import org.json.JSONObject;
@SuppressLint({"HandlerLeak"})
/* loaded from: classes3.dex */
public class AdBaseDialog extends Dialog {
    protected static final int CUSTOM_CLOSE_BUTTON_ID = 896723;
    protected Activity activity;
    protected boolean allowOrientationChange;
    protected RelativeLayout container;
    protected boolean densityScalingEnabled;
    protected OrientationManager.ForcedOrientation forceOrientation;
    protected boolean hasCustomClose;
    protected boolean hasExpandProperties;
    protected boolean hasOrientationProperties;
    protected int[] mAvailableScreenSize;
    protected WebViewBase mContentViewToAdjustWhenDeviceRotated;
    protected int mDefinedHeightForExpand;
    protected int mDefinedWidthForExpand;
    protected OrientationManager mOrientationManager;
    protected boolean trackImpression;
    protected WebViewBase webViewBase;

    public AdBaseDialog(Context context, WebViewBase webViewBase) {
        super(context, 16973841);
        this.forceOrientation = OrientationManager.ForcedOrientation.none;
        this.activity = (Activity) context;
        this.webViewBase = webViewBase;
        if (this.webViewBase instanceof WebViewBanner) {
            this.trackImpression = false;
        } else {
            this.trackImpression = true;
        }
        setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.openx.dialogs.AdBaseDialog.1
            @Override // android.content.DialogInterface.OnShowListener
            public void onShow(DialogInterface dialogInterface) {
                AdBaseDialog.this.addContentView(AdBaseDialog.this.container, new RelativeLayout.LayoutParams(-1, -1));
            }
        });
        setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.openx.dialogs.AdBaseDialog.2
            @Override // android.content.DialogInterface.OnKeyListener
            public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                return i == 4;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void preInit() {
        this.container = new RelativeLayout(this.activity);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        this.webViewBase.setLayoutParams(layoutParams);
        this.webViewBase.setVisibility(4);
        if (this.webViewBase.isMRAID()) {
            MRAIDContinue();
        } else {
            init();
        }
        this.container.addView(this.webViewBase, 0);
    }

    protected boolean isDensityScalingEnabled() {
        return this.densityScalingEnabled;
    }

    private WebViewBase getContentViewToAdjustWhenDeviceRotated() {
        return this.mContentViewToAdjustWhenDeviceRotated;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int[] getAvailableScreenSize() {
        if (this.mAvailableScreenSize == null) {
            Rect rect = new Rect();
            this.activity.getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
            this.mAvailableScreenSize = new int[2];
            this.mAvailableScreenSize[0] = rect.width();
            this.mAvailableScreenSize[1] = rect.height();
        }
        return this.mAvailableScreenSize;
    }

    protected void showAdjustedExpandedAdView() {
        if (getContentViewToAdjustWhenDeviceRotated() != null) {
            int[] availableScreenSize = getAvailableScreenSize();
            int i = this.mDefinedWidthForExpand;
            int i2 = this.mDefinedHeightForExpand;
            if (isDensityScalingEnabled()) {
                i = (int) (i * Utils.DENSITY);
                i2 = (int) (i2 * Utils.DENSITY);
            }
            if (i == 0 || i > availableScreenSize[0]) {
                i = -1;
            }
            if (i2 == 0 || i2 > availableScreenSize[1]) {
                i2 = -1;
            }
            this.webViewBase.setLayoutParams(new ViewGroup.LayoutParams(i, i2));
        }
    }

    private void MRAIDGetExpandProperties() {
        this.webViewBase.getMRAID().getExpandProperties(new Handler() { // from class: com.openx.dialogs.AdBaseDialog.3
            @Override // android.os.Handler
            public void handleMessage(final Message message) {
                super.handleMessage(message);
                AdBaseDialog.this.activity.runOnUiThread(new Runnable() { // from class: com.openx.dialogs.AdBaseDialog.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        getMRAIDExpandProperties(message);
                        AdBaseDialog.this.MRAIDContinue();
                    }

                    private void getMRAIDExpandProperties(Message message2) {
                        boolean z;
                        JSONException e;
                        JSONObject jSONObject;
                        AdBaseDialog.this.webViewBase.getMRAID().setExpandProperties(message2.getData().getString("value"));
                        try {
                            AdBaseDialog.this.webViewBase.getMRAID().setExpandProperties(message2.getData().getString("value"));
                            jSONObject = new JSONObject(AdBaseDialog.this.webViewBase.getMRAID().getExpandProperties());
                            z = jSONObject != null ? jSONObject.optBoolean("useCustomClose") : true;
                        } catch (JSONException e2) {
                            z = false;
                            e = e2;
                        }
                        try {
                            AdBaseDialog.this.mDefinedWidthForExpand = jSONObject.optInt("width", 0);
                            AdBaseDialog.this.mDefinedHeightForExpand = jSONObject.optInt("height", 0);
                        } catch (JSONException e3) {
                            e = e3;
                            e.printStackTrace();
                            AdBaseDialog.this.hasCustomClose = z;
                            AdBaseDialog.this.hasExpandProperties = true;
                        }
                        AdBaseDialog.this.hasCustomClose = z;
                        AdBaseDialog.this.hasExpandProperties = true;
                    }
                });
            }
        });
    }

    private void MRAIDGetOrientationProperties() {
        this.webViewBase.getMRAID().getOrientationProperties(new Handler() { // from class: com.openx.dialogs.AdBaseDialog.4
            @Override // android.os.Handler
            public void handleMessage(final Message message) {
                super.handleMessage(message);
                AdBaseDialog.this.activity.runOnUiThread(new Runnable() { // from class: com.openx.dialogs.AdBaseDialog.4.1
                    @Override // java.lang.Runnable
                    public void run() {
                        getMRAIDOrientationProperties(message);
                        AdBaseDialog.this.MRAIDContinue();
                    }

                    /* JADX WARN: Removed duplicated region for block: B:7:0x004c  */
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                    */
                    private void getMRAIDOrientationProperties(Message message2) {
                        JSONException e;
                        boolean z;
                        JSONObject jSONObject;
                        AdBaseDialog.this.webViewBase.getMRAID().setOrientationProperties(message2.getData().getString("value"));
                        String str = "none";
                        try {
                            jSONObject = new JSONObject(AdBaseDialog.this.webViewBase.getMRAID().getOrientationProperties());
                            z = jSONObject.optBoolean(Consts.OrientationPpropertiesAllowOrientationChange, true);
                        } catch (JSONException e2) {
                            e = e2;
                            z = true;
                        }
                        try {
                            str = jSONObject.optString(Consts.OrientationPpropertiesForceOrientation, "none");
                        } catch (JSONException e3) {
                            e = e3;
                            Utils.log(this, e.getMessage());
                            if (!AdBaseDialog.this.webViewBase.getMRAID().isLaunchWithURL()) {
                            }
                            AdBaseDialog.this.hasOrientationProperties = true;
                        }
                        if (!AdBaseDialog.this.webViewBase.getMRAID().isLaunchWithURL()) {
                            AdBaseDialog.this.allowOrientationChange = z;
                            AdBaseDialog.this.forceOrientation = OrientationManager.ForcedOrientation.valueOf(str);
                        }
                        AdBaseDialog.this.hasOrientationProperties = true;
                    }
                });
            }
        });
    }

    protected void MRAIDContinue() {
        if (!this.hasExpandProperties) {
            MRAIDGetExpandProperties();
        } else if (!this.hasOrientationProperties) {
            MRAIDGetOrientationProperties();
        } else {
            init();
        }
    }

    protected void init() {
        this.webViewBase.stoppedLoading();
        if (this.webViewBase.isMRAID()) {
            this.webViewBase.getMRAID().onStateChange("expanded");
            this.webViewBase.getMRAID().onViewableChange(true);
            showAdjustedExpandedAdView();
            this.mOrientationManager = new OrientationManager(this.activity);
            this.mOrientationManager.onOrientationPropertiesChanged(this.allowOrientationChange, this.forceOrientation);
        }
        AdBase.renderAd(this.webViewBase, this.trackImpression);
        if (!this.hasCustomClose) {
            renderCustomClose();
        }
        this.webViewBase.requestLayout();
    }

    protected void renderCustomClose() {
    }
}
