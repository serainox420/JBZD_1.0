.class Lcom/millennialmedia/InterstitialAd$3;
.super Ljava/lang/Object;
.source "InterstitialAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/InterstitialAd;->a(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/AdPlacement$RequestState;

.field final synthetic b:Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;

.field final synthetic c:Lcom/millennialmedia/InterstitialAd;


# direct methods
.method constructor <init>(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)V
    .locals 0

    .prologue
    .line 425
    iput-object p1, p0, Lcom/millennialmedia/InterstitialAd$3;->c:Lcom/millennialmedia/InterstitialAd;

    iput-object p2, p0, Lcom/millennialmedia/InterstitialAd$3;->a:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    iput-object p3, p0, Lcom/millennialmedia/InterstitialAd$3;->b:Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 429
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    invoke-static {}, Lcom/millennialmedia/InterstitialAd;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ad adapter load timed out"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd$3;->a:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .line 434
    invoke-virtual {v0}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd$3;->b:Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/internal/AdPlacementReporter;->reportPlayListItem(Lcom/millennialmedia/internal/AdPlacementReporter;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;I)V

    .line 437
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd$3;->c:Lcom/millennialmedia/InterstitialAd;

    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd$3;->a:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-static {v0, v1}, Lcom/millennialmedia/InterstitialAd;->e(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    .line 438
    return-void
.end method
