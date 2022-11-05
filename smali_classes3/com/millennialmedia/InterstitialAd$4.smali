.class Lcom/millennialmedia/InterstitialAd$4;
.super Ljava/lang/Object;
.source "InterstitialAd.java"

# interfaces
.implements Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;


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
    .line 443
    iput-object p1, p0, Lcom/millennialmedia/InterstitialAd$4;->c:Lcom/millennialmedia/InterstitialAd;

    iput-object p2, p0, Lcom/millennialmedia/InterstitialAd$4;->a:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    iput-object p3, p0, Lcom/millennialmedia/InterstitialAd$4;->b:Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initFailed()V
    .locals 3

    .prologue
    .line 458
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd$4;->a:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .line 459
    invoke-virtual {v0}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd$4;->b:Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;

    const/4 v2, -0x3

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/internal/AdPlacementReporter;->reportPlayListItem(Lcom/millennialmedia/internal/AdPlacementReporter;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;I)V

    .line 462
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd$4;->c:Lcom/millennialmedia/InterstitialAd;

    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd$4;->a:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-static {v0, v1}, Lcom/millennialmedia/InterstitialAd;->e(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    .line 463
    return-void
.end method

.method public initSucceeded()V
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd$4;->a:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .line 449
    invoke-virtual {v0}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd$4;->b:Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/AdPlacementReporter;->reportPlayListItem(Lcom/millennialmedia/internal/AdPlacementReporter;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)V

    .line 451
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd$4;->c:Lcom/millennialmedia/InterstitialAd;

    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd$4;->a:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-static {v0, v1}, Lcom/millennialmedia/InterstitialAd;->f(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    .line 452
    return-void
.end method

.method public onAdLeftApplication()V
    .locals 2

    .prologue
    .line 514
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd$4;->c:Lcom/millennialmedia/InterstitialAd;

    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd$4;->a:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-static {v0, v1}, Lcom/millennialmedia/InterstitialAd;->j(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    .line 515
    return-void
.end method

.method public onClicked()V
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd$4;->c:Lcom/millennialmedia/InterstitialAd;

    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd$4;->a:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-static {v0, v1}, Lcom/millennialmedia/InterstitialAd;->i(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    .line 501
    return-void
.end method

.method public onClosed()V
    .locals 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd$4;->c:Lcom/millennialmedia/InterstitialAd;

    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd$4;->a:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-static {v0, v1}, Lcom/millennialmedia/InterstitialAd;->h(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    .line 494
    return-void
.end method

.method public onExpired()V
    .locals 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd$4;->c:Lcom/millennialmedia/InterstitialAd;

    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd$4;->a:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-static {v0, v1}, Lcom/millennialmedia/InterstitialAd;->a(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    .line 508
    return-void
.end method

.method public onIncentiveEarned(Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;)V
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd$4;->c:Lcom/millennialmedia/InterstitialAd;

    invoke-static {v0, p1}, Lcom/millennialmedia/InterstitialAd;->a(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;)V

    .line 522
    return-void
.end method

.method public showFailed(Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;)V
    .locals 3

    .prologue
    .line 476
    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd$4;->c:Lcom/millennialmedia/InterstitialAd;

    monitor-enter v1

    .line 477
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd$4;->c:Lcom/millennialmedia/InterstitialAd;

    invoke-static {v0}, Lcom/millennialmedia/InterstitialAd;->b(Lcom/millennialmedia/InterstitialAd;)Lcom/millennialmedia/internal/AdPlacement$RequestState;

    move-result-object v0

    iget-object v2, p0, Lcom/millennialmedia/InterstitialAd$4;->a:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0, v2}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compare(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 478
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    invoke-static {}, Lcom/millennialmedia/InterstitialAd;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "show failed but load state is not valid"

    invoke-static {v0, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    :cond_0
    monitor-exit v1

    .line 487
    :goto_0
    return-void

    .line 484
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd$4;->c:Lcom/millennialmedia/InterstitialAd;

    invoke-static {v0, p1}, Lcom/millennialmedia/InterstitialAd;->a(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;)V

    goto :goto_0

    .line 484
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public shown()V
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd$4;->c:Lcom/millennialmedia/InterstitialAd;

    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd$4;->a:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-static {v0, v1}, Lcom/millennialmedia/InterstitialAd;->g(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    .line 470
    return-void
.end method
