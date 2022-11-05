package com.pubmatic.sdk.common;

import android.content.Context;
import android.location.Location;
import android.text.TextUtils;
import com.pubmatic.sdk.common.CommonConstants;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public abstract class AdRequest {
    protected static String mUDID;
    private boolean isAndroidAidEnabled;
    protected String mBaseUrl;
    protected CommonConstants.CHANNEL mChannel;
    protected Map<String, List<String>> mCustomParams;
    protected int mHeight;
    protected StringBuffer mPostData;
    protected String mUserAgent;
    protected int mWidth;
    protected Location mLocation = null;
    protected int mTimeout = 5;

    public abstract boolean checkMandatoryParams();

    public abstract void copyRequestParams(AdRequest adRequest);

    public abstract void createRequest(Context context);

    public abstract String getAdServerURL();

    public abstract String getFormatter();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void initializeDefaultParams(Context context);

    /* JADX INFO: Access modifiers changed from: protected */
    public void setupPostData() {
    }

    public void setCustomParams(Map<String, List<String>> map) {
        this.mCustomParams = map;
    }

    public void addCustomParam(String str, List<String> list) {
        if (this.mCustomParams == null) {
            this.mCustomParams = new HashMap();
        }
        if (this.mCustomParams.containsKey(str)) {
            this.mCustomParams.get(str).addAll(list);
        } else {
            this.mCustomParams.put(str, list);
        }
    }

    public void addCustomParam(String str, String str2) {
        if (this.mCustomParams == null) {
            this.mCustomParams = new HashMap();
        }
        if (this.mCustomParams.containsKey(str)) {
            this.mCustomParams.get(str).add(str2);
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(str2);
        this.mCustomParams.put(str, arrayList);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AdRequest(CommonConstants.CHANNEL channel, Context context) {
        this.mChannel = CommonConstants.CHANNEL.MOCEAN;
        this.mChannel = channel;
        retrieveAndroidAid(context);
    }

    public void setAndroidAidEnabled(boolean z) {
        this.isAndroidAidEnabled = z;
    }

    public boolean isAndoridAidEnabled() {
        return this.isAndroidAidEnabled;
    }

    public void retrieveAndroidAid(final Context context) {
        new Thread(new Runnable() { // from class: com.pubmatic.sdk.common.AdRequest.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    AdRequest.mUDID = AdvertisingIdClient.getAdvertisingIdInfo(context).getId();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }).start();
    }

    public int getWidth() {
        return this.mWidth;
    }

    public int getHeight() {
        return this.mHeight;
    }

    public void setHeight(int i) {
        this.mHeight = i;
    }

    public void setWidth(int i) {
        this.mWidth = i;
    }

    public String getUserAgent() {
        return this.mUserAgent;
    }

    public void setUserAgent(String str) {
        this.mUserAgent = str;
    }

    public void setAdServerURL(String str) {
        if (!TextUtils.isEmpty(str)) {
            if (str.startsWith("http://") || str.startsWith("https://")) {
                this.mBaseUrl = str;
            } else if (str.startsWith("//")) {
                this.mBaseUrl = "http:" + str;
            } else {
                this.mBaseUrl = "http://" + str;
            }
        }
    }

    public String getPostData() {
        if (this.mPostData != null) {
            return this.mPostData.toString();
        }
        return null;
    }

    public void putPostData(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            try {
                if (this.mPostData == null) {
                    this.mPostData = new StringBuffer();
                } else {
                    this.mPostData.append("&");
                }
                this.mPostData.append(URLEncoder.encode(str, "UTF-8"));
                this.mPostData.append("=");
                this.mPostData.append(URLEncoder.encode(str2, "UTF-8"));
            } catch (UnsupportedEncodingException e) {
            }
        }
    }

    public Map<String, List<String>> getCustomParams() {
        return this.mCustomParams;
    }

    public void setLocation(Location location) {
        this.mLocation = location;
    }

    public Location getLocation() {
        return this.mLocation;
    }

    public CommonConstants.CHANNEL getChannel() {
        return this.mChannel;
    }

    public void setChannel(CommonConstants.CHANNEL channel) {
        this.mChannel = channel;
    }
}
