.class public Lcom/mdotm/android/utils/MdotMJsonRequsetBuilder;
.super Ljava/lang/Object;
.source "MdotMJsonRequsetBuilder.java"


# instance fields
.field adID:Ljava/lang/String;

.field gpsLibExists:Z

.field private mContext:Landroid/content/Context;

.field private ua:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mdotm/android/utils/MdotMJsonRequsetBuilder;->adID:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/mdotm/android/utils/MdotMJsonRequsetBuilder;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/mdotm/android/utils/MdotMJsonRequsetBuilder;->ua:Ljava/lang/String;

    .line 29
    return-void
.end method

.method private getAte()Ljava/lang/String;
    .locals 3

    .prologue
    .line 130
    const/4 v0, 0x0

    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/mdotm/android/utils/MdotMJsonRequsetBuilder;->adID:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 135
    iget-boolean v1, p0, Lcom/mdotm/android/utils/MdotMJsonRequsetBuilder;->gpsLibExists:Z

    if-eqz v1, :cond_1

    .line 136
    invoke-static {}, Lcom/mdotm/android/utils/MdotMUtils;->getUtilsInstance()Lcom/mdotm/android/utils/MdotMUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/mdotm/android/utils/MdotMJsonRequsetBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/mdotm/android/utils/MdotMUtils;->getLAT(Landroid/content/Context;)Z

    move-result v1

    .line 142
    :goto_0
    const-string v2, "ataching ate"

    invoke-static {p0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    if-eqz v1, :cond_2

    .line 144
    const-string v0, "0"

    .line 153
    :cond_0
    :goto_1
    return-object v0

    .line 139
    :cond_1
    iget-object v1, p0, Lcom/mdotm/android/utils/MdotMJsonRequsetBuilder;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mdotm/android/utils/MdotMAdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/mdotm/android/utils/MdotMAdvertisingIdClient$AdInfo;

    move-result-object v1

    .line 140
    invoke-virtual {v1}, Lcom/mdotm/android/utils/MdotMAdvertisingIdClient$AdInfo;->isLimitAdTrackingEnabled()Z

    move-result v1

    goto :goto_0

    .line 146
    :cond_2
    const-string v0, "1"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 149
    :catch_0
    move-exception v1

    .line 150
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private getGAID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    :try_start_0
    invoke-static {}, Lcom/mdotm/android/utils/MdotMUtils;->getUtilsInstance()Lcom/mdotm/android/utils/MdotMUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/mdotm/android/utils/MdotMJsonRequsetBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mdotm/android/utils/MdotMUtils;->getAdId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mdotm/android/utils/MdotMJsonRequsetBuilder;->adID:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/mdotm/android/utils/MdotMJsonRequsetBuilder;->adID:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mdotm/android/utils/MdotMJsonRequsetBuilder;->gpsLibExists:Z

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ad id from gps sdk"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mdotm/android/utils/MdotMJsonRequsetBuilder;->adID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "idfa"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mdotm/android/utils/MdotMJsonRequsetBuilder;->adID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/mdotm/android/utils/MdotMJsonRequsetBuilder;->adID:Ljava/lang/String;

    return-object v0

    .line 114
    :cond_1
    :try_start_1
    const-string v0, "GPS SDK NOT PRESENT"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/mdotm/android/utils/MdotMJsonRequsetBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mdotm/android/utils/MdotMAdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/mdotm/android/utils/MdotMAdvertisingIdClient$AdInfo;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Lcom/mdotm/android/utils/MdotMAdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mdotm/android/utils/MdotMJsonRequsetBuilder;->adID:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isTablet(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    .line 159
    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 160
    const-string v0, "2"

    .line 165
    :goto_0
    return-object v0

    .line 163
    :cond_0
    const-string v0, "1"

    goto :goto_0
.end method


# virtual methods
.method public buildRequest(Lcom/mdotm/android/model/MdotMAdRequest;)Ljava/lang/StringBuffer;
    .locals 7

    .prologue
    .line 32
    invoke-virtual {p1}, Lcom/mdotm/android/model/MdotMAdRequest;->getAdSize()Ljava/lang/String;

    move-result-object v0

    .line 33
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 35
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 36
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 39
    :try_start_0
    const-string v3, "id"

    invoke-virtual {p1}, Lcom/mdotm/android/model/MdotMAdRequest;->getAppKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    const-string v3, "app"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 43
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 44
    const-string v4, "idfa"

    invoke-direct {p0}, Lcom/mdotm/android/utils/MdotMJsonRequsetBuilder;->getGAID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    const-string v4, "ext"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    const-string v3, "ua"

    iget-object v4, p0, Lcom/mdotm/android/utils/MdotMJsonRequsetBuilder;->ua:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    const-string v3, "language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    const-string v3, "make"

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    const-string v3, "model"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    const-string v3, "os"

    const-string v4, "Android"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    const-string v3, "osv"

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    const-string v3, "dnt"

    invoke-direct {p0}, Lcom/mdotm/android/utils/MdotMJsonRequsetBuilder;->getAte()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    iget-object v3, p0, Lcom/mdotm/android/utils/MdotMJsonRequsetBuilder;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mdotm/android/utils/MdotMJsonRequsetBuilder;->isTablet(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 62
    const-string v3, "devicetype"

    iget-object v4, p0, Lcom/mdotm/android/utils/MdotMJsonRequsetBuilder;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/mdotm/android/utils/MdotMJsonRequsetBuilder;->isTablet(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 63
    :cond_0
    const-string v3, "connectiontype"

    invoke-virtual {p0}, Lcom/mdotm/android/utils/MdotMJsonRequsetBuilder;->getConectionType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string v3, "device"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 68
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 71
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 73
    const-string v5, "w"

    const/4 v6, 0x0

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 74
    const-string v5, "h"

    const/4 v6, 0x1

    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 75
    invoke-static {}, Lcom/mdotm/android/view/MdotMInterstitial;->getRewarded()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1"

    .line 76
    :goto_0
    const-string v5, "rewarded"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    invoke-static {}, Lcom/mdotm/android/nativeads/MdotMNativeView;->getNativeAd()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "1"

    .line 79
    :goto_1
    const-string v5, "native"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mdotm/android/nativeads/MdotMNativeView;->setNativeAd(Z)V

    .line 82
    const-string v0, "test"

    invoke-virtual {p1}, Lcom/mdotm/android/model/MdotMAdRequest;->isTestMode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    const-string v0, "banner"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    const-string v0, "displaymanager"

    const-string v4, "mdotm"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    const-string v0, "displaymanagerver"

    const-string v4, "3.6.2"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    const-string v0, "instl"

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 88
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 89
    const-string v0, "imp"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 101
    return-object v0

    .line 75
    :cond_1
    :try_start_1
    const-string v0, "0"

    goto :goto_0

    .line 78
    :cond_2
    const-string v0, "0"
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 91
    :catch_0
    move-exception v0

    .line 97
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method public getConectionType()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 169
    .line 172
    iget-object v0, p0, Lcom/mdotm/android/utils/MdotMJsonRequsetBuilder;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 173
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 174
    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 188
    :goto_0
    return-object v0

    .line 179
    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 180
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    .line 181
    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 182
    const-string v0, "2"

    goto :goto_0

    .line 183
    :cond_2
    if-nez v0, :cond_3

    .line 184
    const/4 v0, 0x3

    if-ne v2, v0, :cond_3

    .line 185
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-nez v0, :cond_3

    .line 186
    const-string v0, "1"

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 188
    goto :goto_0
.end method
