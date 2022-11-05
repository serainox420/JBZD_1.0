.class public Lcom/mdotm/android/utils/MdotMRequestBuilder;
.super Ljava/lang/Object;
.source "MdotMRequestBuilder.java"


# instance fields
.field final API_KEY:Ljava/lang/String;

.field final PARTNER_KEY:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "mdotm"

    iput-object v0, p0, Lcom/mdotm/android/utils/MdotMRequestBuilder;->PARTNER_KEY:Ljava/lang/String;

    .line 22
    const-string v0, "mdotmsdk3"

    iput-object v0, p0, Lcom/mdotm/android/utils/MdotMRequestBuilder;->API_KEY:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/mdotm/android/utils/MdotMRequestBuilder;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 140
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    .line 142
    const/4 v1, 0x3

    .line 140
    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public buildRequest(Lcom/mdotm/android/model/MdotMAdRequest;)Ljava/lang/StringBuffer;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 39
    invoke-virtual {p1}, Lcom/mdotm/android/model/MdotMAdRequest;->getAdSize()Ljava/lang/String;

    move-result-object v1

    .line 41
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v0, "https://secure.mdotm.com/ads/feed.php"

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 43
    const-string v0, "partnerkey=mdotm"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    const-string v0, "&"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    const-string v0, "apikey=mdotmsdk3"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    const-string v0, "&"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "appkey="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mdotm/android/model/MdotMAdRequest;->getAppKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    const-string v0, "&"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "ua="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/mdotm/android/utils/MdotMUtils;->getUtilsInstance()Lcom/mdotm/android/utils/MdotMUtils;

    move-result-object v3

    .line 57
    iget-object v4, p0, Lcom/mdotm/android/utils/MdotMRequestBuilder;->mContext:Landroid/content/Context;

    .line 56
    invoke-virtual {v3, v4}, Lcom/mdotm/android/utils/MdotMUtils;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 57
    const-string v4, "UTF-8"

    .line 56
    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    const-string v0, "&"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 64
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "width="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, v0, v5

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "The width is:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, v0, v5

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    const-string v1, "&"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "height="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, v0, v6

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "The height is:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, v0, v6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    const-string v0, "&"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    :cond_0
    const-string v0, "fmt=xhtml"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    const-string v0, "&"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    const-string v0, "v=3.6.2"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    const-string v0, "&"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    invoke-static {}, Lcom/mdotm/android/utils/MdotMUtils;->getUtilsInstance()Lcom/mdotm/android/utils/MdotMUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/mdotm/android/utils/MdotMRequestBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mdotm/android/utils/MdotMUtils;->getBandWidth(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bandwidth="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcom/mdotm/android/utils/MdotMUtils;->getUtilsInstance()Lcom/mdotm/android/utils/MdotMUtils;

    move-result-object v1

    iget-object v3, p0, Lcom/mdotm/android/utils/MdotMRequestBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/mdotm/android/utils/MdotMUtils;->getBandWidth(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The bandwidth is:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lcom/mdotm/android/utils/MdotMUtils;->getUtilsInstance()Lcom/mdotm/android/utils/MdotMUtils;

    move-result-object v1

    iget-object v3, p0, Lcom/mdotm/android/utils/MdotMRequestBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/mdotm/android/utils/MdotMUtils;->getBandWidth(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    const-string v0, "&"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    :cond_1
    const-string v0, "&"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "test="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mdotm/android/model/MdotMAdRequest;->isTestMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    invoke-virtual {p1}, Lcom/mdotm/android/model/MdotMAdRequest;->getAge()I

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    const-string v0, "&"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "age="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mdotm/android/model/MdotMAdRequest;->getAge()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "gender"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mdotm/android/model/MdotMAdRequest;->getGender()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1}, Lcom/mdotm/android/model/MdotMAdRequest;->getGender()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 94
    const-string v0, "&"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "gender="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mdotm/android/model/MdotMAdRequest;->getGender()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    :cond_3
    invoke-virtual {p1}, Lcom/mdotm/android/model/MdotMAdRequest;->getLatitude()D

    move-result-wide v0

    double-to-int v0, v0

    if-eqz v0, :cond_4

    .line 98
    const-string v0, "&"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "latitude="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mdotm/android/model/MdotMAdRequest;->getAge()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    :cond_4
    invoke-virtual {p1}, Lcom/mdotm/android/model/MdotMAdRequest;->getLongitude()D

    move-result-wide v0

    double-to-int v0, v0

    if-eqz v0, :cond_5

    .line 102
    const-string v0, "&"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "longitude="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mdotm/android/model/MdotMAdRequest;->getAge()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    :cond_5
    invoke-virtual {p1}, Lcom/mdotm/android/model/MdotMAdRequest;->getExt()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 107
    invoke-virtual {p1}, Lcom/mdotm/android/model/MdotMAdRequest;->getExt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x400

    if-ge v0, v1, :cond_6

    .line 108
    const-string v0, "&"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ext="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mdotm/android/model/MdotMAdRequest;->getExt()Ljava/lang/String;

    move-result-object v1

    const-string v3, "UTF-8"

    invoke-static {v1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 119
    :cond_6
    :goto_1
    const-string v0, "&"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    iget-object v0, p0, Lcom/mdotm/android/utils/MdotMRequestBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mdotm/android/utils/MdotMRequestBuilder;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 121
    const-string v0, "istablet=1"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    :goto_2
    const-string v0, "&"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    invoke-static {}, Lcom/mdotm/android/view/MdotMInterstitial;->getRewarded()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 130
    const-string v0, "isrewarded=1"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    :goto_3
    return-object v2

    .line 58
    :catch_0
    move-exception v0

    .line 60
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_0

    .line 111
    :catch_1
    move-exception v0

    .line 113
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 123
    :cond_7
    const-string v0, "istablet=0"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 132
    :cond_8
    const-string v0, "isrewarded=0"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3
.end method
