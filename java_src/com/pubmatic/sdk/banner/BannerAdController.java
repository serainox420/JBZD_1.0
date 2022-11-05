package com.pubmatic.sdk.banner;

import android.content.Context;
import android.util.AttributeSet;
import com.pubmatic.sdk.common.AdRequest;
import com.pubmatic.sdk.common.CommonConstants;
import com.pubmatic.sdk.common.RRFormatter;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes3.dex */
public class BannerAdController {
    protected CommonConstants.CHANNEL mChannel;
    protected Context mContext;
    protected AdRequest mAdRequest = null;
    protected RRFormatter mRRFormatter = null;

    public BannerAdController(CommonConstants.CHANNEL channel, Context context, AttributeSet attributeSet) {
        this.mContext = null;
        this.mChannel = channel;
        this.mContext = context;
        createDefaultAdRequest(attributeSet);
    }

    public AdRequest getAdRequest() {
        return this.mAdRequest;
    }

    private void createDefaultAdRequest(AttributeSet attributeSet) {
        try {
            switch (this.mChannel) {
                case MOCEAN:
                    Class<?> cls = Class.forName("com.pubmatic.sdk.banner.mocean.MoceanBannerAdRequest");
                    this.mAdRequest = (AdRequest) cls.getMethod("createMoceanBannerAdRequest", Context.class, String.class).invoke(null, this.mContext, null);
                    cls.getMethod("setAttributes", AttributeSet.class).invoke(this.mAdRequest, attributeSet);
                    break;
                case PUBMATIC:
                    Class<?> cls2 = Class.forName("com.pubmatic.sdk.banner.pubmatic.PubMaticBannerAdRequest");
                    this.mAdRequest = (AdRequest) cls2.getMethod("createPubMaticBannerAdRequest", Context.class, String.class, String.class, String.class).invoke(null, this.mContext, null, null, null);
                    cls2.getMethod("setAttributes", AttributeSet.class).invoke(this.mAdRequest, attributeSet);
                    break;
                case PHOENIX:
                    Class<?> cls3 = Class.forName("com.pubmatic.sdk.banner.phoenix.PhoenixBannerAdRequest");
                    this.mAdRequest = (AdRequest) cls3.getMethod("createPhoenixBannerAdRequest", Context.class, String.class, String.class).invoke(null, this.mContext, null, null);
                    cls3.getMethod("setAttributes", AttributeSet.class).invoke(this.mAdRequest, attributeSet);
                    break;
            }
            createRRFormatter();
        } catch (ClassCastException e) {
        } catch (ClassNotFoundException e2) {
            e2.printStackTrace();
        } catch (IllegalAccessException e3) {
            e3.printStackTrace();
        } catch (NoSuchMethodException e4) {
            e4.printStackTrace();
        } catch (InvocationTargetException e5) {
            e5.printStackTrace();
        }
    }

    public void setAdRequest(AdRequest adRequest) {
        if (adRequest == null) {
            throw new IllegalArgumentException("AdRequest object is null");
        }
        this.mAdRequest = adRequest;
        createRRFormatter();
    }

    private void createRRFormatter() {
        if (this.mAdRequest != null) {
            try {
                this.mRRFormatter = (RRFormatter) Class.forName(this.mAdRequest.getFormatter()).newInstance();
            } catch (ClassCastException e) {
            } catch (ClassNotFoundException e2) {
                e2.printStackTrace();
            } catch (IllegalAccessException e3) {
                e3.printStackTrace();
            } catch (InstantiationException e4) {
                e4.printStackTrace();
            }
        }
    }

    public RRFormatter getRRFormatter() {
        return this.mRRFormatter;
    }

    public boolean checkMandatoryParams() {
        if (this.mAdRequest == null) {
            return false;
        }
        return this.mAdRequest.checkMandatoryParams();
    }

    public void applyAttributeSet(AttributeSet attributeSet) {
    }
}
