package com.inmobi.re.container.mraidimpl;

import android.app.Activity;
import android.os.Message;
import android.view.Display;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.inmobi.androidsdk.IMBrowserActivity;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.internal.WrapperFunctions;
import com.inmobi.re.configs.Initializer;
import com.inmobi.re.container.CustomView;
import com.inmobi.re.container.IMWebView;
import com.inmobi.re.controller.util.Constants;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2.dex */
public class MRAIDInterstitialController {
    protected static final int INT_BACKGROUND_ID = 224;
    public static AtomicBoolean isInterstitialDisplayed = new AtomicBoolean();

    /* renamed from: a  reason: collision with root package name */
    private IMWebView f3956a;
    private Activity b;
    private int d;
    public Message mMsgOnInterstitialClosed;
    public Message mMsgOnInterstitialShown;
    public Display mSensorDisplay;
    public String orientationValueForInterstitial;
    public boolean lockOrientationValueForInterstitial = true;
    private long c = 0;

    public MRAIDInterstitialController(IMWebView iMWebView, Activity activity) {
        this.f3956a = iMWebView;
    }

    public void setActivity(Activity activity) {
        if (activity != null) {
            this.b = activity;
        }
    }

    public void resetContentsForInterstitials() {
        try {
            if (this.f3956a.getParent() != null) {
                this.b.setRequestedOrientation(this.d);
                this.f3956a.mAudioVideoController.releaseAllPlayers();
                if (((RelativeLayout) ((FrameLayout) this.b.findViewById(16908290)).findViewById(INT_BACKGROUND_ID)) != null) {
                    if (this.c > 0) {
                        animateAndDismissWebview();
                    } else {
                        dismissWebview();
                    }
                }
                this.f3956a.fireOnDismissAdScreen();
                this.f3956a.injectJavaScript("window.mraidview.unRegisterOrientationListener()");
                this.f3956a.setState(IMWebView.ViewState.HIDDEN);
                this.b.finish();
            }
        } catch (Exception e) {
            Log.debug(Constants.RENDERING_LOG_TAG, "Failed to close the interstitial ad", e);
        }
    }

    public void animateAndDismissWebview() {
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, (float) BitmapDescriptorFactory.HUE_RED);
        alphaAnimation.setInterpolator(new AccelerateInterpolator());
        alphaAnimation.setStartOffset(0L);
        alphaAnimation.setDuration(this.c);
        alphaAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.inmobi.re.container.mraidimpl.MRAIDInterstitialController.1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                MRAIDInterstitialController.this.dismissWebview();
            }
        });
        this.f3956a.startAnimation(alphaAnimation);
    }

    public void dismissWebview() {
        final FrameLayout frameLayout = (FrameLayout) this.b.findViewById(16908290);
        final RelativeLayout relativeLayout = (RelativeLayout) frameLayout.findViewById(INT_BACKGROUND_ID);
        this.b.runOnUiThread(new Runnable() { // from class: com.inmobi.re.container.mraidimpl.MRAIDInterstitialController.2
            @Override // java.lang.Runnable
            public void run() {
                relativeLayout.removeView(MRAIDInterstitialController.this.f3956a);
                frameLayout.removeView(relativeLayout);
            }
        });
    }

    public void handleOrientationForInterstitial() {
        this.f3956a.lockExpandOrientation(this.b, this.lockOrientationValueForInterstitial, this.orientationValueForInterstitial);
    }

    public void changeContentAreaForInterstitials(long j) {
        try {
            this.c = j;
            int webviewBgColor = Initializer.getConfigParams().getWebviewBgColor();
            this.d = this.b.getRequestedOrientation();
            handleOrientationForInterstitial();
            FrameLayout frameLayout = (FrameLayout) this.b.findViewById(16908290);
            RelativeLayout relativeLayout = new RelativeLayout(this.f3956a.getContext());
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(WrapperFunctions.getParamFillParent(), WrapperFunctions.getParamFillParent());
            layoutParams.addRule(10);
            this.f3956a.setFocusable(true);
            this.f3956a.setFocusableInTouchMode(true);
            relativeLayout.addView(this.f3956a, layoutParams);
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams((int) (this.f3956a.getDensity() * 50.0f), (int) (this.f3956a.getDensity() * 50.0f));
            layoutParams2.addRule(11);
            relativeLayout.addView(a(), layoutParams2);
            CustomView customView = new CustomView(this.f3956a.getContext(), this.f3956a.getDensity(), CustomView.SwitchIconType.CLOSE_BUTTON);
            customView.setVisibility(this.f3956a.getCustomClose() ? 8 : 0);
            customView.setId(225);
            relativeLayout.addView(customView, layoutParams2);
            ViewGroup.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(WrapperFunctions.getParamFillParent(), WrapperFunctions.getParamFillParent());
            relativeLayout.setId(INT_BACKGROUND_ID);
            relativeLayout.setBackgroundColor(webviewBgColor);
            frameLayout.addView(relativeLayout, layoutParams3);
            this.f3956a.setBackgroundColor(webviewBgColor);
            this.f3956a.requestFocus();
            this.f3956a.setOnKeyListener(new View.OnKeyListener() { // from class: com.inmobi.re.container.mraidimpl.MRAIDInterstitialController.3
                @Override // android.view.View.OnKeyListener
                public boolean onKey(View view, int i, KeyEvent keyEvent) {
                    if (4 == keyEvent.getKeyCode() && keyEvent.getAction() == 0) {
                        Log.debug(Constants.RENDERING_LOG_TAG, "Back Button pressed while Interstitial ad is in active state ");
                        MRAIDInterstitialController.this.handleInterstitialClose();
                        return MRAIDInterstitialController.this.c > 0;
                    }
                    return false;
                }
            });
            this.f3956a.setOnTouchListener(new View.OnTouchListener() { // from class: com.inmobi.re.container.mraidimpl.MRAIDInterstitialController.4
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    switch (motionEvent.getAction()) {
                        case 0:
                            view.requestFocus();
                            return false;
                        case 1:
                            view.requestFocus();
                            return false;
                        default:
                            return false;
                    }
                }
            });
            isInterstitialDisplayed.set(true);
            this.f3956a.fireOnShowAdScreen();
        } catch (Exception e) {
            Log.debug(Constants.RENDERING_LOG_TAG, "Failed showing interstitial ad", e);
        }
    }

    private CustomView a() {
        CustomView customView = new CustomView(this.f3956a.getContext(), this.f3956a.getDensity(), CustomView.SwitchIconType.CLOSE_TRANSPARENT);
        customView.setId(IMBrowserActivity.CLOSE_REGION_VIEW_ID);
        customView.disableView(this.f3956a.getDisableCloseRegion());
        return customView;
    }

    public void handleInterstitialClose() {
        IMWebView.userInitiatedClose = true;
        isInterstitialDisplayed.set(false);
        this.f3956a.close();
    }
}
