package com.inmobi.re.container.mraidimpl;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.URLUtil;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.inmobi.androidsdk.IMBrowserActivity;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.internal.WrapperFunctions;
import com.inmobi.re.container.CustomView;
import com.inmobi.re.container.IMWebView;
import com.inmobi.re.controller.JSController;
import com.inmobi.re.controller.util.Constants;
/* loaded from: classes2.dex */
public class MRAIDExpandController {
    protected static final int PLACEHOLDER_ID = 437;
    protected static final int RELATIVELAYOUT_ID = 438;

    /* renamed from: a  reason: collision with root package name */
    private IMWebView f3953a;
    private Activity b;
    private Activity c;
    public JSController.ExpandProperties expandProperties;
    public int initialExpandOrientation;
    public Display mSensorDisplay;
    public String orientationValueForExpand;
    public boolean useLockOrient;
    public boolean tempExpPropsLock = true;
    private IMWebView d = null;
    public boolean mIsExpandUrlValid = false;
    public boolean lockOrientationValueForExpand = true;
    private IMWebView e = null;

    public MRAIDExpandController(IMWebView iMWebView, Activity activity) {
        this.f3953a = iMWebView;
        this.b = activity;
    }

    public void setActivity(Activity activity) {
        if (activity != null) {
            this.c = activity;
        }
    }

    public void doExpand(Bundle bundle) {
        this.f3953a.doNotFireVisibilityChanged.set(true);
        try {
            if (this.f3953a.getOriginalParent() == null) {
                this.f3953a.saveOriginalViewParent();
            }
            if (((FrameLayout) this.f3953a.getParent().getParent()).getId() == 435) {
                ((ViewGroup) this.f3953a.getParent().getParent().getParent()).removeView((View) this.f3953a.getParent().getParent());
            }
        } catch (Exception e) {
        }
        try {
            String string = bundle.getString(IMWebView.EXPAND_URL);
            if (URLUtil.isValidUrl(string)) {
                this.mIsExpandUrlValid = true;
                this.d = new IMWebView(this.f3953a.getContext(), this.f3953a.mListener, false, false);
                this.e = this.d;
                this.d.publisherOrientation = this.f3953a.publisherOrientation;
                this.d.mExpandController.tempExpPropsLock = this.f3953a.mExpandController.tempExpPropsLock;
                this.d.mExpandController.expandProperties = new JSController.ExpandProperties();
                this.d.mExpandController.expandProperties.x = this.f3953a.mExpandController.expandProperties.x;
                this.d.mExpandController.expandProperties.y = this.expandProperties.y;
                this.d.mExpandController.expandProperties.currentX = this.expandProperties.currentX;
                this.d.mExpandController.expandProperties.currentY = this.expandProperties.currentY;
                this.d.mExpandController.initialExpandOrientation = this.f3953a.mExpandController.initialExpandOrientation;
                this.d.mExpandController.useLockOrient = this.f3953a.mExpandController.useLockOrient;
                this.d.mExpandController.mIsExpandUrlValid = this.f3953a.mExpandController.mIsExpandUrlValid;
                this.d.mExpandController.e = this.f3953a.mExpandController.e;
                this.d.mOriginalWebviewForExpandUrl = this.f3953a;
                this.d.setOriginalParent(this.f3953a.getOriginalParent());
                this.f3953a.doNotFireVisibilityChanged.set(false);
            } else {
                this.mIsExpandUrlValid = false;
            }
            FrameLayout a2 = a(this.expandProperties);
            a2.setBackgroundColor(0);
            try {
                Intent intent = new Intent(this.b, IMBrowserActivity.class);
                intent.putExtra(IMBrowserActivity.EXTRA_BROWSER_ACTIVITY_TYPE, 102);
                IMBrowserActivity.setExpandedLayout(a2);
                if (this.mIsExpandUrlValid) {
                    IMBrowserActivity.setExpandedWebview(this.d);
                } else {
                    IMBrowserActivity.setExpandedWebview(this.f3953a);
                }
                IMBrowserActivity.setOriginalActivity(this.b);
                this.b.startActivity(intent);
            } catch (Exception e2) {
                Log.internal(Constants.RENDERING_LOG_TAG, "Exception in expand in separate activity ", e2);
            }
            this.f3953a.mAudioVideoController.videoValidateWidth = this.expandProperties.width;
            if (this.d != null) {
                this.d.mAudioVideoController.videoValidateWidth = this.expandProperties.width;
            }
            synchronized (this.f3953a.mutex) {
                this.f3953a.isMutexAquired.set(false);
                this.f3953a.mutex.notifyAll();
            }
            if (this.mIsExpandUrlValid) {
                this.d.loadUrl(string);
            }
            this.f3953a.requestLayout();
            this.f3953a.invalidate();
            this.f3953a.postInHandler(new Runnable() { // from class: com.inmobi.re.container.mraidimpl.MRAIDExpandController.1
                @Override // java.lang.Runnable
                public void run() {
                    if (MRAIDExpandController.this.f3953a.mListener != null) {
                        MRAIDExpandController.this.f3953a.mListener.onExpand();
                    }
                }
            });
        } catch (Exception e3) {
            Log.debug(Constants.RENDERING_LOG_TAG, "Exception in doexpand ", e3);
            this.f3953a.setState(IMWebView.ViewState.DEFAULT);
            synchronized (this.f3953a.mutex) {
                this.f3953a.isMutexAquired.set(false);
                this.f3953a.mutex.notifyAll();
            }
        }
        this.f3953a.doNotFireVisibilityChanged.set(false);
    }

    public void closeExpanded() {
        if (this.f3953a.getViewState().compareTo(IMWebView.ViewState.DEFAULT) != 0) {
            if (this.e != null) {
                this.e.destroy();
            }
            if (this.f3953a.mOriginalWebviewForExpandUrl != null) {
                this.f3953a.mOriginalWebviewForExpandUrl.setState(IMWebView.ViewState.DEFAULT);
                this.f3953a.mAudioVideoController.releaseAllPlayers();
                this.f3953a.mOriginalWebviewForExpandUrl.mAudioVideoController.releaseAllPlayers();
                this.f3953a.mOriginalWebviewForExpandUrl.mExpandController.e = null;
                this.f3953a.destroy();
            } else {
                this.e = null;
            }
            synchronized (this.f3953a.mutex) {
                this.f3953a.isMutexAquired.set(false);
                this.f3953a.mutex.notifyAll();
            }
            if (!this.tempExpPropsLock && this.f3953a.publisherOrientation == -1) {
                this.tempExpPropsLock = true;
            }
            this.f3953a.doNotFireVisibilityChanged.set(true);
            c();
            this.f3953a.mAudioVideoController.releaseAllPlayers();
            this.f3953a.getMRAIDUrls().clear();
            this.f3953a.closeExpanded();
            this.f3953a.setVisibility(0);
            this.mIsExpandUrlValid = false;
            if (this.useLockOrient) {
                this.b.setRequestedOrientation(this.initialExpandOrientation);
            }
            this.f3953a.setState(IMWebView.ViewState.DEFAULT);
            this.f3953a.doNotFireVisibilityChanged.set(false);
        }
    }

    private FrameLayout a(JSController.ExpandProperties expandProperties) {
        FrameLayout frameLayout = (FrameLayout) ((ViewGroup) this.f3953a.getOriginalParent()).getRootView().findViewById(16908290);
        a();
        FrameLayout frameLayout2 = new FrameLayout(this.f3953a.getContext());
        ViewGroup.LayoutParams layoutParams = new FrameLayout.LayoutParams(WrapperFunctions.getParamFillParent(), WrapperFunctions.getParamFillParent());
        frameLayout2.setId(435);
        frameLayout2.setOnTouchListener(new View.OnTouchListener() { // from class: com.inmobi.re.container.mraidimpl.MRAIDExpandController.2
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
        frameLayout2.setPadding(expandProperties.x, expandProperties.y, 0, 0);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(WrapperFunctions.getParamFillParent(), WrapperFunctions.getParamFillParent());
        RelativeLayout relativeLayout = new RelativeLayout(this.f3953a.getContext());
        relativeLayout.setId(RELATIVELAYOUT_ID);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(WrapperFunctions.getParamFillParent(), WrapperFunctions.getParamFillParent());
        if (this.mIsExpandUrlValid) {
            relativeLayout.addView(this.d, layoutParams3);
        } else {
            relativeLayout.addView(this.f3953a, layoutParams3);
        }
        a(relativeLayout, expandProperties.useCustomClose);
        frameLayout2.addView(relativeLayout, layoutParams2);
        frameLayout.addView(frameLayout2, layoutParams);
        this.f3953a.setFocusable(true);
        this.f3953a.setFocusableInTouchMode(true);
        this.f3953a.requestFocus();
        return frameLayout2;
    }

    private void a() {
        try {
            if (this.f3953a.getOriginalParent() != this.f3953a.getParent()) {
                ((ViewGroup) this.f3953a.getParent()).removeView(this.f3953a);
            } else {
                FrameLayout frameLayout = new FrameLayout(this.f3953a.getContext());
                frameLayout.setId(PLACEHOLDER_ID);
                ((ViewGroup) this.f3953a.getOriginalParent()).addView(frameLayout, this.f3953a.getOriginalIndex(), new ViewGroup.LayoutParams(this.f3953a.getWidth(), this.f3953a.getHeight()));
                ((ViewGroup) this.f3953a.getParent()).removeView(this.f3953a);
            }
        } catch (Exception e) {
            Log.debug(Constants.RENDERING_LOG_TAG, "Exception in replaceByPlaceHolder ", e);
        }
    }

    private void a(ViewGroup viewGroup, boolean z) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) (this.f3953a.getDensity() * 50.0f), (int) (this.f3953a.getDensity() * 50.0f));
        layoutParams.addRule(11);
        viewGroup.addView(b(), layoutParams);
        CustomView customView = new CustomView(this.f3953a.getContext(), this.f3953a.getDensity(), CustomView.SwitchIconType.CLOSE_BUTTON);
        customView.setVisibility((z || this.f3953a.getCustomClose()) ? 8 : 0);
        customView.setId(225);
        viewGroup.addView(customView, layoutParams);
    }

    private CustomView b() {
        CustomView customView = new CustomView(this.f3953a.getContext(), this.f3953a.getDensity(), CustomView.SwitchIconType.CLOSE_TRANSPARENT);
        customView.setId(IMBrowserActivity.CLOSE_REGION_VIEW_ID);
        customView.disableView(this.f3953a.getDisableCloseRegion());
        return customView;
    }

    private void c() {
        if (this.d == null) {
            ((ViewGroup) this.f3953a.getParent().getParent().getParent()).removeView((View) this.f3953a.getParent().getParent());
            ((ViewGroup) this.f3953a.getParent()).removeView(this.f3953a);
        } else {
            ((ViewGroup) this.d.getParent().getParent().getParent()).removeView((View) this.d.getParent().getParent());
            ((ViewGroup) this.d.getParent()).removeView(this.d);
        }
        View findViewById = ((View) this.f3953a.getOriginalParent()).findViewById(PLACEHOLDER_ID);
        ((ViewGroup) findViewById.getParent()).removeView(findViewById);
        IMWebView iMWebView = this.f3953a.mOriginalWebviewForExpandUrl != null ? this.f3953a.mOriginalWebviewForExpandUrl : this.f3953a;
        ((ViewGroup) this.f3953a.getOriginalParent()).addView(iMWebView, this.f3953a.getOriginalIndex());
        iMWebView.resetLayout();
    }

    public void handleOrientationFor2Piece() {
        try {
            int integerCurrentRotation = this.f3953a.getIntegerCurrentRotation();
            if (!this.f3953a.mInterstitialController.lockOrientationValueForInterstitial) {
                if (this.f3953a.mInterstitialController.orientationValueForInterstitial.equals("portrait")) {
                    this.b.setRequestedOrientation(WrapperFunctions.getParamPortraitOrientation(integerCurrentRotation));
                } else if (this.f3953a.mInterstitialController.orientationValueForInterstitial.equals("landscape")) {
                    this.b.setRequestedOrientation(WrapperFunctions.getParamLandscapeOrientation(integerCurrentRotation));
                } else if (this.b.getResources().getConfiguration().orientation == 2) {
                    Log.internal(Constants.RENDERING_LOG_TAG, "In allowFalse, none mode dev orientation:ORIENTATION_LANDSCAPE");
                    this.b.setRequestedOrientation(0);
                } else {
                    Log.internal(Constants.RENDERING_LOG_TAG, "In allowFalse, none mode dev orientation:ORIENTATION_PORTRAIT");
                    this.b.setRequestedOrientation(1);
                }
            } else if (this.b.getResources().getConfiguration().orientation == 2) {
                Log.internal(Constants.RENDERING_LOG_TAG, "In allow true,  device orientation:ORIENTATION_LANDSCAPE");
            } else {
                Log.internal(Constants.RENDERING_LOG_TAG, "In allow true,  device orientation:ORIENTATION_PORTRAIT");
            }
        } catch (Exception e) {
            Log.internal(Constants.RENDERING_LOG_TAG, "IMWebview Handle orientation for 2 piece ", e);
        }
    }

    public void reset() {
        this.expandProperties = new JSController.ExpandProperties();
    }

    public void disableEnableHardwareAccelerationForExpandWithURLView() {
        if (this.e != null) {
            this.e.disableHardwareAcceleration();
        }
    }

    public void handleOrientationForExpand() {
        if (this.mIsExpandUrlValid) {
            this.e.lockExpandOrientation(this.c, this.lockOrientationValueForExpand, this.orientationValueForExpand);
        } else {
            this.f3953a.lockExpandOrientation(this.c, this.lockOrientationValueForExpand, this.orientationValueForExpand);
        }
    }
}
