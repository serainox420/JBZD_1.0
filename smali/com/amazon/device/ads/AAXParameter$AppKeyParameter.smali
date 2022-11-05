.class Lcom/amazon/device/ads/AAXParameter$AppKeyParameter;
.super Lcom/amazon/device/ads/AAXParameter$StringParameter;
.source "AAXParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AAXParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppKeyParameter"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 357
    const-string v0, "appId"

    const-string v1, "debug.appid"

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/AAXParameter$StringParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    return-void
.end method


# virtual methods
.method protected bridge synthetic getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 353
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AAXParameter$AppKeyParameter;->getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getRegistrationInfo()Lcom/amazon/device/ads/RegistrationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/RegistrationInfo;->getAppKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
