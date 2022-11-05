.class Lcom/millennialmedia/InterstitialAd$2;
.super Ljava/lang/Object;
.source "InterstitialAd.java"

# interfaces
.implements Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/InterstitialAd;->load(Landroid/content/Context;Lcom/millennialmedia/InterstitialAd$InterstitialAdMetadata;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/AdPlacement$RequestState;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/millennialmedia/InterstitialAd;


# direct methods
.method constructor <init>(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/millennialmedia/InterstitialAd$2;->c:Lcom/millennialmedia/InterstitialAd;

    iput-object p2, p0, Lcom/millennialmedia/InterstitialAd$2;->a:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    iput-object p3, p0, Lcom/millennialmedia/InterstitialAd$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 361
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    invoke-static {}, Lcom/millennialmedia/InterstitialAd;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Play list load failed"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd$2;->c:Lcom/millennialmedia/InterstitialAd;

    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd$2;->a:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-static {v0, v1}, Lcom/millennialmedia/InterstitialAd;->b(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    .line 365
    return-void
.end method

.method public onLoaded(Lcom/millennialmedia/internal/PlayList;)V
    .locals 3

    .prologue
    .line 338
    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd$2;->c:Lcom/millennialmedia/InterstitialAd;

    monitor-enter v1

    .line 339
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd$2;->c:Lcom/millennialmedia/InterstitialAd;

    invoke-static {v0}, Lcom/millennialmedia/InterstitialAd;->a(Lcom/millennialmedia/InterstitialAd;)Lcom/millennialmedia/internal/AdPlacement$RequestState;

    move-result-object v0

    iget-object v2, p0, Lcom/millennialmedia/InterstitialAd$2;->a:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0, v2}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compareRequest(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    monitor-exit v1

    .line 355
    :goto_0
    return-void

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd$2;->c:Lcom/millennialmedia/InterstitialAd;

    const-string v2, "play_list_loaded"

    invoke-static {v0, v2}, Lcom/millennialmedia/InterstitialAd;->a(Lcom/millennialmedia/InterstitialAd;Ljava/lang/String;)Ljava/lang/String;

    .line 344
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd$2;->c:Lcom/millennialmedia/InterstitialAd;

    invoke-static {v0, p1}, Lcom/millennialmedia/InterstitialAd;->a(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/PlayList;)Lcom/millennialmedia/internal/PlayList;

    .line 349
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd$2;->a:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd$2;->b:Ljava/lang/String;

    .line 350
    invoke-static {p1, v1}, Lcom/millennialmedia/internal/AdPlacementReporter;->getPlayListReporter(Lcom/millennialmedia/internal/PlayList;Ljava/lang/String;)Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->setAdPlacementReporter(Lcom/millennialmedia/internal/AdPlacementReporter;)V

    .line 352
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd$2;->c:Lcom/millennialmedia/InterstitialAd;

    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd$2;->a:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-static {v0, v1}, Lcom/millennialmedia/InterstitialAd;->c(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .line 354
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd$2;->c:Lcom/millennialmedia/InterstitialAd;

    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd$2;->a:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-static {v0, v1}, Lcom/millennialmedia/InterstitialAd;->d(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    goto :goto_0

    .line 344
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
