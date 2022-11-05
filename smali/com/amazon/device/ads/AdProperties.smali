.class public Lcom/amazon/device/ads/AdProperties;
.super Ljava/lang/Object;
.source "AdProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/AdProperties$AdType;
    }
.end annotation


# static fields
.field public static final CAN_EXPAND1:I = 0x3eb

.field public static final CAN_EXPAND2:I = 0x3ec

.field public static final CAN_PLAY_AUDIO1:I = 0x3e9

.field public static final CAN_PLAY_AUDIO2:I = 0x3ea

.field public static final CAN_PLAY_VIDEO:I = 0x3f6

.field public static final HTML:I = 0x3ef

.field public static final INTERSTITIAL:I = 0x3f0

.field private static final LOGTAG:Ljava/lang/String;

.field public static final MRAID1:I = 0x3f8

.field public static final MRAID2:I = 0x3f9

.field public static final REQUIRES_TRANSPARENCY:I = 0x407

.field public static final VIDEO_INTERSTITIAL:I = 0x406


# instance fields
.field private adType_:Lcom/amazon/device/ads/AdProperties$AdType;

.field private canExpand_:Z

.field private canPlayAudio_:Z

.field private canPlayVideo_:Z

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const-class v0, Lcom/amazon/device/ads/AdProperties;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/AdProperties;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lorg/json/JSONArray;)V
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/AdProperties;-><init>(Lorg/json/JSONArray;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    .line 100
    return-void
.end method

.method constructor <init>(Lorg/json/JSONArray;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdProperties;->canExpand_:Z

    .line 86
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdProperties;->canPlayAudio_:Z

    .line 87
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdProperties;->canPlayVideo_:Z

    .line 103
    sget-object v0, Lcom/amazon/device/ads/AdProperties;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdProperties;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 104
    if-eqz p1, :cond_0

    move v0, v1

    .line 106
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 109
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 106
    :goto_1
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :pswitch_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/amazon/device/ads/AdProperties;->canPlayAudio_:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 135
    :catch_0
    move-exception v2

    .line 136
    iget-object v3, p0, Lcom/amazon/device/ads/AdProperties;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v4, "Unable to parse creative type: %s"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-virtual {v3, v4, v5}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 117
    :pswitch_2
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/amazon/device/ads/AdProperties;->canExpand_:Z

    goto :goto_1

    .line 120
    :pswitch_3
    sget-object v2, Lcom/amazon/device/ads/AdProperties$AdType;->IMAGE_BANNER:Lcom/amazon/device/ads/AdProperties$AdType;

    iput-object v2, p0, Lcom/amazon/device/ads/AdProperties;->adType_:Lcom/amazon/device/ads/AdProperties$AdType;

    goto :goto_1

    .line 123
    :pswitch_4
    sget-object v2, Lcom/amazon/device/ads/AdProperties$AdType;->INTERSTITIAL:Lcom/amazon/device/ads/AdProperties$AdType;

    iput-object v2, p0, Lcom/amazon/device/ads/AdProperties;->adType_:Lcom/amazon/device/ads/AdProperties$AdType;

    goto :goto_1

    .line 126
    :pswitch_5
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/amazon/device/ads/AdProperties;->canPlayVideo_:Z

    goto :goto_1

    .line 129
    :pswitch_6
    sget-object v2, Lcom/amazon/device/ads/AdProperties$AdType;->MRAID_1:Lcom/amazon/device/ads/AdProperties$AdType;

    iput-object v2, p0, Lcom/amazon/device/ads/AdProperties;->adType_:Lcom/amazon/device/ads/AdProperties$AdType;

    goto :goto_1

    .line 132
    :pswitch_7
    sget-object v2, Lcom/amazon/device/ads/AdProperties$AdType;->MRAID_2:Lcom/amazon/device/ads/AdProperties$AdType;

    iput-object v2, p0, Lcom/amazon/device/ads/AdProperties;->adType_:Lcom/amazon/device/ads/AdProperties$AdType;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 140
    :cond_0
    return-void

    .line 109
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public canExpand()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdProperties;->canExpand_:Z

    return v0
.end method

.method public canPlayAudio()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdProperties;->canPlayAudio_:Z

    return v0
.end method

.method public canPlayVideo()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdProperties;->canPlayVideo_:Z

    return v0
.end method

.method public getAdType()Lcom/amazon/device/ads/AdProperties$AdType;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/amazon/device/ads/AdProperties;->adType_:Lcom/amazon/device/ads/AdProperties$AdType;

    return-object v0
.end method

.method setAdType(Lcom/amazon/device/ads/AdProperties$AdType;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/amazon/device/ads/AdProperties;->adType_:Lcom/amazon/device/ads/AdProperties$AdType;

    .line 145
    return-void
.end method

.method setCanExpand(Z)V
    .locals 0

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/amazon/device/ads/AdProperties;->canExpand_:Z

    .line 158
    return-void
.end method

.method setCanPlayAudio(Z)V
    .locals 0

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/amazon/device/ads/AdProperties;->canPlayAudio_:Z

    .line 171
    return-void
.end method

.method setCanPlayVideo(Z)V
    .locals 0

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/amazon/device/ads/AdProperties;->canPlayVideo_:Z

    .line 184
    return-void
.end method
