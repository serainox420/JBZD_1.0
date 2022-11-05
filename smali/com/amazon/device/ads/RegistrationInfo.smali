.class Lcom/amazon/device/ads/RegistrationInfo;
.super Ljava/lang/Object;
.source "RegistrationInfo.java"


# static fields
.field private static final ADID_ORIGIN_PREF_NAME:Ljava/lang/String; = "amzn-ad-id-origin"

.field private static final ADID_PREF_NAME:Ljava/lang/String; = "amzn-ad-id"

.field private static final NEW_SIS_DID_REQUESTED_SETTING:Ljava/lang/String; = "newSISDIDRequested"

.field private static final NON_ADVERTISING_IDENTIFIER_ORIGIN:Ljava/lang/String; = "non-advertising-identifier"

.field private static final THIRD_PARTY_APP_NAME:Ljava/lang/String; = "app"


# instance fields
.field private appKey:Ljava/lang/String;

.field private appName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "app"

    iput-object v0, p0, Lcom/amazon/device/ads/RegistrationInfo;->appName:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static isAdIdOriginatedFromNonAdvertisingIdentifier()Z
    .locals 3

    .prologue
    .line 91
    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v0

    const-string v1, "amzn-ad-id-origin"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_0

    const-string v1, "non-advertising-identifier"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static setOrigin(Lcom/amazon/device/ads/AdvertisingIdentifier$Info;)V
    .locals 3

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->hasAdvertisingIdentifier()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v0

    const-string v1, "amzn-ad-id-origin"

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->getAdvertisingIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/Settings;->putStringWithNoFlush(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v0

    const-string v1, "amzn-ad-id-origin"

    const-string v2, "non-advertising-identifier"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/Settings;->putStringWithNoFlush(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getAdId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 36
    invoke-static {}, Lcom/amazon/device/ads/DebugProperties;->getInstance()Lcom/amazon/device/ads/DebugProperties;

    move-result-object v0

    const-string v1, "debug.adid"

    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v2

    const-string v3, "amzn-ad-id"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/amazon/device/ads/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 97
    invoke-static {}, Lcom/amazon/device/ads/DebugProperties;->getInstance()Lcom/amazon/device/ads/DebugProperties;

    move-result-object v0

    const-string v1, "debug.appid"

    iget-object v2, p0, Lcom/amazon/device/ads/RegistrationInfo;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/amazon/device/ads/RegistrationInfo;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public hasAdId()Z
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/amazon/device/ads/RegistrationInfo;->getAdId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/device/ads/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAdIdCurrent(Lcom/amazon/device/ads/AdvertisingIdentifier$Info;)Z
    .locals 3

    .prologue
    .line 48
    invoke-static {}, Lcom/amazon/device/ads/RegistrationInfo;->isAdIdOriginatedFromNonAdvertisingIdentifier()Z

    move-result v0

    .line 49
    invoke-virtual {p1}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->hasAdvertisingIdentifier()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    if-eqz v0, :cond_1

    .line 53
    const/4 v0, 0x0

    .line 63
    :cond_0
    :goto_0
    return v0

    .line 57
    :cond_1
    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v0

    const-string v1, "amzn-ad-id-origin"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-virtual {p1}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->getAdvertisingIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isRegisteredWithSIS()Z
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/amazon/device/ads/RegistrationInfo;->hasAdId()Z

    move-result v0

    return v0
.end method

.method public putAdId(Ljava/lang/String;Lcom/amazon/device/ads/AdvertisingIdentifier$Info;)V
    .locals 3

    .prologue
    .line 72
    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v0

    .line 73
    const-string v1, "amzn-ad-id"

    invoke-virtual {v0, v1, p1}, Lcom/amazon/device/ads/Settings;->putStringWithNoFlush(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-static {p2}, Lcom/amazon/device/ads/RegistrationInfo;->setOrigin(Lcom/amazon/device/ads/AdvertisingIdentifier$Info;)V

    .line 75
    const-string v1, "newSISDIDRequested"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/Settings;->putBooleanWithNoFlush(Ljava/lang/String;Z)V

    .line 76
    invoke-virtual {v0}, Lcom/amazon/device/ads/Settings;->flush()V

    .line 77
    return-void
.end method

.method public putAppKey(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 101
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Application Key must not be null or empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_1
    invoke-static {p1}, Lcom/amazon/device/ads/WebUtils;->getURLEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/RegistrationInfo;->appKey:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public putAppName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 31
    invoke-static {p1}, Lcom/amazon/device/ads/WebUtils;->getURLEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/RegistrationInfo;->appName:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public requestNewSISDeviceIdentifier()V
    .locals 3

    .prologue
    .line 111
    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v0

    const-string v1, "newSISDIDRequested"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/Settings;->putBoolean(Ljava/lang/String;Z)V

    .line 112
    return-void
.end method

.method public shouldGetNewSISDeviceIdentifer()Z
    .locals 3

    .prologue
    .line 115
    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v0

    const-string v1, "newSISDIDRequested"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public shouldGetNewSISRegistration()Z
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/amazon/device/ads/RegistrationInfo;->isRegisteredWithSIS()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
