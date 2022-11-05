.class Lcom/amazon/device/ads/AdvertisingIdentifier$Info;
.super Ljava/lang/Object;
.source "AdvertisingIdentifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AdvertisingIdentifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Info"
.end annotation


# instance fields
.field private advertisingIdentifier:Ljava/lang/String;

.field private canDo:Z

.field private final debugProperties:Lcom/amazon/device/ads/DebugProperties;

.field private limitAdTrackingEnabled:Z

.field private sisDeviceIdentifier:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/amazon/device/ads/DebugProperties;)V
    .locals 1

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-object p1, p0, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->canDo:Z

    .line 227
    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/device/ads/DebugProperties;Lcom/amazon/device/ads/AdvertisingIdentifier$1;)V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;-><init>(Lcom/amazon/device/ads/DebugProperties;)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/device/ads/AdvertisingIdentifier$Info;Z)Lcom/amazon/device/ads/AdvertisingIdentifier$Info;
    .locals 1

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->setCanDo(Z)Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/device/ads/AdvertisingIdentifier$Info;Ljava/lang/String;)Lcom/amazon/device/ads/AdvertisingIdentifier$Info;
    .locals 1

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->setAdvertisingIdentifier(Ljava/lang/String;)Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/amazon/device/ads/AdvertisingIdentifier$Info;Z)Lcom/amazon/device/ads/AdvertisingIdentifier$Info;
    .locals 1

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->setLimitAdTrackingEnabled(Z)Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    move-result-object v0

    return-object v0
.end method

.method private setAdvertisingIdentifier(Ljava/lang/String;)Lcom/amazon/device/ads/AdvertisingIdentifier$Info;
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->advertisingIdentifier:Ljava/lang/String;

    .line 261
    return-object p0
.end method

.method private setCanDo(Z)Lcom/amazon/device/ads/AdvertisingIdentifier$Info;
    .locals 0

    .prologue
    .line 239
    iput-boolean p1, p0, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->canDo:Z

    .line 240
    return-object p0
.end method

.method private setLimitAdTrackingEnabled(Z)Lcom/amazon/device/ads/AdvertisingIdentifier$Info;
    .locals 0

    .prologue
    .line 289
    iput-boolean p1, p0, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->limitAdTrackingEnabled:Z

    .line 290
    return-object p0
.end method


# virtual methods
.method canDo()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->canDo:Z

    return v0
.end method

.method getAdvertisingIdentifier()Ljava/lang/String;
    .locals 3

    .prologue
    .line 249
    iget-object v0, p0, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    const-string v1, "debug.idfa"

    iget-object v2, p0, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->advertisingIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getSISDeviceIdentifier()Ljava/lang/String;
    .locals 3

    .prologue
    .line 299
    iget-object v0, p0, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    const-string v1, "debug.adid"

    iget-object v2, p0, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->sisDeviceIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method hasAdvertisingIdentifier()Z
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->getAdvertisingIdentifier()Ljava/lang/String;

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

.method hasSISDeviceIdentifier()Z
    .locals 1

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->getSISDeviceIdentifier()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isLimitAdTrackingEnabled()Z
    .locals 3

    .prologue
    .line 278
    iget-object v0, p0, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    const-string v1, "debug.optOut"

    iget-boolean v2, p0, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->limitAdTrackingEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method setSISDeviceIdentifier(Ljava/lang/String;)Lcom/amazon/device/ads/AdvertisingIdentifier$Info;
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->sisDeviceIdentifier:Ljava/lang/String;

    .line 315
    return-object p0
.end method
