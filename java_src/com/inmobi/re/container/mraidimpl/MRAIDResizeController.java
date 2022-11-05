package com.inmobi.re.container.mraidimpl;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.internal.WrapperFunctions;
import com.inmobi.re.container.CustomView;
import com.inmobi.re.container.IMWebView;
import com.inmobi.re.controller.JSController;
import com.inmobi.re.controller.util.Constants;
import com.pubmatic.sdk.banner.mraid.Consts;
/* loaded from: classes2.dex */
public class MRAIDResizeController {
    protected static final int PLACEHOLDER_ID = 437;
    protected static final int RELATIVELAYOUT_ID = 438;

    /* renamed from: a  reason: collision with root package name */
    private IMWebView f3961a;
    private ResizeDimensions b = null;
    public JSController.ResizeProperties resizeProperties;

    public MRAIDResizeController(IMWebView iMWebView, Activity activity) {
        this.f3961a = iMWebView;
    }

    public void doResize(Bundle bundle) {
        this.f3961a.doNotFireVisibilityChanged.set(true);
        try {
            if (this.f3961a.getOriginalParent() == null) {
                this.f3961a.saveOriginalViewParent();
            }
            if (((FrameLayout) this.f3961a.getParent().getParent()).getId() == 435) {
                a((FrameLayout) this.f3961a.getParent().getParent().getParent(), (FrameLayout) this.f3961a.getParent().getParent(), this.f3961a, this.resizeProperties);
                RelativeLayout.LayoutParams a2 = a(this.resizeProperties.customClosePosition);
                this.f3961a.setLayoutParams(new RelativeLayout.LayoutParams(this.resizeProperties.width, this.resizeProperties.height));
                ((ViewGroup) this.f3961a.getParent()).getChildAt(1).setLayoutParams(a2);
                if (bundle != null) {
                    this.f3961a.setState(IMWebView.ViewState.RESIZED);
                }
                this.f3961a.requestLayout();
                this.f3961a.invalidate();
                this.f3961a.postInHandler(new Runnable() { // from class: com.inmobi.re.container.mraidimpl.MRAIDResizeController.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (MRAIDResizeController.this.f3961a.mListener != null) {
                            MRAIDResizeController.this.f3961a.mListener.onResize(MRAIDResizeController.this.b);
                        }
                    }
                });
                this.f3961a.doNotFireVisibilityChanged.set(false);
                return;
            }
        } catch (Exception e) {
        }
        try {
            a(this.resizeProperties).setBackgroundColor(0);
            this.f3961a.mAudioVideoController.videoValidateWidth = this.resizeProperties.width;
            if (bundle != null) {
                this.f3961a.setState(IMWebView.ViewState.RESIZED);
            }
            synchronized (this.f3961a.mutex) {
                this.f3961a.isMutexAquired.set(false);
                this.f3961a.mutex.notifyAll();
            }
            this.f3961a.requestLayout();
            this.f3961a.invalidate();
            this.f3961a.postInHandler(new Runnable() { // from class: com.inmobi.re.container.mraidimpl.MRAIDResizeController.2
                @Override // java.lang.Runnable
                public void run() {
                    if (MRAIDResizeController.this.f3961a.mListener != null) {
                        MRAIDResizeController.this.f3961a.mListener.onResize(MRAIDResizeController.this.b);
                    }
                }
            });
        } catch (Exception e2) {
            Log.debug(Constants.RENDERING_LOG_TAG, "Exception in doresize ", e2);
            this.f3961a.setState(IMWebView.ViewState.DEFAULT);
            synchronized (this.f3961a.mutex) {
                this.f3961a.isMutexAquired.set(false);
                this.f3961a.mutex.notifyAll();
            }
        }
        this.f3961a.doNotFireVisibilityChanged.set(false);
    }

    public void closeResized() {
        if (this.f3961a.getViewState().compareTo(IMWebView.ViewState.DEFAULT) != 0) {
            synchronized (this.f3961a.mutex) {
                this.f3961a.isMutexAquired.set(false);
                this.f3961a.mutex.notifyAll();
            }
            this.f3961a.doNotFireVisibilityChanged.set(true);
            b();
            this.f3961a.closeResized();
            this.f3961a.setVisibility(0);
            this.f3961a.setState(IMWebView.ViewState.DEFAULT);
            this.f3961a.doNotFireVisibilityChanged.set(false);
        }
    }

    private FrameLayout a(JSController.ResizeProperties resizeProperties) {
        FrameLayout frameLayout = (FrameLayout) ((ViewGroup) this.f3961a.getOriginalParent()).getRootView().findViewById(16908290);
        a();
        FrameLayout frameLayout2 = new FrameLayout(this.f3961a.getContext());
        ViewGroup.LayoutParams layoutParams = new FrameLayout.LayoutParams(WrapperFunctions.getParamFillParent(), WrapperFunctions.getParamFillParent());
        frameLayout2.setId(435);
        ViewGroup.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(resizeProperties.width, resizeProperties.height);
        RelativeLayout relativeLayout = new RelativeLayout(this.f3961a.getContext());
        relativeLayout.setId(RELATIVELAYOUT_ID);
        relativeLayout.addView(this.f3961a, new RelativeLayout.LayoutParams(resizeProperties.width, resizeProperties.height));
        a(relativeLayout, resizeProperties.customClosePosition);
        frameLayout2.addView(relativeLayout, layoutParams2);
        a(frameLayout, frameLayout2, this.f3961a, resizeProperties);
        frameLayout.addView(frameLayout2, layoutParams);
        this.f3961a.setFocusable(true);
        this.f3961a.setFocusableInTouchMode(true);
        this.f3961a.requestFocus();
        return frameLayout2;
    }

    private void a(FrameLayout frameLayout, FrameLayout frameLayout2, IMWebView iMWebView, JSController.ResizeProperties resizeProperties) {
        int[] iArr = new int[2];
        ((View) iMWebView.getOriginalParent()).getLocationOnScreen(r1);
        frameLayout.getLocationOnScreen(iArr);
        int[] iArr2 = {iArr2[0] - iArr[0], iArr2[1] - iArr[1]};
        iArr2[0] = iArr2[0] + resizeProperties.offsetX;
        iArr2[1] = iArr2[1] + resizeProperties.offsetY;
        if (!resizeProperties.allowOffscreen) {
            if (resizeProperties.width > frameLayout.getWidth() - iArr2[0]) {
                iArr2[0] = frameLayout.getWidth() - resizeProperties.width;
            }
            if (resizeProperties.height > frameLayout.getHeight() - iArr2[1]) {
                iArr2[1] = frameLayout.getHeight() - resizeProperties.height;
            }
            if (iArr2[0] < 0) {
                iArr2[0] = 0;
            }
            if (iArr2[1] < 0) {
                iArr2[1] = 0;
            }
        }
        this.b = new ResizeDimensions(iArr2[0], iArr2[1], resizeProperties.width, resizeProperties.height);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(resizeProperties.width, resizeProperties.height);
        layoutParams.leftMargin = iArr2[0];
        layoutParams.topMargin = iArr2[1];
        layoutParams.gravity = 3;
        ((View) iMWebView.getParent()).setLayoutParams(layoutParams);
    }

    private void a() {
        try {
            FrameLayout frameLayout = new FrameLayout(this.f3961a.getContext());
            frameLayout.setId(PLACEHOLDER_ID);
            ((ViewGroup) this.f3961a.getOriginalParent()).addView(frameLayout, this.f3961a.getOriginalIndex(), new ViewGroup.LayoutParams(this.f3961a.getWidth(), this.f3961a.getHeight()));
            ((ViewGroup) this.f3961a.getParent()).removeView(this.f3961a);
        } catch (Exception e) {
            Log.debug(Constants.RENDERING_LOG_TAG, "Exception in replaceByPlaceHolder ", e);
        }
    }

    private void a(ViewGroup viewGroup, String str) {
        ViewGroup.LayoutParams a2 = a(str);
        CustomView customView = new CustomView(this.f3961a.getContext(), this.f3961a.getDensity(), CustomView.SwitchIconType.CLOSE_TRANSPARENT);
        viewGroup.addView(customView, a2);
        customView.setOnClickListener(new View.OnClickListener() { // from class: com.inmobi.re.container.mraidimpl.MRAIDResizeController.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                IMWebView.userInitiatedClose = true;
                MRAIDResizeController.this.f3961a.close();
            }
        });
    }

    private RelativeLayout.LayoutParams a(String str) {
        String b = b(str);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) (this.f3961a.getDensity() * 50.0f), (int) (this.f3961a.getDensity() * 50.0f));
        if (b.equals(Consts.ResizePropertiesCCPositionTopRight) || b.equals(Consts.ResizePropertiesCCPositionBottomRight)) {
            layoutParams.addRule(11);
        }
        if (b.equals(Consts.ResizePropertiesCCPositionBottomRight) || b.equals(Consts.ResizePropertiesCCPositionBottomLeft) || b.equals(Consts.ResizePropertiesCCPositionBottomCenter)) {
            layoutParams.addRule(12);
            layoutParams.addRule(4);
        }
        if (b.equals(Consts.ResizePropertiesCCPositionBottomCenter) || b.equals(Consts.ResizePropertiesCCPositionTopCenter) || b.equals("center")) {
            layoutParams.addRule(13);
        }
        if (b.equals(Consts.ResizePropertiesCCPositionTopCenter)) {
            layoutParams.addRule(10);
        }
        return layoutParams;
    }

    private String b(String str) {
        if (!str.equals(Consts.ResizePropertiesCCPositionTopLeft) && !str.equals(Consts.ResizePropertiesCCPositionTopRight) && !str.equals(Consts.ResizePropertiesCCPositionBottomLeft) && !str.equals(Consts.ResizePropertiesCCPositionBottomRight) && !str.equals(Consts.ResizePropertiesCCPositionTopCenter) && !str.equals(Consts.ResizePropertiesCCPositionBottomCenter) && !str.equals("center")) {
            return Consts.ResizePropertiesCCPositionTopRight;
        }
        return str;
    }

    private void b() {
        ((ViewGroup) this.f3961a.getParent().getParent().getParent()).removeView((View) this.f3961a.getParent().getParent());
        ((ViewGroup) this.f3961a.getParent()).removeView(this.f3961a);
        View findViewById = ((View) this.f3961a.getOriginalParent()).findViewById(PLACEHOLDER_ID);
        ((ViewGroup) findViewById.getParent()).removeView(findViewById);
        ((ViewGroup) this.f3961a.getOriginalParent()).addView(this.f3961a, this.f3961a.getOriginalIndex());
        this.f3961a.resetLayout();
    }

    public void reset() {
        this.resizeProperties = new JSController.ResizeProperties();
    }

    public void onOrientationChange() {
        if (this.f3961a.getStateVariable() == IMWebView.ViewState.RESIZED && !this.resizeProperties.allowOffscreen) {
            doResize(null);
        }
    }
}
