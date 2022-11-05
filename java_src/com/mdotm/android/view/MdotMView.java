package com.mdotm.android.view;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Point;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.Display;
import android.view.WindowManager;
import android.widget.RelativeLayout;
import com.mdotm.android.http.MdotMNetworkManager;
import com.mdotm.android.http.MdotMRequestQueueClient;
import com.mdotm.android.listener.MdotMAdActionListener;
import com.mdotm.android.listener.MdotMAdEventListener;
import com.mdotm.android.listener.MdotMNetworkListener;
import com.mdotm.android.model.MdotMAdRequest;
import com.mdotm.android.model.MdotMAdResponse;
import com.mdotm.android.nativeads.MdotMNativeAd;
import com.mdotm.android.utils.MdotMLogger;
import com.mdotm.android.vast.VastAd;
import java.util.ArrayList;
import java.util.Timer;
/* loaded from: classes3.dex */
class MdotMView extends RelativeLayout implements MdotMAdActionListener, MdotMAdEventListener, MdotMNetworkListener {
    private int deviceWidth;
    public boolean didParentStopped;
    private MdotMAdEventListener mAdEventListener;
    MdotMNetworkManager mAdManager;
    private MdotMAdRequest mAdRequest;
    private boolean mAdViewHasFocus;
    private Context mContext;
    private boolean mDidApllicationLeave;
    Handler mHandler;
    Timer timer;

    public MdotMView(Context context) {
        super(context);
        this.mAdEventListener = null;
        this.mAdRequest = null;
        this.mDidApllicationLeave = false;
        this.mAdViewHasFocus = true;
        this.didParentStopped = false;
        this.mContext = context;
        this.mHandler = new Handler();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        setLayoutParams(layoutParams);
    }

    public MdotMView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mAdEventListener = null;
        this.mAdRequest = null;
        this.mDidApllicationLeave = false;
        this.mAdViewHasFocus = true;
        this.didParentStopped = false;
    }

    public MdotMView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mAdEventListener = null;
        this.mAdRequest = null;
        this.mDidApllicationLeave = false;
        this.mAdViewHasFocus = true;
        this.didParentStopped = false;
        this.mContext = context;
        this.mHandler = new Handler();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        setLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        MdotMLogger.i(this, "Window focused " + z);
        if (z) {
            this.mAdViewHasFocus = true;
            MdotMRequestQueueClient.getInstance(this.mContext).setApplicationHasFocus(this.mAdViewHasFocus);
        } else {
            this.mAdViewHasFocus = false;
            MdotMRequestQueueClient.getInstance(this.mContext).setApplicationHasFocus(this.mAdViewHasFocus);
        }
        if (z && this.mDidApllicationLeave) {
            MdotMLogger.i(this, "Focus gained " + z);
            this.mDidApllicationLeave = false;
            onDismissScreen();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    public void loadAd(MdotMAdEventListener mdotMAdEventListener, MdotMAdRequest mdotMAdRequest) {
        this.mAdEventListener = mdotMAdEventListener;
        this.mAdRequest = mdotMAdRequest;
        sendRequest();
    }

    private void sendRequest() {
        MdotMLogger.i(this, "Sending request ");
        String[] split = this.mAdRequest.getAdSize().split(",");
        int deviceWidth = getDeviceWidth();
        int parseInt = (Integer.parseInt(split[1]) * deviceWidth) / Integer.parseInt(split[0]);
        if (deviceWidth <= getDeviceWidth()) {
            this.mAdRequest.setAdSize(String.valueOf(deviceWidth) + "," + parseInt);
        }
        if (this.mAdViewHasFocus) {
            MdotMLogger.i(this, "MdotMView is visible so requesting for ad");
            MdotMRequestQueueClient.getInstance(this.mContext).addRequest(this.mAdRequest, this);
            MdotMRequestQueueClient.getInstance(this.mContext).setApplicationHasFocus(this.mAdViewHasFocus);
        }
    }

    @Override // com.mdotm.android.listener.MdotMNetworkListener
    public void finishedAdParsing(MdotMAdResponse mdotMAdResponse) {
    }

    @TargetApi(13)
    private int getDeviceWidth() {
        Display defaultDisplay = ((WindowManager) getContext().getSystemService("window")).getDefaultDisplay();
        if (Build.VERSION.SDK_INT < 13) {
            this.deviceWidth = defaultDisplay.getWidth();
        } else {
            Point point = new Point();
            defaultDisplay.getSize(point);
            this.deviceWidth = point.x;
        }
        return this.deviceWidth;
    }

    public boolean isTablet(Context context) {
        return ((context.getResources().getConfiguration().screenLayout & 15) == 4) || ((context.getResources().getConfiguration().screenLayout & 15) == 3);
    }

    @Override // com.mdotm.android.listener.MdotMAdActionListener
    public void onDismissScreen() {
        if (this.mAdEventListener != null) {
            this.mAdEventListener.onDismissScreen();
        }
    }

    @Override // com.mdotm.android.listener.MdotMAdActionListener
    public void onPlayError() {
    }

    @Override // com.mdotm.android.listener.MdotMAdActionListener
    public void onPlayStop() {
    }

    @Override // com.mdotm.android.listener.MdotMAdActionListener
    public void onLoadError() {
    }

    @Override // com.mdotm.android.listener.MdotMNetworkListener
    public void finishedVastParsing(VastAd vastAd) {
    }

    @Override // com.mdotm.android.listener.MdotMAdEventListener
    public void onFailedToReceiveInterstitialAd() {
    }

    @Override // com.mdotm.android.listener.MdotMAdEventListener
    public void onInterstitialAdClick() {
    }

    @Override // com.mdotm.android.listener.MdotMAdEventListener
    public void onInterstitialDismiss() {
    }

    @Override // com.mdotm.android.listener.MdotMAdEventListener
    public void onLeaveApplicationFromInterstitial() {
    }

    @Override // com.mdotm.android.listener.MdotMAdEventListener
    public void onReceiveInterstitialAd() {
    }

    @Override // com.mdotm.android.listener.MdotMAdEventListener
    public void willShowInterstitial() {
    }

    @Override // com.mdotm.android.listener.MdotMAdEventListener
    public void didShowInterstitial() {
    }

    @Override // com.mdotm.android.listener.MdotMAdEventListener
    public void onRewardedVideoComplete(boolean z, String str) {
    }

    @Override // com.mdotm.android.listener.MdotMAdActionListener
    public void adClicked() {
    }

    @Override // com.mdotm.android.listener.MdotMAdActionListener
    public void leaveApplication() {
    }

    @Override // com.mdotm.android.listener.MdotMAdEventListener
    public void onReceiveNativeAd(ArrayList<MdotMNativeAd> arrayList) {
    }

    @Override // com.mdotm.android.listener.MdotMAdEventListener
    public void onFailedToReceiveNativeAd() {
    }

    @Override // com.mdotm.android.listener.MdotMNetworkListener
    public void finishedNativeParsing(VastAd vastAd) {
    }

    @Override // com.mdotm.android.listener.MdotMAdEventListener
    public void onNativeAdClick() {
    }

    @Override // com.mdotm.android.listener.MdotMAdActionListener
    public void onMraidRewardClick(boolean z) {
    }

    @Override // com.mdotm.android.listener.MdotMAdActionListener
    public void onUseCustomClose(boolean z) {
    }

    @Override // com.mdotm.android.listener.MdotMAdActionListener
    public void onOpenUrl(String str) {
    }

    @Override // com.mdotm.android.listener.MdotMAdActionListener
    public boolean getViewable() {
        return false;
    }
}
