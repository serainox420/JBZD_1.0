.class Lcom/intentsoftware/addapptr/v;
.super Ljava/lang/Object;
.source "PlacementStats.java"


# instance fields
.field private currentAdspacesCount:I

.field private final currentNetworksStatistics:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/intentsoftware/addapptr/b;",
            "Lcom/intentsoftware/addapptr/f;",
            ">;"
        }
    .end annotation
.end field

.field private totalAdspacesCount:I

.field private final totalNetworksStatistics:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/intentsoftware/addapptr/b;",
            "Lcom/intentsoftware/addapptr/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v0, p0, Lcom/intentsoftware/addapptr/v;->currentAdspacesCount:I

    .line 16
    iput v0, p0, Lcom/intentsoftware/addapptr/v;->totalAdspacesCount:I

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/v;->currentNetworksStatistics:Ljava/util/Map;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/v;->totalNetworksStatistics:Ljava/util/Map;

    .line 20
    return-void
.end method

.method private putStatsToNetwork(Ljava/util/Map;Lcom/intentsoftware/addapptr/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/intentsoftware/addapptr/b;",
            "Lcom/intentsoftware/addapptr/f;",
            ">;",
            "Lcom/intentsoftware/addapptr/b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/f;

    .line 29
    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/intentsoftware/addapptr/f;

    invoke-direct {v0, p2}, Lcom/intentsoftware/addapptr/f;-><init>(Lcom/intentsoftware/addapptr/b;)V

    .line 31
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_0
    return-void
.end method

.method private updateImpression(Ljava/util/Map;Lcom/intentsoftware/addapptr/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/intentsoftware/addapptr/b;",
            "Lcom/intentsoftware/addapptr/f;",
            ">;",
            "Lcom/intentsoftware/addapptr/b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/intentsoftware/addapptr/v;->putStatsToNetwork(Ljava/util/Map;Lcom/intentsoftware/addapptr/b;)V

    .line 37
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/f;

    iget v1, v0, Lcom/intentsoftware/addapptr/f;->numImpressions:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/intentsoftware/addapptr/f;->numImpressions:I

    .line 38
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/f;

    iget v1, v0, Lcom/intentsoftware/addapptr/f;->adPickerImpressions:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/intentsoftware/addapptr/f;->adPickerImpressions:I

    .line 39
    return-void
.end method

.method private updateNumClicks(Ljava/util/Map;Lcom/intentsoftware/addapptr/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/intentsoftware/addapptr/b;",
            "Lcom/intentsoftware/addapptr/f;",
            ">;",
            "Lcom/intentsoftware/addapptr/b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/intentsoftware/addapptr/v;->putStatsToNetwork(Ljava/util/Map;Lcom/intentsoftware/addapptr/b;)V

    .line 73
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/f;

    iget v1, v0, Lcom/intentsoftware/addapptr/f;->numClicks:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/intentsoftware/addapptr/f;->numClicks:I

    .line 74
    return-void
.end method

.method private updateRequest(Ljava/util/Map;Lcom/intentsoftware/addapptr/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/intentsoftware/addapptr/b;",
            "Lcom/intentsoftware/addapptr/f;",
            ">;",
            "Lcom/intentsoftware/addapptr/b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/intentsoftware/addapptr/v;->putStatsToNetwork(Ljava/util/Map;Lcom/intentsoftware/addapptr/b;)V

    .line 53
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/f;

    iget v1, v0, Lcom/intentsoftware/addapptr/f;->numRequests:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/intentsoftware/addapptr/f;->numRequests:I

    .line 54
    return-void
.end method

.method private updateResponse(Ljava/util/Map;Lcom/intentsoftware/addapptr/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/intentsoftware/addapptr/b;",
            "Lcom/intentsoftware/addapptr/f;",
            ">;",
            "Lcom/intentsoftware/addapptr/b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/intentsoftware/addapptr/v;->putStatsToNetwork(Ljava/util/Map;Lcom/intentsoftware/addapptr/b;)V

    .line 63
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/f;

    iget v1, v0, Lcom/intentsoftware/addapptr/f;->numResponses:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/intentsoftware/addapptr/f;->numResponses:I

    .line 64
    return-void
.end method


# virtual methods
.method afterBannerClick(Lcom/intentsoftware/addapptr/b;)V
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/intentsoftware/addapptr/v;->totalNetworksStatistics:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/f;

    iget v1, p0, Lcom/intentsoftware/addapptr/v;->totalAdspacesCount:I

    invoke-virtual {p1}, Lcom/intentsoftware/addapptr/b;->getPercentage()I

    move-result v2

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    add-int/lit8 v1, v1, 0xa

    iput v1, v0, Lcom/intentsoftware/addapptr/f;->adPickerImpressions:I

    .line 49
    return-void
.end method

.method clearCurrentStatistics()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/intentsoftware/addapptr/v;->currentNetworksStatistics:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/f;

    .line 83
    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/f;->clear()V

    goto :goto_0

    .line 85
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/intentsoftware/addapptr/v;->currentAdspacesCount:I

    .line 86
    return-void
.end method

.method getCurrentAdspacesCount()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/intentsoftware/addapptr/v;->currentAdspacesCount:I

    return v0
.end method

.method getCurrentImpressionsCount()I
    .locals 3

    .prologue
    .line 116
    const/4 v0, 0x0

    .line 118
    iget-object v1, p0, Lcom/intentsoftware/addapptr/v;->currentNetworksStatistics:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/f;

    .line 119
    iget v0, v0, Lcom/intentsoftware/addapptr/f;->numImpressions:I

    add-int/2addr v0, v1

    move v1, v0

    .line 120
    goto :goto_0

    .line 121
    :cond_0
    return v1
.end method

.method getCurrentNetworksStatistics()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/intentsoftware/addapptr/b;",
            "Lcom/intentsoftware/addapptr/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/intentsoftware/addapptr/v;->currentNetworksStatistics:Ljava/util/Map;

    return-object v0
.end method

.method getImpressionsCountForAdpicker(Lcom/intentsoftware/addapptr/b;)I
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/intentsoftware/addapptr/v;->totalNetworksStatistics:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/intentsoftware/addapptr/v;->totalNetworksStatistics:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/f;

    iget v0, v0, Lcom/intentsoftware/addapptr/f;->adPickerImpressions:I

    .line 128
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getTotalAdspacesCount()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/intentsoftware/addapptr/v;->totalAdspacesCount:I

    return v0
.end method

.method getTotalImpressionsCount()I
    .locals 3

    .prologue
    .line 106
    const/4 v0, 0x0

    .line 108
    iget-object v1, p0, Lcom/intentsoftware/addapptr/v;->totalNetworksStatistics:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/f;

    .line 109
    iget v0, v0, Lcom/intentsoftware/addapptr/f;->numImpressions:I

    add-int/2addr v0, v1

    move v1, v0

    .line 110
    goto :goto_0

    .line 111
    :cond_0
    return v1
.end method

.method getTotalNetworksStatistics()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/intentsoftware/addapptr/b;",
            "Lcom/intentsoftware/addapptr/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/intentsoftware/addapptr/v;->totalNetworksStatistics:Ljava/util/Map;

    return-object v0
.end method

.method makeAdspacesCountEqualImpressions()V
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/v;->getCurrentImpressionsCount()I

    move-result v0

    iput v0, p0, Lcom/intentsoftware/addapptr/v;->currentAdspacesCount:I

    .line 134
    return-void
.end method

.method reportAdspace()V
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/intentsoftware/addapptr/v;->currentAdspacesCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/intentsoftware/addapptr/v;->currentAdspacesCount:I

    .line 24
    iget v0, p0, Lcom/intentsoftware/addapptr/v;->totalAdspacesCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/intentsoftware/addapptr/v;->totalAdspacesCount:I

    .line 25
    return-void
.end method

.method reportClick(Lcom/intentsoftware/addapptr/b;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/intentsoftware/addapptr/v;->currentNetworksStatistics:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lcom/intentsoftware/addapptr/v;->updateNumClicks(Ljava/util/Map;Lcom/intentsoftware/addapptr/b;)V

    .line 78
    iget-object v0, p0, Lcom/intentsoftware/addapptr/v;->totalNetworksStatistics:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lcom/intentsoftware/addapptr/v;->updateNumClicks(Ljava/util/Map;Lcom/intentsoftware/addapptr/b;)V

    .line 79
    return-void
.end method

.method reportImpression(Lcom/intentsoftware/addapptr/b;)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/intentsoftware/addapptr/v;->currentNetworksStatistics:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lcom/intentsoftware/addapptr/v;->updateImpression(Ljava/util/Map;Lcom/intentsoftware/addapptr/b;)V

    .line 43
    iget-object v0, p0, Lcom/intentsoftware/addapptr/v;->totalNetworksStatistics:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lcom/intentsoftware/addapptr/v;->updateImpression(Ljava/util/Map;Lcom/intentsoftware/addapptr/b;)V

    .line 44
    return-void
.end method

.method reportRequest(Lcom/intentsoftware/addapptr/b;)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/intentsoftware/addapptr/v;->currentNetworksStatistics:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lcom/intentsoftware/addapptr/v;->updateRequest(Ljava/util/Map;Lcom/intentsoftware/addapptr/b;)V

    .line 58
    iget-object v0, p0, Lcom/intentsoftware/addapptr/v;->totalNetworksStatistics:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lcom/intentsoftware/addapptr/v;->updateRequest(Ljava/util/Map;Lcom/intentsoftware/addapptr/b;)V

    .line 59
    return-void
.end method

.method reportResponse(Lcom/intentsoftware/addapptr/b;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/intentsoftware/addapptr/v;->currentNetworksStatistics:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lcom/intentsoftware/addapptr/v;->updateResponse(Ljava/util/Map;Lcom/intentsoftware/addapptr/b;)V

    .line 68
    iget-object v0, p0, Lcom/intentsoftware/addapptr/v;->totalNetworksStatistics:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lcom/intentsoftware/addapptr/v;->updateResponse(Ljava/util/Map;Lcom/intentsoftware/addapptr/b;)V

    .line 69
    return-void
.end method
