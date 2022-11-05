package com.inmobi.monetization;

import android.view.ViewGroup;
import com.inmobi.commons.InMobi;
import com.inmobi.commons.internal.Log;
import com.inmobi.monetization.internal.AdErrorCode;
import com.inmobi.monetization.internal.Constants;
import com.inmobi.monetization.internal.IMAdListener;
import com.inmobi.monetization.internal.InvalidManifestErrorMessages;
import com.inmobi.monetization.internal.NativeAd;
import com.inmobi.monetization.internal.NativeAdObject;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class IMNative {

    /* renamed from: a  reason: collision with root package name */
    NativeAd f3839a;
    private String b;
    private String c;
    private String d;
    private IMNativeListener e;
    private String f;
    private IMAdListener g;

    protected IMNative(String str, String str2, String str3) {
        this.b = null;
        this.c = null;
        this.d = null;
        this.e = null;
        this.g = new IMAdListener() { // from class: com.inmobi.monetization.IMNative.1
            @Override // com.inmobi.monetization.internal.IMAdListener
            public void onAdRequestFailed(final AdErrorCode adErrorCode) {
                try {
                    IMNative.this.f3839a.getHandler().post(new Runnable() { // from class: com.inmobi.monetization.IMNative.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (IMNative.this.e != null) {
                                IMNative.this.e.onNativeRequestFailed(IMErrorCode.a(adErrorCode));
                            }
                        }
                    });
                } catch (Exception e) {
                    Log.debug(Constants.LOG_TAG, "Failed to give callback");
                }
            }

            @Override // com.inmobi.monetization.internal.IMAdListener
            public void onAdRequestSucceeded() {
                try {
                    NativeAdObject nativeAdObject = IMNative.this.f3839a.getNativeAdObject();
                    IMNative.this.b = nativeAdObject.getPubContent();
                    IMNative.this.c = nativeAdObject.getContextCode();
                    IMNative.this.d = nativeAdObject.getNameSpace();
                    IMNative.this.f3839a.getHandler().post(new Runnable() { // from class: com.inmobi.monetization.IMNative.1.2
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                if (IMNative.this.e != null) {
                                    IMNative.this.e.onNativeRequestSucceeded(IMNative.this);
                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                                Log.debug(Constants.LOG_TAG, "Failed to give callback");
                            }
                        }
                    });
                } catch (Exception e) {
                    Log.debug(Constants.LOG_TAG, "Failed to give callback");
                }
            }

            @Override // com.inmobi.monetization.internal.IMAdListener
            public void onShowAdScreen() {
            }

            @Override // com.inmobi.monetization.internal.IMAdListener
            public void onDismissAdScreen() {
            }

            @Override // com.inmobi.monetization.internal.IMAdListener
            public void onLeaveApplication() {
            }

            @Override // com.inmobi.monetization.internal.IMAdListener
            public void onAdInteraction(Map<String, String> map) {
            }

            @Override // com.inmobi.monetization.internal.IMAdListener
            public void onIncentCompleted(Map<Object, Object> map) {
            }
        };
        this.b = str;
        this.c = str2;
        this.d = str3;
    }

    public IMNative(String str, IMNativeListener iMNativeListener) {
        this.b = null;
        this.c = null;
        this.d = null;
        this.e = null;
        this.g = new IMAdListener() { // from class: com.inmobi.monetization.IMNative.1
            @Override // com.inmobi.monetization.internal.IMAdListener
            public void onAdRequestFailed(final AdErrorCode adErrorCode) {
                try {
                    IMNative.this.f3839a.getHandler().post(new Runnable() { // from class: com.inmobi.monetization.IMNative.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (IMNative.this.e != null) {
                                IMNative.this.e.onNativeRequestFailed(IMErrorCode.a(adErrorCode));
                            }
                        }
                    });
                } catch (Exception e) {
                    Log.debug(Constants.LOG_TAG, "Failed to give callback");
                }
            }

            @Override // com.inmobi.monetization.internal.IMAdListener
            public void onAdRequestSucceeded() {
                try {
                    NativeAdObject nativeAdObject = IMNative.this.f3839a.getNativeAdObject();
                    IMNative.this.b = nativeAdObject.getPubContent();
                    IMNative.this.c = nativeAdObject.getContextCode();
                    IMNative.this.d = nativeAdObject.getNameSpace();
                    IMNative.this.f3839a.getHandler().post(new Runnable() { // from class: com.inmobi.monetization.IMNative.1.2
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                if (IMNative.this.e != null) {
                                    IMNative.this.e.onNativeRequestSucceeded(IMNative.this);
                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                                Log.debug(Constants.LOG_TAG, "Failed to give callback");
                            }
                        }
                    });
                } catch (Exception e) {
                    Log.debug(Constants.LOG_TAG, "Failed to give callback");
                }
            }

            @Override // com.inmobi.monetization.internal.IMAdListener
            public void onShowAdScreen() {
            }

            @Override // com.inmobi.monetization.internal.IMAdListener
            public void onDismissAdScreen() {
            }

            @Override // com.inmobi.monetization.internal.IMAdListener
            public void onLeaveApplication() {
            }

            @Override // com.inmobi.monetization.internal.IMAdListener
            public void onAdInteraction(Map<String, String> map) {
            }

            @Override // com.inmobi.monetization.internal.IMAdListener
            public void onIncentCompleted(Map<Object, Object> map) {
            }
        };
        this.f = str;
        a(iMNativeListener);
    }

    public IMNative(IMNativeListener iMNativeListener) {
        this.b = null;
        this.c = null;
        this.d = null;
        this.e = null;
        this.g = new IMAdListener() { // from class: com.inmobi.monetization.IMNative.1
            @Override // com.inmobi.monetization.internal.IMAdListener
            public void onAdRequestFailed(final AdErrorCode adErrorCode) {
                try {
                    IMNative.this.f3839a.getHandler().post(new Runnable() { // from class: com.inmobi.monetization.IMNative.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (IMNative.this.e != null) {
                                IMNative.this.e.onNativeRequestFailed(IMErrorCode.a(adErrorCode));
                            }
                        }
                    });
                } catch (Exception e) {
                    Log.debug(Constants.LOG_TAG, "Failed to give callback");
                }
            }

            @Override // com.inmobi.monetization.internal.IMAdListener
            public void onAdRequestSucceeded() {
                try {
                    NativeAdObject nativeAdObject = IMNative.this.f3839a.getNativeAdObject();
                    IMNative.this.b = nativeAdObject.getPubContent();
                    IMNative.this.c = nativeAdObject.getContextCode();
                    IMNative.this.d = nativeAdObject.getNameSpace();
                    IMNative.this.f3839a.getHandler().post(new Runnable() { // from class: com.inmobi.monetization.IMNative.1.2
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                if (IMNative.this.e != null) {
                                    IMNative.this.e.onNativeRequestSucceeded(IMNative.this);
                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                                Log.debug(Constants.LOG_TAG, "Failed to give callback");
                            }
                        }
                    });
                } catch (Exception e) {
                    Log.debug(Constants.LOG_TAG, "Failed to give callback");
                }
            }

            @Override // com.inmobi.monetization.internal.IMAdListener
            public void onShowAdScreen() {
            }

            @Override // com.inmobi.monetization.internal.IMAdListener
            public void onDismissAdScreen() {
            }

            @Override // com.inmobi.monetization.internal.IMAdListener
            public void onLeaveApplication() {
            }

            @Override // com.inmobi.monetization.internal.IMAdListener
            public void onAdInteraction(Map<String, String> map) {
            }

            @Override // com.inmobi.monetization.internal.IMAdListener
            public void onIncentCompleted(Map<Object, Object> map) {
            }
        };
        this.f = InMobi.getAppId();
        a(iMNativeListener);
    }

    private void a(IMNativeListener iMNativeListener) {
        new NativeAdObject(null, null, null);
        this.e = iMNativeListener;
        this.f3839a = new NativeAd(this.f);
        this.f3839a.setAdListener(this.g);
    }

    public void attachToView(ViewGroup viewGroup) {
        if (this.f3839a != null) {
            this.f3839a.attachToView(viewGroup, this.c, this.d);
        }
    }

    public void detachFromView() {
        if (this.f3839a != null) {
            this.f3839a.detachFromView();
        }
    }

    public void handleClick(HashMap<String, String> hashMap) {
        if (this.f3839a != null) {
            this.f3839a.handleClick(hashMap);
        }
    }

    public String getContent() {
        return this.b;
    }

    public void loadAd() {
        if (this.f3839a != null) {
            this.f3839a.loadAd();
        }
    }

    public void setKeywords(String str) {
        if (str == null || "".equals(str.trim())) {
            Log.debug(Constants.LOG_TAG, "Keywords cannot be null or blank.");
        } else if (this.f3839a != null) {
            this.f3839a.setKeywords(str);
        }
    }

    public void setRequestParams(Map<String, String> map) {
        if (map == null || map.isEmpty()) {
            Log.debug(Constants.LOG_TAG, "Request params cannot be null or empty.");
        } else if (this.f3839a != null) {
            this.f3839a.setRequestParams(map);
        }
    }

    @Deprecated
    public void setRefTagParam(String str, String str2) {
        if (str == null || str2 == null) {
            Log.debug(Constants.LOG_TAG, InvalidManifestErrorMessages.MSG_NIL_KEY_VALUE);
        } else if (str.trim().equals("") || str2.trim().equals("")) {
            Log.debug(Constants.LOG_TAG, InvalidManifestErrorMessages.MSG_EMPTY_KEY_VALUE);
        } else {
            HashMap hashMap = new HashMap();
            hashMap.put(str, str2);
            if (this.f3839a != null) {
                this.f3839a.setRequestParams(hashMap);
            }
        }
    }
}
