package com.amazon.device.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class WebRequestUserId {
    private final AdvertisingIdParameter adIdParam;
    private final Settings settings;
    private UserIdParameter userIdParam;

    public WebRequestUserId() {
        this(Settings.getInstance(), new AdvertisingIdParameter());
    }

    WebRequestUserId(Settings settings, AdvertisingIdParameter advertisingIdParameter) {
        this.settings = settings;
        this.adIdParam = advertisingIdParameter;
    }

    private void setupUserIdParam() {
        if (this.userIdParam == null) {
            this.userIdParam = (UserIdParameter) this.settings.getObject(UserIdParameter.SETTINGS_KEY, this.adIdParam, UserIdParameter.class);
        }
    }

    public boolean populateWebRequestUserId(WebRequest webRequest) {
        setupUserIdParam();
        boolean evaluate = this.userIdParam.evaluate(webRequest);
        if (!evaluate && this.userIdParam != this.adIdParam) {
            return this.adIdParam.evaluate(webRequest);
        }
        return evaluate;
    }
}
