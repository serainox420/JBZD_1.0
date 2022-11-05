package com.mdotm.android.view;

import android.app.Activity;
import android.content.Intent;
import com.mdotm.android.constants.MdotMConstants;
import com.mdotm.android.http.MdotMRequestQueueClient;
import com.mdotm.android.listener.InterstitialActionListener;
import com.mdotm.android.listener.MdotMAdEventListener;
import com.mdotm.android.listener.MdotMNetworkListener;
import com.mdotm.android.model.MdotMAdRequest;
import com.mdotm.android.model.MdotMAdResponse;
import com.mdotm.android.nativeads.MdotMNativeAd;
import com.mdotm.android.utils.MdotMLogger;
import com.mdotm.android.utils.MdotMUtils;
import com.mdotm.android.vast.BaseVastAd;
import com.mdotm.android.vast.Companion;
import com.mdotm.android.vast.LinearAd;
import com.mdotm.android.vast.VastAd;
import com.mdotm.android.vast.VastInterstitialActivity;
import java.util.ArrayList;
/* loaded from: classes3.dex */
public class MdotMInterstitial implements InterstitialActionListener, MdotMNetworkListener {
    private static boolean isRewarded = false;
    private Activity activity;
    private long listenerId;
    public MdotMAdEventListener mAdEventListener;
    private Activity mContext;
    private String reward;
    public boolean isInterstitialReady = false;
    private String htmlVastResponse = null;
    private MdotMAdResponse interstitialResponse = null;
    private VastAd vastAdResponse = null;

    public MdotMInterstitial(Activity activity) {
        this.mContext = activity;
    }

    public void loadInterstitial(MdotMAdEventListener mdotMAdEventListener, MdotMAdRequest mdotMAdRequest) {
        isRewarded = false;
        this.listenerId = System.currentTimeMillis();
        MdotMLogger.d(this, "listener id " + this.listenerId);
        this.mAdEventListener = mdotMAdEventListener;
        MdotMUtils.getUtilsInstance().setInterstitialActionListener(this.listenerId, this);
        this.isInterstitialReady = false;
        mdotMAdRequest.setAdSize(MdotMUtils.getUtilsInstance().getDisplaySize(this.mContext));
        this.interstitialResponse = null;
        MdotMLogger.d(this, "inter caling load");
        MdotMRequestQueueClient.getInstance(this.mContext).addRequest(mdotMAdRequest, this);
    }

    public void loadRewardedVideo(MdotMAdEventListener mdotMAdEventListener, MdotMAdRequest mdotMAdRequest, String str) {
        isRewarded = true;
        this.reward = str;
        this.listenerId = System.currentTimeMillis();
        MdotMLogger.d(this, "listener id " + this.listenerId);
        this.mAdEventListener = mdotMAdEventListener;
        MdotMUtils.getUtilsInstance().setInterstitialActionListener(this.listenerId, this);
        this.isInterstitialReady = false;
        mdotMAdRequest.setAdSize(MdotMUtils.getUtilsInstance().getDisplaySize(this.mContext));
        this.interstitialResponse = null;
        MdotMLogger.d(this, "inter caling load");
        MdotMRequestQueueClient.getInstance(this.mContext).addRequest(mdotMAdRequest, this);
    }

    public void showInterstitial(Activity activity) {
        Intent intent;
        this.activity = activity;
        if (this.isInterstitialReady) {
            if (this.mAdEventListener != null) {
                this.mAdEventListener.willShowInterstitial();
            }
            int i = activity.getResources().getConfiguration().orientation;
            if (this.vastAdResponse != null && (this.vastAdResponse.getVastAds().get(0).getAdType() == 1 || this.vastAdResponse.getVastAds().get(0).getAdType() == 2)) {
                intent = new Intent(activity, VastInterstitialActivity.class);
                intent.putExtra(MdotMConstants.RESPONSE, this.vastAdResponse);
                intent.putExtra(MdotMConstants.IS_REWARDED, isRewarded);
                intent.putExtra("reward", this.reward);
            } else {
                intent = new Intent(activity, MdotMActivity.class);
                intent.putExtra(MdotMConstants.RESPONSE, this.interstitialResponse);
                intent.putExtra("reward", this.reward);
                MdotMLogger.d(this, "interst" + this.interstitialResponse);
            }
            intent.putExtra("InterstitialActionListenerId", this.listenerId);
            intent.putExtra("ScreenOrientation", i);
            activity.startActivity(intent);
            if (this.mAdEventListener != null) {
                this.mAdEventListener.didShowInterstitial();
            }
            this.isInterstitialReady = false;
            return;
        }
        MdotMLogger.d(this, "Interstitial is not ready");
    }

    @Override // com.mdotm.android.listener.MdotMNetworkListener
    public void finishedAdParsing(MdotMAdResponse mdotMAdResponse) {
        this.vastAdResponse = null;
        if (mdotMAdResponse != null && mdotMAdResponse.getStatus() != 0 && mdotMAdResponse.getImageUrl() != null) {
            MdotMLogger.d(this, "interstitial response" + mdotMAdResponse.getImageUrl());
            this.interstitialResponse = mdotMAdResponse;
            MdotMLogger.d(this, "interstitial response2" + this.interstitialResponse.getImageUrl());
            this.isInterstitialReady = true;
            if (this.mAdEventListener != null) {
                this.mAdEventListener.onReceiveInterstitialAd();
            }
        } else if (this.mAdEventListener != null) {
            this.mAdEventListener.onFailedToReceiveInterstitialAd();
        }
    }

    @Override // com.mdotm.android.listener.InterstitialActionListener
    public void onDismiss() {
        if (this.mAdEventListener != null) {
            this.mAdEventListener.onInterstitialDismiss();
            MdotMUtils.getUtilsInstance().removeInterstitialActionListener(this.listenerId);
        }
    }

    @Override // com.mdotm.android.listener.InterstitialActionListener
    public void onLeave() {
        if (this.mAdEventListener != null) {
            this.mAdEventListener.onLeaveApplicationFromInterstitial();
        }
    }

    @Override // com.mdotm.android.listener.InterstitialActionListener
    public void onFailed() {
        if (this.mAdEventListener != null) {
            this.mAdEventListener.onFailedToReceiveInterstitialAd();
        }
    }

    @Override // com.mdotm.android.listener.InterstitialActionListener
    public void onClick() {
        MdotMLogger.d(this, "Adclicked");
        if (this.mAdEventListener != null) {
            this.mAdEventListener.onInterstitialAdClick();
        }
    }

    @Override // com.mdotm.android.listener.MdotMNetworkListener
    public void finishedVastParsing(final VastAd vastAd) {
        int i = 0;
        MdotMLogger.d(this, "finishedAdParsing" + vastAd.getStatus());
        this.interstitialResponse = null;
        if (vastAd != null && vastAd.getStatus() != 0) {
            MdotMLogger.d(this, "finishedAdParsing " + vastAd.getAdTitle());
            ArrayList<BaseVastAd> vastAds = vastAd.getVastAds();
            if (vastAds != null && vastAds.size() > 0) {
                int i2 = 0;
                for (int i3 = 0; i3 < vastAds.size(); i3++) {
                    if (vastAd.getVastAds().get(i3).getAdType() == 1) {
                        if (((LinearAd) vastAds.get(i3)).getAdResource().getUrl() == null) {
                            i2++;
                        }
                    } else if (vastAd.getVastAds().get(i3).getAdType() == 3) {
                        this.htmlVastResponse = ((Companion) vastAd.getVastAds().get(i3)).getHTMLResource();
                        MdotMLogger.d(this, "Vast ad for HTML parsing" + this.htmlVastResponse);
                    }
                }
                if (i2 != vastAds.size()) {
                    this.vastAdResponse = vastAd;
                    this.isInterstitialReady = true;
                    if (this.mAdEventListener != null) {
                        this.mAdEventListener.onReceiveInterstitialAd();
                        return;
                    }
                    return;
                } else if (this.mAdEventListener != null) {
                    this.mAdEventListener.onFailedToReceiveInterstitialAd();
                    return;
                } else {
                    return;
                }
            }
            ArrayList<String> error = vastAd.getError();
            if (error.size() > 0) {
                while (true) {
                    int i4 = i;
                    if (i4 >= error.size()) {
                        break;
                    }
                    MdotMUtils.getUtilsInstance().reportImpression(error.get(i4), this.mContext);
                    MdotMLogger.d(this, "fire error code" + error.get(i4));
                    i = i4 + 1;
                }
            }
            if (this.mAdEventListener != null) {
                this.mAdEventListener.onFailedToReceiveInterstitialAd();
            }
        } else if (this.mAdEventListener != null) {
            this.mAdEventListener.onFailedToReceiveInterstitialAd();
            this.mContext.runOnUiThread(new Runnable() { // from class: com.mdotm.android.view.MdotMInterstitial.1
                @Override // java.lang.Runnable
                public void run() {
                    ArrayList<String> error2 = vastAd.getError();
                    if (error2.size() > 0) {
                        int i5 = 0;
                        while (true) {
                            int i6 = i5;
                            if (i6 < error2.size()) {
                                MdotMUtils.getUtilsInstance().reportImpression(error2.get(i6), MdotMInterstitial.this.mContext);
                                MdotMLogger.d(this, "fire error code" + error2.get(i6));
                                i5 = i6 + 1;
                            } else {
                                return;
                            }
                        }
                    }
                }
            });
        }
    }

    public static boolean getRewarded() {
        return isRewarded;
    }

    @Override // com.mdotm.android.listener.InterstitialActionListener
    public void onRewardedVideoComplete(boolean z, String str) {
        this.mAdEventListener.onRewardedVideoComplete(z, str);
        MdotMLogger.d(this, "call reward complete listners");
    }

    @Override // com.mdotm.android.listener.InterstitialActionListener
    public void loadPendingCompanion() {
        new Intent(this.activity, MdotMActivity.class).putExtra(MdotMConstants.RESPONSE, this.interstitialResponse);
        MdotMLogger.d(this, "pending companion" + this.interstitialResponse);
    }

    @Override // com.mdotm.android.listener.MdotMNetworkListener
    public void finishedNativeParsing(VastAd vastAd) {
        ArrayList<MdotMNativeAd> arrayList = new ArrayList<>();
        if (vastAd != null && vastAd.getStatus() != 0) {
            MdotMLogger.d(this, "finished Native Parsing ");
            if (this.mAdEventListener != null) {
                int i = 0;
                while (true) {
                    int i2 = i;
                    if (i2 < vastAd.getVastAds().size()) {
                        arrayList.add((MdotMNativeAd) vastAd.getVastAds().get(i2));
                        i = i2 + 1;
                    } else {
                        this.mAdEventListener.onReceiveNativeAd(arrayList);
                        return;
                    }
                }
            }
        }
    }
}
