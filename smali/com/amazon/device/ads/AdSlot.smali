.class Lcom/amazon/device/ads/AdSlot;
.super Ljava/lang/Object;
.source "AdSlot.java"


# instance fields
.field private final KEY_SLOT_ID:Ljava/lang/String;

.field private final adController:Lcom/amazon/device/ads/AdController;

.field private adError:Lcom/amazon/device/ads/AdError;

.field private final adOptions:Lcom/amazon/device/ads/AdTargetingOptions;

.field private deferredLoad:Z

.field private final slotID:Ljava/lang/String;

.field private slotNumber:I


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AdController;Lcom/amazon/device/ads/AdTargetingOptions;)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/device/ads/AdSlot;->deferredLoad:Z

    .line 20
    const-string v0, "slotId"

    iput-object v0, p0, Lcom/amazon/device/ads/AdSlot;->KEY_SLOT_ID:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/amazon/device/ads/AdSlot;->adController:Lcom/amazon/device/ads/AdController;

    .line 30
    if-nez p2, :cond_0

    .line 32
    new-instance v0, Lcom/amazon/device/ads/AdTargetingOptions;

    invoke-direct {v0}, Lcom/amazon/device/ads/AdTargetingOptions;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/AdSlot;->adOptions:Lcom/amazon/device/ads/AdTargetingOptions;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/device/ads/AdSlot;->slotID:Ljava/lang/String;

    .line 40
    :goto_0
    return-void

    .line 37
    :cond_0
    iput-object p2, p0, Lcom/amazon/device/ads/AdSlot;->adOptions:Lcom/amazon/device/ads/AdTargetingOptions;

    .line 38
    iget-object v0, p0, Lcom/amazon/device/ads/AdSlot;->adOptions:Lcom/amazon/device/ads/AdTargetingOptions;

    const-string v1, "slotId"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdTargetingOptions;->getAdvancedOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdSlot;->slotID:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method adFailed(Lcom/amazon/device/ads/AdError;)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/amazon/device/ads/AdSlot;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdController;->adFailed(Lcom/amazon/device/ads/AdError;)V

    .line 109
    return-void
.end method

.method canBeUsed()Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/amazon/device/ads/AdSlot;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->canBeUsed()Z

    move-result v0

    return v0
.end method

.method getAdError()Lcom/amazon/device/ads/AdError;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/amazon/device/ads/AdSlot;->adError:Lcom/amazon/device/ads/AdError;

    return-object v0
.end method

.method public getAdTargetingOptions()Lcom/amazon/device/ads/AdTargetingOptions;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/amazon/device/ads/AdSlot;->adOptions:Lcom/amazon/device/ads/AdTargetingOptions;

    return-object v0
.end method

.method getMaxSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/amazon/device/ads/AdSlot;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getMaxSize()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/amazon/device/ads/AdSlot;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v0

    return-object v0
.end method

.method public getRequestedAdSize()Lcom/amazon/device/ads/AdSize;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/amazon/device/ads/AdSlot;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAdSize()Lcom/amazon/device/ads/AdSize;

    move-result-object v0

    return-object v0
.end method

.method getSlotNumber()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/amazon/device/ads/AdSlot;->slotNumber:I

    return v0
.end method

.method initializeAd()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/amazon/device/ads/AdSlot;->adController:Lcom/amazon/device/ads/AdController;

    iget-object v1, p0, Lcom/amazon/device/ads/AdSlot;->slotID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdController;->initialize(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method isFetched()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/amazon/device/ads/AdSlot;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAdData()Lcom/amazon/device/ads/AdData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/device/ads/AdSlot;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAdData()Lcom/amazon/device/ads/AdData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdData;->getIsFetched()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isValid()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/amazon/device/ads/AdSlot;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->isValid()Z

    move-result v0

    return v0
.end method

.method prepareForAdLoad(J)Z
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/amazon/device/ads/AdSlot;->adController:Lcom/amazon/device/ads/AdController;

    iget-boolean v1, p0, Lcom/amazon/device/ads/AdSlot;->deferredLoad:Z

    invoke-virtual {v0, p1, p2, v1}, Lcom/amazon/device/ads/AdController;->prepareForAdLoad(JZ)Z

    move-result v0

    return v0
.end method

.method setAdData(Lcom/amazon/device/ads/AdData;)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/amazon/device/ads/AdSlot;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdController;->setAdData(Lcom/amazon/device/ads/AdData;)V

    .line 99
    return-void
.end method

.method setAdError(Lcom/amazon/device/ads/AdError;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/amazon/device/ads/AdSlot;->adError:Lcom/amazon/device/ads/AdError;

    .line 79
    return-void
.end method

.method setConnectionInfo(Lcom/amazon/device/ads/ConnectionInfo;)V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/amazon/device/ads/AdSlot;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdController;->setConnectionInfo(Lcom/amazon/device/ads/ConnectionInfo;)V

    .line 129
    return-void
.end method

.method public setDeferredLoad(Z)Lcom/amazon/device/ads/AdSlot;
    .locals 0

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/amazon/device/ads/AdSlot;->deferredLoad:Z

    .line 50
    return-object p0
.end method

.method setSlotNumber(I)V
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lcom/amazon/device/ads/AdSlot;->slotNumber:I

    .line 69
    return-void
.end method
