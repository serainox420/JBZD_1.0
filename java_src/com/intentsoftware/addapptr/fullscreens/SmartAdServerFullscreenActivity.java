package com.intentsoftware.addapptr.fullscreens;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.mopub.mobileads.resource.DrawableConstants;
import com.smartadserver.android.library.SASBannerView;
import com.smartadserver.android.library.model.SASAdElement;
/* loaded from: classes2.dex */
public class SmartAdServerFullscreenActivity extends Activity {
    private static final int CLOSE_BUTTON_SIZE = 38;
    public static final String HASH_PARAM_NAME = "viewHashCode";
    public static final String HEIGHT_PARAM_NAME = "height";
    public static final String ORIENTATION_PARAM_NAME = "orientation";
    public static final String SMART_AD_SERVER_CLICKED = "SMART_AD_SERVER_CLICKED";
    public static final String SMART_AD_SERVER_FAILED = "SMART_AD_SERVER_FAILED";
    public static final String SMART_AD_SERVER_FINISH = "SMART_AD_SERVER_FINISH";
    public static final String WIDTH_PARAM_NAME = "width";
    private Handler closeAdHandler;
    private Runnable closeAdRunnable;
    private int height;
    private SASBannerView interstitialView;
    private boolean reportedClick;
    private int width;

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            this.interstitialView = SmartAdServerFullscreen.getCachedView(extras.getInt(HASH_PARAM_NAME));
            int i = extras.getInt("orientation", 0);
            if (i == 1) {
                setRequestedOrientation(7);
            } else if (i == 2) {
                setRequestedOrientation(6);
            }
            this.width = extras.getInt("width");
            this.height = extras.getInt("height");
        }
    }

    @Override // android.app.Activity
    @SuppressLint({"InlinedApi", "RtlHardcoded"})
    protected void onStart() {
        FrameLayout.LayoutParams layoutParams;
        super.onStart();
        if (this.interstitialView != null) {
            ViewGroup viewGroup = (ViewGroup) this.interstitialView.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(this.interstitialView);
            }
            this.interstitialView.setVisibility(0);
            this.interstitialView.setEnabled(true);
            this.interstitialView.setClickable(true);
            ImageView imageView = new ImageView(this);
            imageView.setBackgroundDrawable(new a(true));
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.intentsoftware.addapptr.fullscreens.SmartAdServerFullscreenActivity.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    SmartAdServerFullscreenActivity.this.closeAd();
                }
            });
            View view = new View(this);
            view.setOnTouchListener(createTouchListener());
            this.interstitialView.addView(view, new ViewGroup.LayoutParams(-1, -1));
            this.interstitialView.o();
            SASAdElement currentAdElement = this.interstitialView.getCurrentAdElement();
            if (currentAdElement != null && currentAdElement.getAdDuration() > 0) {
                this.closeAdHandler = new Handler();
                this.closeAdRunnable = new Runnable() { // from class: com.intentsoftware.addapptr.fullscreens.SmartAdServerFullscreenActivity.2
                    @Override // java.lang.Runnable
                    public void run() {
                        SmartAdServerFullscreenActivity.this.closeAd();
                    }
                };
                this.closeAdHandler.postDelayed(this.closeAdRunnable, currentAdElement.getAdDuration());
            }
            FrameLayout frameLayout = new FrameLayout(this);
            float f = getResources().getDisplayMetrics().density;
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams((int) (38.0f * f), (int) (f * 38.0f));
            layoutParams2.gravity = 51;
            if (this.width > 0 && this.height > 0) {
                layoutParams = new FrameLayout.LayoutParams(this.width, this.height);
            } else {
                layoutParams = new FrameLayout.LayoutParams(-1, -1);
            }
            layoutParams.gravity = 17;
            frameLayout.addView(this.interstitialView, layoutParams);
            frameLayout.addView(imageView, layoutParams2);
            frameLayout.setBackgroundColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
            setContentView(frameLayout);
            return;
        }
        Intent intent = new Intent();
        intent.setAction(SMART_AD_SERVER_FAILED);
        sendBroadcast(intent);
        finishActivity();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeAd() {
        if (this.closeAdHandler != null && this.closeAdRunnable != null) {
            this.closeAdHandler.removeCallbacks(this.closeAdRunnable);
            this.closeAdRunnable = null;
            this.closeAdHandler = null;
        }
        if (this.interstitialView != null) {
            this.interstitialView.n();
        }
        finishActivity();
    }

    private View.OnTouchListener createTouchListener() {
        return new View.OnTouchListener() { // from class: com.intentsoftware.addapptr.fullscreens.SmartAdServerFullscreenActivity.3
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 1) {
                    view.performClick();
                }
                if (!SmartAdServerFullscreenActivity.this.reportedClick) {
                    SmartAdServerFullscreenActivity.this.reportedClick = true;
                    Intent intent = new Intent();
                    intent.setAction(SmartAdServerFullscreenActivity.SMART_AD_SERVER_CLICKED);
                    SmartAdServerFullscreenActivity.this.sendBroadcast(intent);
                    return false;
                }
                return false;
            }
        };
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        closeAd();
    }

    private void finishActivity() {
        ViewGroup viewGroup;
        if (!isFinishing()) {
            if (this.interstitialView != null && (viewGroup = (ViewGroup) this.interstitialView.getParent()) != null) {
                viewGroup.removeView(this.interstitialView);
            }
            Intent intent = new Intent();
            intent.setAction(SMART_AD_SERVER_FINISH);
            sendBroadcast(intent);
            finish();
        }
    }
}
