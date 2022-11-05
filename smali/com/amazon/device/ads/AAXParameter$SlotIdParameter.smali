.class Lcom/amazon/device/ads/AAXParameter$SlotIdParameter;
.super Lcom/amazon/device/ads/AAXParameter$IntegerParameter;
.source "AAXParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AAXParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SlotIdParameter"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 550
    const-string v0, "slotId"

    const-string v1, "debug.slotId"

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/AAXParameter$IntegerParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    return-void
.end method


# virtual methods
.method protected getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 556
    invoke-static {p1}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->access$400(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Lcom/amazon/device/ads/AdRequest$LOISlot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdRequest$LOISlot;->getAdSlot()Lcom/amazon/device/ads/AdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdSlot;->getSlotNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 546
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AAXParameter$SlotIdParameter;->getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
