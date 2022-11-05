.class Lcom/amazon/device/ads/AAXParameter$MaxSizeParameter;
.super Lcom/amazon/device/ads/AAXParameter$StringParameter;
.source "AAXParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AAXParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MaxSizeParameter"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 537
    const-string v0, "mxsz"

    const-string v1, "debug.mxsz"

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/AAXParameter$StringParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    return-void
.end method


# virtual methods
.method protected bridge synthetic getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 533
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AAXParameter$MaxSizeParameter;->getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 543
    invoke-static {p1}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->access$400(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Lcom/amazon/device/ads/AdRequest$LOISlot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdRequest$LOISlot;->getAdSlot()Lcom/amazon/device/ads/AdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdSlot;->getMaxSize()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
