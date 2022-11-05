package com.openx.view.mraid.methods;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import com.openx.common.utils.helpers.Utils;
import com.openx.core.sdk.OXMManagersResolver;
import com.openx.view.AdCloseButton;
import com.openx.view.WebViewBase;
import com.openx.view.mraid.BaseJSInterface;
import com.pubmatic.sdk.banner.mraid.Consts;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class Resize {
    WebViewBase adBaseView;
    private Context context;
    private AdCloseButton customCloseButton;
    BaseJSInterface jsi;
    String mResizeProperties;

    public Resize(Context context, BaseJSInterface baseJSInterface, WebViewBase webViewBase) {
        this.context = context;
        this.adBaseView = webViewBase;
        this.jsi = baseJSInterface;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setResizeProperties(String str) {
        this.mResizeProperties = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getResizeProperties() {
        return this.mResizeProperties;
    }

    public void resize() {
        OXMManagersResolver.getInstance().setCurrentAd(this.adBaseView);
        this.jsi.getState(new Handler() { // from class: com.openx.view.mraid.methods.Resize.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                super.handleMessage(message);
                String string = message.getData().getString("value");
                if (!string.equals("loading") && !string.equals("hidden")) {
                    if (string.equals("expanded")) {
                        Resize.this.jsi.onError(Utils.getMRAIDErrMessage("resize_when_expanded"), "resize");
                        return;
                    }
                    Resize.this.jsi.setDefaultLayoutParams(Resize.this.adBaseView.getLayoutParams());
                    Resize.this.jsi.getResizeProperties(new Handler() { // from class: com.openx.view.mraid.methods.Resize.1.1
                        @Override // android.os.Handler
                        public void handleMessage(Message message2) {
                            int i;
                            int i2;
                            int i3;
                            JSONException e;
                            int i4;
                            int i5;
                            boolean z = true;
                            super.handleMessage(message2);
                            Resize.this.setResizeProperties(message2.getData().getString("value"));
                            String str = Consts.ResizePropertiesCCPositionTopRight;
                            try {
                                JSONObject jSONObject = new JSONObject(Resize.this.getResizeProperties());
                                i3 = jSONObject.optInt("width", 0);
                                try {
                                    i2 = jSONObject.optInt("height", 0);
                                    try {
                                        str = jSONObject.optString(Consts.ResizePropertiesCustomClosePosition, Consts.ResizePropertiesCCPositionTopRight);
                                        i = jSONObject.optInt(Consts.ResizePropertiesOffsetX, 0);
                                        try {
                                            i4 = jSONObject.optInt(Consts.ResizePropertiesOffsetY, 0);
                                        } catch (JSONException e2) {
                                            i4 = 0;
                                            e = e2;
                                        }
                                        try {
                                            z = jSONObject.optBoolean(Consts.ResizePropertiesAllowOffscreen, true);
                                            i5 = i2;
                                        } catch (JSONException e3) {
                                            e = e3;
                                            Utils.log(this, e.getMessage());
                                            i5 = i2;
                                            Rect defaultPosition = Resize.this.adBaseView.getDefaultPosition();
                                            float f = i * Utils.DENSITY;
                                            int i6 = (int) ((i4 * Utils.DENSITY) + defaultPosition.top);
                                            int max = Math.max(i3 * 1, 50);
                                            Resize.this.showExpandDialog(((int) (f + defaultPosition.left)) + (((defaultPosition.right - defaultPosition.left) - max) / 2), i6, max, Math.max(i5 * 1, 50), str, z);
                                            Resize.this.jsi.onStateChange("resized");
                                        }
                                    } catch (JSONException e4) {
                                        i = 0;
                                        e = e4;
                                        i4 = 0;
                                    }
                                } catch (JSONException e5) {
                                    i = 0;
                                    i2 = 0;
                                    i4 = 0;
                                    e = e5;
                                }
                            } catch (JSONException e6) {
                                i = 0;
                                i2 = 0;
                                i3 = 0;
                                e = e6;
                                i4 = 0;
                            }
                            Rect defaultPosition2 = Resize.this.adBaseView.getDefaultPosition();
                            float f2 = i * Utils.DENSITY;
                            int i62 = (int) ((i4 * Utils.DENSITY) + defaultPosition2.top);
                            int max2 = Math.max(i3 * 1, 50);
                            Resize.this.showExpandDialog(((int) (f2 + defaultPosition2.left)) + (((defaultPosition2.right - defaultPosition2.left) - max2) / 2), i62, max2, Math.max(i5 * 1, 50), str, z);
                            Resize.this.jsi.onStateChange("resized");
                        }
                    });
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showExpandDialog(final int i, final int i2, final int i3, final int i4, final String str, final boolean z) {
        this.adBaseView.post(new Runnable() { // from class: com.openx.view.mraid.methods.Resize.2
            @Override // java.lang.Runnable
            public void run() {
                if (Resize.this.adBaseView.getParent() != null) {
                    if (Resize.this.jsi.isResizedAdWindowOpened()) {
                        Resize.this.jsi.getResizedAdWindow().update(i, i2, i3, i4);
                        Resize.this.positionCloseButton(str);
                        return;
                    }
                    Resize.this.adBaseView.detachFromParent();
                    Resize.this.adBaseView.stoppedLoading();
                    FrameLayout frameLayout = new FrameLayout(Resize.this.context);
                    frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                    frameLayout.addView(Resize.this.adBaseView, new FrameLayout.LayoutParams(-1, -1));
                    if (Resize.this.customCloseButton == null) {
                        Resize.this.customCloseButton = new AdCloseButton(Resize.this.context);
                        Resize.this.customCloseButton.setOnClickListener(new View.OnClickListener() { // from class: com.openx.view.mraid.methods.Resize.2.1
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view) {
                                Resize.this.jsi.closeResizedAdWindow(true);
                            }
                        });
                    }
                    Resize.this.positionCloseButton(str);
                    frameLayout.addView(Resize.this.customCloseButton);
                    Resize.this.jsi.setResizedAdWindow(new PopupWindow(frameLayout));
                    Resize.this.jsi.getResizedAdWindow().setFocusable(true);
                    Resize.this.jsi.getResizedAdWindow().setClippingEnabled(!z);
                    Resize.this.jsi.getResizedAdWindow().setWidth(i3);
                    Resize.this.jsi.getResizedAdWindow().setHeight(i4);
                    Resize.this.jsi.getResizedAdWindow().setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: com.openx.view.mraid.methods.Resize.2.2
                        @Override // android.widget.PopupWindow.OnDismissListener
                        public void onDismiss() {
                            if (Resize.this.jsi.hasRestoreStateFlag()) {
                                Resize.this.jsi.getMRAIDClose().closeThroughJS(Resize.this.jsi.getRestoreStateOnPopupClose());
                            } else {
                                Resize.this.jsi.getMRAIDClose().closeThroughJS(true);
                            }
                            Resize.this.jsi.setResizedAdWindow(null);
                        }
                    });
                    Resize.this.jsi.getResizedAdWindow().setBackgroundDrawable(new ColorDrawable(-1));
                    Resize.this.jsi.getResizedAdWindow().setOutsideTouchable(true);
                    Resize.this.jsi.getResizedAdWindow().showAtLocation((View) Resize.this.adBaseView.getParent(), 0, i, i2);
                    frameLayout.bringChildToFront(Resize.this.customCloseButton);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void positionCloseButton(String str) {
        int i = 53;
        if (str.equalsIgnoreCase(Consts.ResizePropertiesCCPositionTopLeft)) {
            i = 51;
        } else if (str.equalsIgnoreCase("center")) {
            i = 17;
        } else if (str.equalsIgnoreCase(Consts.ResizePropertiesCCPositionBottomLeft)) {
            i = 83;
        } else if (str.equalsIgnoreCase(Consts.ResizePropertiesCCPositionBottomRight)) {
            i = 85;
        } else if (str.equalsIgnoreCase(Consts.ResizePropertiesCCPositionTopCenter)) {
            i = 49;
        } else if (str.equalsIgnoreCase(Consts.ResizePropertiesCCPositionBottomCenter)) {
            i = 81;
        }
        this.customCloseButton.setLayoutParams(new FrameLayout.LayoutParams(50, 50, i));
    }
}
