.class Lcom/millennialmedia/NativeAd$4;
.super Ljava/lang/Object;
.source "NativeAd.java"

# interfaces
.implements Lcom/millennialmedia/internal/adadapters/NativeAdapter$NativeAdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/NativeAd;->a(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/AdPlacement$RequestState;

.field final synthetic b:Lcom/millennialmedia/internal/adadapters/NativeAdapter;

.field final synthetic c:Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;

.field final synthetic d:Lcom/millennialmedia/NativeAd;


# direct methods
.method constructor <init>(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;Lcom/millennialmedia/internal/adadapters/NativeAdapter;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)V
    .locals 0

    .prologue
    .line 618
    iput-object p1, p0, Lcom/millennialmedia/NativeAd$4;->d:Lcom/millennialmedia/NativeAd;

    iput-object p2, p0, Lcom/millennialmedia/NativeAd$4;->a:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    iput-object p3, p0, Lcom/millennialmedia/NativeAd$4;->b:Lcom/millennialmedia/internal/adadapters/NativeAdapter;

    iput-object p4, p0, Lcom/millennialmedia/NativeAd$4;->c:Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initFailed(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 663
    iget-object v0, p0, Lcom/millennialmedia/NativeAd$4;->a:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .line 664
    invoke-virtual {v0}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/NativeAd$4;->c:Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;

    const/4 v2, -0x3

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/internal/AdPlacementReporter;->reportPlayListItem(Lcom/millennialmedia/internal/AdPlacementReporter;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;I)V

    .line 667
    iget-object v0, p0, Lcom/millennialmedia/NativeAd$4;->d:Lcom/millennialmedia/NativeAd;

    iget-object v1, p0, Lcom/millennialmedia/NativeAd$4;->a:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-static {v0, v1}, Lcom/millennialmedia/NativeAd;->e(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    .line 668
    return-void
.end method

.method public initSucceeded()V
    .locals 3

    .prologue
    .line 623
    iget-object v1, p0, Lcom/millennialmedia/NativeAd$4;->d:Lcom/millennialmedia/NativeAd;

    monitor-enter v1

    .line 624
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/NativeAd$4;->d:Lcom/millennialmedia/NativeAd;

    invoke-static {v0}, Lcom/millennialmedia/NativeAd;->d(Lcom/millennialmedia/NativeAd;)Lcom/millennialmedia/internal/AdPlacement$RequestState;

    move-result-object v0

    iget-object v2, p0, Lcom/millennialmedia/NativeAd$4;->a:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0, v2}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compare(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 625
    monitor-exit v1

    .line 657
    :goto_0
    return-void

    .line 627
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 629
    new-instance v0, Lcom/millennialmedia/NativeAd$4$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/NativeAd$4$1;-><init>(Lcom/millennialmedia/NativeAd$4;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 627
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onIncentiveEarned(Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;)V
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lcom/millennialmedia/NativeAd$4;->d:Lcom/millennialmedia/NativeAd;

    invoke-static {v0, p1}, Lcom/millennialmedia/NativeAd;->a(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;)V

    .line 675
    return-void
.end method
