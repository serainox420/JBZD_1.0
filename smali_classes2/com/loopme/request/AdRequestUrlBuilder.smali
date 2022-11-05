.class public Lcom/loopme/request/AdRequestUrlBuilder;
.super Ljava/lang/Object;
.source "AdRequestUrlBuilder.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final PARAM_APPKEY:Ljava/lang/String; = "ak"

.field private static final PARAM_APP_VERSION:Ljava/lang/String; = "av"

.field private static final PARAM_BUNDLE_ID:Ljava/lang/String; = "bundleid"

.field private static final PARAM_CARRIER:Ljava/lang/String; = "carrier"

.field private static final PARAM_CHARGE_LEVEL:Ljava/lang/String; = "chl"

.field private static final PARAM_CONNECTION_TYPE:Ljava/lang/String; = "ct"

.field private static final PARAM_DNT:Ljava/lang/String; = "dnt"

.field private static final PARAM_GENDER:Ljava/lang/String; = "gender"

.field private static final PARAM_KEYWORDS:Ljava/lang/String; = "keywords"

.field private static final PARAM_LANGUAGE:Ljava/lang/String; = "lng"

.field private static final PARAM_LATITUDE:Ljava/lang/String; = "lat"

.field private static final PARAM_LONGITUDE:Ljava/lang/String; = "lon"

.field private static final PARAM_MRAID:Ljava/lang/String; = "mr"

.field private static final PARAM_ORIENTATION:Ljava/lang/String; = "or"

.field private static final PARAM_PLUGGED:Ljava/lang/String; = "plg"

.field private static final PARAM_SDK_VERSION:Ljava/lang/String; = "sv"

.field private static final PARAM_V360:Ljava/lang/String; = "v360"

.field private static final PARAM_VIEWER_TOKEN:Ljava/lang/String; = "vt"

.field private static final PARAM_WEBVIEW_VERSION:Ljava/lang/String; = "webview"

.field private static final PARAM_WIFI_NAME:Ljava/lang/String; = "wn"

.field private static final PARAM_YEAR_OF_BIRTH:Ljava/lang/String; = "yob"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/loopme/request/AdRequestUrlBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loopme/request/AdRequestUrlBuilder;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/loopme/request/AdRequestUrlBuilder;->mContext:Landroid/content/Context;

    .line 51
    if-nez p1, :cond_0

    .line 52
    sget-object v0, Lcom/loopme/request/AdRequestUrlBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Context should not be null. Can\'t build request url"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    return-void
.end method


# virtual methods
.method public buildRequestUrl(Ljava/lang/String;Lcom/loopme/request/AdTargetingData;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 58
    sget-object v0, Lcom/loopme/request/AdRequestUrlBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Start build request url"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/loopme/request/AdRequestUrlBuilder;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 61
    const/4 v0, 0x0

    .line 142
    :goto_0
    return-object v0

    .line 63
    :cond_0
    invoke-static {}, Lcom/loopme/request/AdRequestParametersProvider;->getInstance()Lcom/loopme/request/AdRequestParametersProvider;

    move-result-object v1

    .line 65
    sget-object v0, Lcom/loopme/common/StaticParams;->BASE_URL:Ljava/lang/String;

    .line 66
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 68
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    .line 69
    const-string v0, "https"

    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 71
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 72
    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-nez v5, :cond_1

    .line 73
    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 75
    :cond_1
    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 79
    :cond_2
    const-string v0, "ak"

    invoke-virtual {v3, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "ct"

    iget-object v4, p0, Lcom/loopme/request/AdRequestUrlBuilder;->mContext:Landroid/content/Context;

    .line 80
    invoke-virtual {v1, v4}, Lcom/loopme/request/AdRequestParametersProvider;->getConnectionType(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "lng"

    .line 81
    invoke-virtual {v1}, Lcom/loopme/request/AdRequestParametersProvider;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "sv"

    const-string v4, "5.1.1"

    .line 82
    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "v360"

    const-string v4, "1"

    .line 83
    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "av"

    iget-object v4, p0, Lcom/loopme/request/AdRequestUrlBuilder;->mContext:Landroid/content/Context;

    .line 84
    invoke-virtual {v1, v4}, Lcom/loopme/request/AdRequestParametersProvider;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "mr"

    .line 85
    invoke-virtual {v1}, Lcom/loopme/request/AdRequestParametersProvider;->getMraidSupport()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "or"

    iget-object v4, p0, Lcom/loopme/request/AdRequestUrlBuilder;->mContext:Landroid/content/Context;

    .line 86
    invoke-virtual {v1, v4}, Lcom/loopme/request/AdRequestParametersProvider;->getOrientation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "vt"

    .line 87
    invoke-virtual {v1}, Lcom/loopme/request/AdRequestParametersProvider;->getViewerToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "bundleid"

    iget-object v4, p0, Lcom/loopme/request/AdRequestUrlBuilder;->mContext:Landroid/content/Context;

    .line 88
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "webview"

    iget-object v4, p0, Lcom/loopme/request/AdRequestUrlBuilder;->mContext:Landroid/content/Context;

    .line 89
    invoke-virtual {v1, v4}, Lcom/loopme/request/AdRequestParametersProvider;->getWebViewVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 91
    invoke-virtual {v1}, Lcom/loopme/request/AdRequestParametersProvider;->getLatitude()Ljava/lang/String;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_3

    .line 93
    const-string v2, "lat"

    invoke-virtual {v3, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 96
    :cond_3
    invoke-virtual {v1}, Lcom/loopme/request/AdRequestParametersProvider;->getLongitude()Ljava/lang/String;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_4

    .line 98
    const-string v2, "lon"

    invoke-virtual {v3, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 101
    :cond_4
    iget-object v0, p0, Lcom/loopme/request/AdRequestUrlBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/loopme/request/AdRequestParametersProvider;->getCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_5

    .line 103
    const-string v2, "carrier"

    invoke-virtual {v3, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 106
    :cond_5
    invoke-virtual {v1}, Lcom/loopme/request/AdRequestParametersProvider;->isDntPresent()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "1"

    .line 107
    :goto_2
    const-string v2, "dnt"

    invoke-virtual {v3, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 109
    iget-object v0, p0, Lcom/loopme/request/AdRequestUrlBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/loopme/request/AdRequestParametersProvider;->isWifiInfoAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 110
    iget-object v0, p0, Lcom/loopme/request/AdRequestUrlBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/loopme/request/AdRequestParametersProvider;->getWifiName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 112
    const-string v2, "wn"

    invoke-virtual {v3, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 116
    :cond_6
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lcom/loopme/request/AdTargetingData;->getKeywords()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 117
    const-string v0, "keywords"

    invoke-virtual {p2}, Lcom/loopme/request/AdTargetingData;->getKeywords()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 120
    :cond_7
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/loopme/request/AdTargetingData;->getGender()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 121
    const-string v0, "gender"

    invoke-virtual {p2}, Lcom/loopme/request/AdTargetingData;->getGender()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 124
    :cond_8
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Lcom/loopme/request/AdTargetingData;->getYob()I

    move-result v0

    if-eqz v0, :cond_9

    .line 125
    const-string v0, "yob"

    invoke-virtual {p2}, Lcom/loopme/request/AdTargetingData;->getYob()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 128
    :cond_9
    if-eqz p2, :cond_b

    invoke-virtual {p2}, Lcom/loopme/request/AdTargetingData;->getCustomParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 129
    invoke-virtual {p2}, Lcom/loopme/request/AdTargetingData;->getCustomParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loopme/request/CustomRequestParameter;

    .line 130
    invoke-virtual {v0}, Lcom/loopme/request/CustomRequestParameter;->getParamName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/loopme/request/CustomRequestParameter;->getParamValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_3

    .line 106
    :cond_a
    const-string v0, "0"

    goto/16 :goto_2

    .line 134
    :cond_b
    iget-object v0, p0, Lcom/loopme/request/AdRequestUrlBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/loopme/request/AdRequestParametersProvider;->getBatteryInfo(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 135
    const-string v1, "chl"

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v3, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 136
    const-string v1, "plg"

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v3, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 138
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    sget-object v1, Lcom/loopme/request/AdRequestUrlBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Finish build request url"

    invoke-static {v1, v2}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
