.class Lcom/millennialmedia/InlineAd$2;
.super Ljava/lang/Object;
.source "InlineAd.java"

# interfaces
.implements Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/InlineAd;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/AdPlacement$RequestState;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/millennialmedia/InlineAd;


# direct methods
.method constructor <init>(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 695
    iput-object p1, p0, Lcom/millennialmedia/InlineAd$2;->c:Lcom/millennialmedia/InlineAd;

    iput-object p2, p0, Lcom/millennialmedia/InlineAd$2;->a:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    iput-object p3, p0, Lcom/millennialmedia/InlineAd$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 725
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 726
    invoke-static {}, Lcom/millennialmedia/InlineAd;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Play list load failed"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$2;->c:Lcom/millennialmedia/InlineAd;

    iget-object v1, p0, Lcom/millennialmedia/InlineAd$2;->a:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-static {v0, v1}, Lcom/millennialmedia/InlineAd;->a(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    .line 729
    return-void
.end method

.method public onLoaded(Lcom/millennialmedia/internal/PlayList;)V
    .locals 3

    .prologue
    .line 700
    iget-object v1, p0, Lcom/millennialmedia/InlineAd$2;->c:Lcom/millennialmedia/InlineAd;

    monitor-enter v1

    .line 701
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$2;->c:Lcom/millennialmedia/InlineAd;

    invoke-static {v0}, Lcom/millennialmedia/InlineAd;->f(Lcom/millennialmedia/InlineAd;)Lcom/millennialmedia/internal/AdPlacement$RequestState;

    move-result-object v0

    iget-object v2, p0, Lcom/millennialmedia/InlineAd$2;->a:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0, v2}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compareRequest(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/InlineAd$2;->c:Lcom/millennialmedia/InlineAd;

    .line 702
    invoke-static {v0}, Lcom/millennialmedia/InlineAd;->g(Lcom/millennialmedia/InlineAd;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "loading_play_list"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 704
    :cond_0
    monitor-exit v1

    .line 719
    :goto_0
    return-void

    .line 707
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$2;->c:Lcom/millennialmedia/InlineAd;

    const-string v2, "play_list_loaded"

    invoke-static {v0, v2}, Lcom/millennialmedia/InlineAd;->a(Lcom/millennialmedia/InlineAd;Ljava/lang/String;)Ljava/lang/String;

    .line 708
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 712
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$2;->c:Lcom/millennialmedia/InlineAd;

    invoke-static {v0, p1}, Lcom/millennialmedia/InlineAd;->a(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/PlayList;)Lcom/millennialmedia/internal/PlayList;

    .line 713
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$2;->a:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    iget-object v1, p0, Lcom/millennialmedia/InlineAd$2;->b:Ljava/lang/String;

    .line 714
    invoke-static {p1, v1}, Lcom/millennialmedia/internal/AdPlacementReporter;->getPlayListReporter(Lcom/millennialmedia/internal/PlayList;Ljava/lang/String;)Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->setAdPlacementReporter(Lcom/millennialmedia/internal/AdPlacementReporter;)V

    .line 716
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$2;->c:Lcom/millennialmedia/InlineAd;

    iget-object v1, p0, Lcom/millennialmedia/InlineAd$2;->a:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-static {v0, v1}, Lcom/millennialmedia/InlineAd;->b(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .line 718
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$2;->c:Lcom/millennialmedia/InlineAd;

    iget-object v1, p0, Lcom/millennialmedia/InlineAd$2;->a:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-static {v0, v1}, Lcom/millennialmedia/InlineAd;->c(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    goto :goto_0

    .line 708
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
