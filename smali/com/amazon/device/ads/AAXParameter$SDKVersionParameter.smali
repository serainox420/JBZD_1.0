.class Lcom/amazon/device/ads/AAXParameter$SDKVersionParameter;
.super Lcom/amazon/device/ads/AAXParameter$StringParameter;
.source "AAXParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AAXParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SDKVersionParameter"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 412
    const-string v0, "adsdk"

    const-string v1, "debug.ver"

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/AAXParameter$StringParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    return-void
.end method


# virtual methods
.method protected bridge synthetic getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 408
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AAXParameter$SDKVersionParameter;->getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 418
    invoke-static {}, Lcom/amazon/device/ads/Version;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
