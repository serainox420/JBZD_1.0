package com.intentsoftware.addapptr.ad;

import android.view.View;
import android.view.ViewGroup;
import com.intentsoftware.addapptr.AdNetwork;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public abstract class NativeAd extends com.intentsoftware.addapptr.ad.a implements d {
    public static final String ADVERTISER_TEXT_ASSET = "advertiser";
    public static final String CALL_TO_ACTION_TEXT_ASSET = "cta";
    public static final String DESCRIPTION_TEXT_ASSET = "description";
    public static final String ICON_IMAGE_ASSET = "icon";
    public static final String MAIN_IMAGE_ASSET = "main";
    public static final String TITLE_TEXT_ASSET = "headline";
    private final Map<String, String> assets = new HashMap();
    private a rating;

    /* loaded from: classes2.dex */
    public enum Type {
        APP_INSTALL,
        CONTENT,
        VIDEO,
        OTHER,
        UNKNOWN
    }

    @Override // com.intentsoftware.addapptr.ad.d
    public abstract void attachToLayout(ViewGroup viewGroup);

    @Override // com.intentsoftware.addapptr.ad.d
    public abstract View getBrandingLogo();

    /* loaded from: classes2.dex */
    public class a {
        private final double scale;
        private final double value;

        public a(double d, double d2) {
            this.value = d;
            this.scale = d2;
        }

        public double getValue() {
            return this.value;
        }

        public double getScale() {
            return this.scale;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setRating(a aVar) {
        this.rating = aVar;
    }

    @Override // com.intentsoftware.addapptr.ad.d
    public a getRating() {
        return this.rating;
    }

    @Override // com.intentsoftware.addapptr.ad.d
    public String getAsset(String str) {
        return this.assets.get(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setAsset(String str, String str2) {
        this.assets.put(str, str2);
    }

    @Override // com.intentsoftware.addapptr.ad.d
    public final AdNetwork getNetwork() {
        return getConfig().getNetwork();
    }

    @Override // com.intentsoftware.addapptr.ad.d
    public final void detachFromLayout() {
        unload();
    }

    @Override // com.intentsoftware.addapptr.ad.d
    public Type getAdType() {
        return Type.UNKNOWN;
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void unload() {
        setInteractionListener(null);
        setLoadListener(null);
    }

    public String toString() {
        return getClass().getSimpleName() + ";type:" + getAdType();
    }
}
