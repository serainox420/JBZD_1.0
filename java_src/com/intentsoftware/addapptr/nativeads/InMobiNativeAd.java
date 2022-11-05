package com.intentsoftware.addapptr.nativeads;

import android.app.Activity;
import android.content.Intent;
import android.location.Location;
import android.net.Uri;
import android.view.View;
import android.view.ViewGroup;
import com.inmobi.commons.InMobi;
import com.inmobi.monetization.IMErrorCode;
import com.inmobi.monetization.IMNative;
import com.inmobi.monetization.IMNativeListener;
import com.intentsoftware.addapptr.BannerSize;
import com.intentsoftware.addapptr.ad.NativeAd;
import com.intentsoftware.addapptr.c.b;
import com.intentsoftware.addapptr.c.c;
import com.intentsoftware.addapptr.c.d;
import com.intentsoftware.addapptr.c.k;
import org.json.JSONObject;
import org.json.JSONTokener;
/* loaded from: classes2.dex */
public class InMobiNativeAd extends NativeAd implements d.a {
    private static final int REQUIRED_PERCENTAGE = 50;
    private static final int REQUIRED_TIME = 1000;
    private String clickUrl;
    private d impressionTracker;
    private ViewGroup layout;
    private IMNative loadedNativeAd;

    @Override // com.intentsoftware.addapptr.ad.a
    public void load(Activity activity, String str, BannerSize bannerSize, k kVar) {
        super.load(activity, str, bannerSize, kVar);
        String[] split = str.split(":");
        if (split.length < 3 && split.length > 1) {
            if (c.isLoggable(5)) {
                c.w(this, "Wrong number of arguments for InMobi config! Check your network key configuration.");
            }
            notifyListenerThatAdFailedToLoad("wrong number of arguments in adId");
            return;
        }
        String str2 = split[0];
        InMobi.initialize(activity, str2);
        Location location = b.getLocation();
        if (location != null) {
            InMobi.setCurrentLocation(location);
        }
        IMNative iMNative = new IMNative(str2, createListener());
        this.impressionTracker = new d(1000, 50, this);
        iMNative.loadAd();
    }

    private IMNativeListener createListener() {
        return new IMNativeListener() { // from class: com.intentsoftware.addapptr.nativeads.InMobiNativeAd.1
            @Override // com.inmobi.monetization.IMNativeListener
            public void onNativeRequestFailed(IMErrorCode iMErrorCode) {
                InMobiNativeAd.this.notifyListenerThatAdFailedToLoad(iMErrorCode.toString());
            }

            @Override // com.inmobi.monetization.IMNativeListener
            public void onNativeRequestSucceeded(IMNative iMNative) {
                InMobiNativeAd.this.loadedNativeAd = iMNative;
                try {
                    JSONObject jSONObject = new JSONObject(new JSONTokener(iMNative.getContent()));
                    InMobiNativeAd.this.setAsset(NativeAd.TITLE_TEXT_ASSET, jSONObject.getString("title"));
                    InMobiNativeAd.this.setAsset("description", jSONObject.getString("description"));
                    InMobiNativeAd.this.setAsset(NativeAd.CALL_TO_ACTION_TEXT_ASSET, jSONObject.optString(NativeAd.CALL_TO_ACTION_TEXT_ASSET));
                    int optInt = jSONObject.optInt(com.millennialmedia.NativeAd.COMPONENT_ID_RATING);
                    if (optInt > 0) {
                        InMobiNativeAd.this.setRating(new NativeAd.a(optInt, 5.0d));
                    }
                    JSONObject jSONObject2 = jSONObject.getJSONObject("screenshots");
                    if (jSONObject2 != null) {
                        InMobiNativeAd.this.setAsset(NativeAd.MAIN_IMAGE_ASSET, jSONObject2.getString("url"));
                    }
                    JSONObject jSONObject3 = jSONObject.getJSONObject(NativeAd.ICON_IMAGE_ASSET);
                    if (jSONObject3 != null) {
                        InMobiNativeAd.this.setAsset(NativeAd.ICON_IMAGE_ASSET, jSONObject3.getString("url"));
                    }
                    InMobiNativeAd.this.clickUrl = jSONObject.optString("landingURL");
                    InMobiNativeAd.this.notifyListenerThatAdWasLoaded();
                } catch (Exception e) {
                    InMobiNativeAd.this.notifyListenerThatAdFailedToLoad("error when parsing response: " + e.getMessage());
                }
            }
        };
    }

    @Override // com.intentsoftware.addapptr.ad.NativeAd, com.intentsoftware.addapptr.ad.d
    public void attachToLayout(ViewGroup viewGroup) {
        if (viewGroup != null) {
            this.layout = viewGroup;
            this.loadedNativeAd.attachToView(viewGroup);
            viewGroup.setOnClickListener(new View.OnClickListener() { // from class: com.intentsoftware.addapptr.nativeads.InMobiNativeAd.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    InMobiNativeAd.this.loadedNativeAd.handleClick(null);
                    InMobiNativeAd.this.notifyListenerThatAdWasClicked();
                    if (InMobiNativeAd.this.clickUrl != null) {
                        InMobiNativeAd.this.getActivity().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(InMobiNativeAd.this.clickUrl)));
                    }
                }
            });
            this.impressionTracker.attachToView(viewGroup);
        }
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void resume(Activity activity) {
        super.resume(activity);
        this.impressionTracker.resume();
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void pause() {
        this.impressionTracker.pause();
        super.pause();
    }

    @Override // com.intentsoftware.addapptr.ad.NativeAd, com.intentsoftware.addapptr.ad.a
    public void unload() {
        super.unload();
        if (this.layout != null) {
            this.layout.setOnClickListener(null);
        }
        this.impressionTracker.destroy();
        this.impressionTracker = null;
        if (this.loadedNativeAd != null) {
            this.loadedNativeAd.detachFromView();
            this.loadedNativeAd = null;
        }
    }

    @Override // com.intentsoftware.addapptr.ad.NativeAd, com.intentsoftware.addapptr.ad.d
    public View getBrandingLogo() {
        return null;
    }

    @Override // com.intentsoftware.addapptr.ad.d
    public boolean isExpired() {
        return false;
    }

    @Override // com.intentsoftware.addapptr.ad.d
    public boolean isReady() {
        return true;
    }

    @Override // com.intentsoftware.addapptr.c.d.a
    public void onImpressionDetected() {
        notifyListenerThatAdIsShown();
    }
}
