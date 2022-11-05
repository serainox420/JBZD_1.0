.class Lcom/amazon/device/ads/AAXParameter$GeoLocationParameter;
.super Lcom/amazon/device/ads/AAXParameter$StringParameter;
.source "AAXParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AAXParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GeoLocationParameter"
.end annotation


# instance fields
.field private final configuration:Lcom/amazon/device/ads/Configuration;

.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 427
    invoke-static {}, Lcom/amazon/device/ads/Configuration;->getInstance()Lcom/amazon/device/ads/Configuration;

    move-result-object v0

    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/AAXParameter$GeoLocationParameter;-><init>(Lcom/amazon/device/ads/Configuration;Landroid/content/Context;)V

    .line 428
    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/Configuration;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 431
    const-string v0, "geoloc"

    const-string v1, "debug.geoloc"

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/AAXParameter$StringParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iput-object p1, p0, Lcom/amazon/device/ads/AAXParameter$GeoLocationParameter;->configuration:Lcom/amazon/device/ads/Configuration;

    .line 433
    iput-object p2, p0, Lcom/amazon/device/ads/AAXParameter$GeoLocationParameter;->context:Landroid/content/Context;

    .line 434
    return-void
.end method


# virtual methods
.method protected bridge synthetic getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 421
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AAXParameter$GeoLocationParameter;->getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 439
    iget-object v1, p0, Lcom/amazon/device/ads/AAXParameter$GeoLocationParameter;->configuration:Lcom/amazon/device/ads/Configuration;

    sget-object v2, Lcom/amazon/device/ads/Configuration$ConfigOption;->SEND_GEO:Lcom/amazon/device/ads/Configuration$ConfigOption;

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/Configuration;->getBoolean(Lcom/amazon/device/ads/Configuration$ConfigOption;)Z

    move-result v1

    .line 440
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->getAdRequest()Lcom/amazon/device/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdRequest;->getAdTargetingOptions()Lcom/amazon/device/ads/AdTargetingOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdTargetingOptions;->isGeoLocationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 442
    new-instance v1, Lcom/amazon/device/ads/AdLocation;

    iget-object v2, p0, Lcom/amazon/device/ads/AAXParameter$GeoLocationParameter;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/amazon/device/ads/AdLocation;-><init>(Landroid/content/Context;)V

    .line 443
    invoke-virtual {v1}, Lcom/amazon/device/ads/AdLocation;->getLocation()Landroid/location/Location;

    move-result-object v1

    .line 444
    if-nez v1, :cond_1

    .line 446
    :cond_0
    :goto_0
    return-object v0

    .line 444
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
