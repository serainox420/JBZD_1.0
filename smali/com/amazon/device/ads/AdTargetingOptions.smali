.class public Lcom/amazon/device/ads/AdTargetingOptions;
.super Ljava/lang/Object;
.source "AdTargetingOptions.java"


# static fields
.field private static final DEFAULT_DISPLAY_ENABLED:Z = true

.field private static final DEFAULT_FLOOR_PRICE:J

.field private static final DEFAULT_GEOTARGETING_ENABLED:Z

.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private final advanced:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private displayEnabled:Z

.field private enableGeoTargeting:Z

.field private floorPrice:J

.field private final internalPublisherKeywords:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private videoEnabled:Z

.field private final videoEnabledSettable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/amazon/device/ads/AdTargetingOptions;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/AdTargetingOptions;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lcom/amazon/device/ads/AndroidBuildInfo;

    invoke-direct {v0}, Lcom/amazon/device/ads/AndroidBuildInfo;-><init>()V

    new-instance v1, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/AdTargetingOptions;-><init>(Lcom/amazon/device/ads/AndroidBuildInfo;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    .line 43
    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/AndroidBuildInfo;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amazon/device/ads/AdTargetingOptions;->floorPrice:J

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/device/ads/AdTargetingOptions;->enableGeoTargeting:Z

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/device/ads/AdTargetingOptions;->displayEnabled:Z

    .line 46
    sget-object v0, Lcom/amazon/device/ads/AdTargetingOptions;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdTargetingOptions;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/AdTargetingOptions;->advanced:Ljava/util/Map;

    .line 48
    invoke-static {p1}, Lcom/amazon/device/ads/AdTargetingOptions;->isVideoEnabledSettable(Lcom/amazon/device/ads/AndroidBuildInfo;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/device/ads/AdTargetingOptions;->videoEnabledSettable:Z

    .line 50
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdTargetingOptions;->videoEnabledSettable:Z

    iput-boolean v0, p0, Lcom/amazon/device/ads/AdTargetingOptions;->videoEnabled:Z

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/AdTargetingOptions;->internalPublisherKeywords:Ljava/util/HashSet;

    .line 52
    return-void
.end method

.method private static isVideoEnabledSettable(Lcom/amazon/device/ads/AndroidBuildInfo;)Z
    .locals 1

    .prologue
    .line 77
    const/16 v0, 0xe

    invoke-static {p0, v0}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(Lcom/amazon/device/ads/AndroidBuildInfo;I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method addInternalPublisherKeyword(Ljava/lang/String;)Lcom/amazon/device/ads/AdTargetingOptions;
    .locals 1

    .prologue
    .line 160
    invoke-static {p1}, Lcom/amazon/device/ads/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/amazon/device/ads/AdTargetingOptions;->internalPublisherKeywords:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_0
    return-object p0
.end method

.method public containsAdvancedOption(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/amazon/device/ads/AdTargetingOptions;->advanced:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method copy()Lcom/amazon/device/ads/AdTargetingOptions;
    .locals 4

    .prologue
    .line 56
    new-instance v0, Lcom/amazon/device/ads/AdTargetingOptions;

    invoke-direct {v0}, Lcom/amazon/device/ads/AdTargetingOptions;-><init>()V

    iget-boolean v1, p0, Lcom/amazon/device/ads/AdTargetingOptions;->enableGeoTargeting:Z

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdTargetingOptions;->enableGeoLocation(Z)Lcom/amazon/device/ads/AdTargetingOptions;

    move-result-object v0

    iget-wide v2, p0, Lcom/amazon/device/ads/AdTargetingOptions;->floorPrice:J

    invoke-virtual {v0, v2, v3}, Lcom/amazon/device/ads/AdTargetingOptions;->setFloorPrice(J)Lcom/amazon/device/ads/AdTargetingOptions;

    move-result-object v0

    iget-boolean v1, p0, Lcom/amazon/device/ads/AdTargetingOptions;->displayEnabled:Z

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdTargetingOptions;->enableDisplayAds(Z)Lcom/amazon/device/ads/AdTargetingOptions;

    move-result-object v0

    .line 60
    iget-boolean v1, p0, Lcom/amazon/device/ads/AdTargetingOptions;->videoEnabledSettable:Z

    if-eqz v1, :cond_0

    .line 62
    iget-boolean v1, p0, Lcom/amazon/device/ads/AdTargetingOptions;->videoEnabled:Z

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdTargetingOptions;->enableVideoAds(Z)Lcom/amazon/device/ads/AdTargetingOptions;

    .line 64
    :cond_0
    iget-object v1, v0, Lcom/amazon/device/ads/AdTargetingOptions;->advanced:Ljava/util/Map;

    iget-object v2, p0, Lcom/amazon/device/ads/AdTargetingOptions;->advanced:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 65
    iget-object v1, v0, Lcom/amazon/device/ads/AdTargetingOptions;->internalPublisherKeywords:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/amazon/device/ads/AdTargetingOptions;->internalPublisherKeywords:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 66
    return-object v0
.end method

.method enableDisplayAds(Z)Lcom/amazon/device/ads/AdTargetingOptions;
    .locals 0

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/amazon/device/ads/AdTargetingOptions;->displayEnabled:Z

    .line 207
    return-object p0
.end method

.method public enableGeoLocation(Z)Lcom/amazon/device/ads/AdTargetingOptions;
    .locals 0

    .prologue
    .line 186
    iput-boolean p1, p0, Lcom/amazon/device/ads/AdTargetingOptions;->enableGeoTargeting:Z

    .line 187
    return-object p0
.end method

.method enableVideoAds(Z)Lcom/amazon/device/ads/AdTargetingOptions;
    .locals 2

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdTargetingOptions;->videoEnabledSettable:Z

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/amazon/device/ads/AdTargetingOptions;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Video is not allowed to be changed as this device does not support video."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;)V

    .line 234
    :goto_0
    return-object p0

    .line 232
    :cond_0
    iput-boolean p1, p0, Lcom/amazon/device/ads/AdTargetingOptions;->videoEnabled:Z

    goto :goto_0
.end method

.method public getAdvancedOption(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/amazon/device/ads/AdTargetingOptions;->advanced:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAge()I
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/amazon/device/ads/AdTargetingOptions;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "getAge API has been deprecated."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 267
    const/high16 v0, -0x80000000

    return v0
.end method

.method getCopyOfAdvancedOptions()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/amazon/device/ads/AdTargetingOptions;->advanced:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 72
    return-object v0
.end method

.method public getFloorPrice()J
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/amazon/device/ads/AdTargetingOptions;->floorPrice:J

    return-wide v0
.end method

.method getInternalPublisherKeywords()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lcom/amazon/device/ads/AdTargetingOptions;->internalPublisherKeywords:Ljava/util/HashSet;

    return-object v0
.end method

.method hasFloorPrice()Z
    .locals 4

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/amazon/device/ads/AdTargetingOptions;->floorPrice:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDisplayAdsEnabled()Z
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdTargetingOptions;->displayEnabled:Z

    return v0
.end method

.method public isGeoLocationEnabled()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdTargetingOptions;->enableGeoTargeting:Z

    return v0
.end method

.method isVideoAdsEnabled()Z
    .locals 1

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdTargetingOptions;->videoEnabled:Z

    return v0
.end method

.method isVideoEnabledSettable()Z
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdTargetingOptions;->videoEnabledSettable:Z

    return v0
.end method

.method public setAdvancedOption(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/device/ads/AdTargetingOptions;
    .locals 2

    .prologue
    .line 135
    invoke-static {p1}, Lcom/amazon/device/ads/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Option Key must not be null or empty string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_0
    if-eqz p2, :cond_1

    .line 141
    iget-object v0, p0, Lcom/amazon/device/ads/AdTargetingOptions;->advanced:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :goto_0
    return-object p0

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/amazon/device/ads/AdTargetingOptions;->advanced:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setAge(I)Lcom/amazon/device/ads/AdTargetingOptions;
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/amazon/device/ads/AdTargetingOptions;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "setAge API has been deprecated."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 257
    return-object p0
.end method

.method public setFloorPrice(J)Lcom/amazon/device/ads/AdTargetingOptions;
    .locals 1

    .prologue
    .line 90
    iput-wide p1, p0, Lcom/amazon/device/ads/AdTargetingOptions;->floorPrice:J

    .line 91
    return-object p0
.end method
