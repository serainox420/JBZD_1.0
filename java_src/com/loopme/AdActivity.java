package com.loopme;

import android.app.Activity;
import android.content.IntentFilter;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.FrameLayout;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.loopme.AdReceiver;
import com.loopme.common.Logging;
import com.loopme.common.StaticParams;
import com.loopme.common.Utils;
/* loaded from: classes2.dex */
public final class AdActivity extends Activity implements AdReceiver.Listener {
    private static final String LOG_TAG = AdActivity.class.getSimpleName();
    private float mAccel;
    private float mAccelCurrent;
    private float mAccelLast;
    private AdController mAdController;
    private BaseAd mBaseAd;
    private int mFormat;
    private IViewController mIViewController;
    private int mInitialOrientation;
    private boolean mIs360;
    private FrameLayout mLayout;
    private boolean mReceivedDestroyBroadcast;
    private AdReceiver mReceiver;
    private SensorManager mSensorManager;
    private boolean mKeepAlive = true;
    private final SensorEventListener mSensorListener = new SensorEventListener() { // from class: com.loopme.AdActivity.1
        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            float f = sensorEvent.values[0];
            float f2 = sensorEvent.values[1];
            float f3 = sensorEvent.values[2];
            AdActivity.this.mAccelLast = AdActivity.this.mAccelCurrent;
            AdActivity.this.mAccelCurrent = (float) Math.sqrt((f * f) + (f2 * f2) + (f3 * f3));
            float f4 = AdActivity.this.mAccelCurrent - AdActivity.this.mAccelLast;
            AdActivity.this.mAccel = (AdActivity.this.mAccel * 0.9f) + f4;
            if (f4 > 5.0f && AdActivity.this.mAdController != null) {
                AdActivity.this.mAdController.onAdShake();
            }
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i) {
        }
    };

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setVolumeControlStream(3);
        this.mInitialOrientation = Utils.getScreenOrientation();
        String stringExtra = getIntent().getStringExtra(StaticParams.APPKEY_TAG);
        if (TextUtils.isEmpty(stringExtra)) {
            Logging.out(LOG_TAG, "Empty app key");
        }
        this.mFormat = getIntent().getIntExtra(StaticParams.FORMAT_TAG, 0);
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        getWindow().setFlags(16777216, 16777216);
        Logging.out(LOG_TAG, "onCreate");
        if (this.mFormat == 1001) {
            this.mBaseAd = LoopMeAdHolder.getInterstitial(stringExtra, null);
        } else if (this.mFormat == 1000) {
            this.mBaseAd = LoopMeAdHolder.getBanner(stringExtra, null);
        }
        if (this.mBaseAd == null || this.mBaseAd.getAdController() == null) {
            Logging.out(LOG_TAG, "No ads with app key " + stringExtra);
            finish();
            return;
        }
        this.mIs360 = this.mBaseAd.getAdParams().isVideo360();
        this.mAdController = this.mBaseAd.getAdController();
        this.mIViewController = this.mAdController.getViewController();
        if (this.mFormat == 1001) {
            if (!this.mIs360) {
                applyOrientationFromAdParams();
            }
        } else {
            setRequestedOrientation(6);
        }
        this.mLayout = buildLayout();
        setContentView(this.mLayout);
        initSensor();
        initDestroyReceiver();
        if (this.mFormat == 1001) {
            if (this.mIs360) {
                this.mIViewController.initVRLibrary(this);
            }
            ((LoopMeInterstitial) this.mBaseAd).onLoopMeInterstitialShow((LoopMeInterstitial) this.mBaseAd);
        }
    }

    private void initSensor() {
        this.mSensorManager = (SensorManager) getSystemService("sensor");
        this.mAccel = BitmapDescriptorFactory.HUE_RED;
        this.mAccelCurrent = 9.80665f;
        this.mAccelLast = 9.80665f;
    }

    private FrameLayout buildLayout() {
        this.mLayout = new FrameLayout(this);
        if (this.mFormat == 1001) {
            if (this.mAdController != null) {
                if (isVideoPresented()) {
                    this.mAdController.buildVideoAdView(this.mLayout);
                } else {
                    this.mAdController.buildStaticAdView(this.mLayout);
                }
            }
        } else {
            LoopMeBannerView loopMeBannerView = new LoopMeBannerView(this);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            this.mAdController.rebuildView(loopMeBannerView);
            this.mLayout.addView(loopMeBannerView, layoutParams);
        }
        return this.mLayout;
    }

    private boolean isVideoPresented() {
        return this.mAdController.isVideoPresented();
    }

    private void initDestroyReceiver() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(StaticParams.DESTROY_INTENT);
        intentFilter.addAction(StaticParams.CLICK_INTENT);
        this.mReceiver = new AdReceiver(this);
        registerReceiver(this.mReceiver, intentFilter);
    }

    private void applyOrientationFromAdParams() {
        String adOrientation = this.mBaseAd.getAdParams().getAdOrientation();
        if (adOrientation != null) {
            if (adOrientation.equalsIgnoreCase("portrait")) {
                setRequestedOrientation(7);
            } else if (adOrientation.equalsIgnoreCase("landscape")) {
                setRequestedOrientation(6);
            }
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        Logging.out(LOG_TAG, "onDestroy");
        if (this.mReceiver != null) {
            unregisterReceiver(this.mReceiver);
        }
        if (this.mLayout != null) {
            this.mLayout.removeAllViews();
        }
        if (this.mBaseAd != null && this.mFormat == 1001) {
            if (this.mIs360) {
                this.mIViewController.onDestroy();
            }
            ((LoopMeInterstitial) this.mBaseAd).onLoopMeInterstitialHide((LoopMeInterstitial) this.mBaseAd);
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        Logging.out(LOG_TAG, "onPause");
        if (this.mSensorManager != null) {
            this.mSensorManager.unregisterListener(this.mSensorListener);
        }
        if (this.mIViewController != null) {
            this.mIViewController.onPause();
        }
        if (this.mFormat == 1000) {
            if (!this.mReceivedDestroyBroadcast && this.mAdController != null) {
                this.mAdController.setWebViewState(2);
            }
        } else if (!this.mKeepAlive && this.mFormat == 1001) {
            if (this.mAdController != null) {
                this.mAdController.setWebViewState(3);
                if (this.mIs360) {
                    this.mAdController.pauseVideo();
                }
            }
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        Logging.out(LOG_TAG, "onResume");
        this.mKeepAlive = false;
        if (this.mAdController != null) {
            this.mAdController.setWebViewState(1);
            if (this.mIViewController != null) {
                this.mIViewController.onResume();
            }
        }
        if (this.mSensorManager != null) {
            this.mSensorManager.registerListener(this.mSensorListener, this.mSensorManager.getDefaultSensor(1), 3);
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (this.mFormat == 1000) {
            this.mAdController.switchToPreviousMode();
            super.onBackPressed();
        }
    }

    @Override // com.loopme.AdReceiver.Listener
    public void onDestroyBroadcast() {
        Logging.out(LOG_TAG, "onDestroyBroadcast");
        this.mReceivedDestroyBroadcast = true;
        if (this.mFormat == 1000) {
            setRequestedOrientation(this.mInitialOrientation);
            this.mAdController.switchToPreviousMode();
        }
        if (this.mReceiver != null) {
            unregisterReceiver(this.mReceiver);
            this.mReceiver = null;
        }
        finish();
    }

    @Override // com.loopme.AdReceiver.Listener
    public void onClickBroadcast() {
        this.mKeepAlive = true;
    }
}
