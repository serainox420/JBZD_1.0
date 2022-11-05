.class public Lcom/millennialmedia/InterstitialAd;
.super Lcom/millennialmedia/internal/AdPlacement;
.source "InterstitialAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/InterstitialAd$ExpirationRunnable;,
        Lcom/millennialmedia/InterstitialAd$DisplayOptions;,
        Lcom/millennialmedia/InterstitialAd$InterstitialAdMetadata;,
        Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;,
        Lcom/millennialmedia/InterstitialAd$InterstitialListener;
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field private f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/millennialmedia/InterstitialAd$InterstitialListener;

.field private h:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;

.field private i:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

.field private j:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

.field private k:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/millennialmedia/InterstitialAd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/InterstitialAd;->e:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/MMException;
        }
    .end annotation

    .prologue
    .line 268
    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/AdPlacement;-><init>(Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/InterstitialAd;)Lcom/millennialmedia/internal/AdPlacement$RequestState;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->c:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    return-object v0
.end method

.method static synthetic a(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/PlayList;)Lcom/millennialmedia/internal/PlayList;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/millennialmedia/InterstitialAd;->b:Lcom/millennialmedia/internal/PlayList;

    return-object p1
.end method

.method static synthetic a(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/millennialmedia/InterstitialAd;->k:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    return-object p1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/millennialmedia/InterstitialAd;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/millennialmedia/InterstitialAd;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/millennialmedia/InterstitialAd;->a:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;)V
    .locals 2

    .prologue
    .line 791
    monitor-enter p0

    .line 793
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->a:Ljava/lang/String;

    const-string v1, "loaded"

    if-ne v0, v1, :cond_0

    .line 794
    const-string v0, "show_failed"

    iput-object v0, p0, Lcom/millennialmedia/InterstitialAd;->a:Ljava/lang/String;

    .line 796
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 798
    sget-object v0, Lcom/millennialmedia/InterstitialAd;->e:Ljava/lang/String;

    const-string v1, "Ad show failed"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->g:Lcom/millennialmedia/InterstitialAd$InterstitialListener;

    .line 802
    if-eqz v0, :cond_1

    .line 803
    new-instance v1, Lcom/millennialmedia/InterstitialAd$8;

    invoke-direct {v1, p0, v0, p1}, Lcom/millennialmedia/InterstitialAd$8;-><init>(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/InterstitialAd$InterstitialListener;Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    .line 811
    :cond_1
    return-void

    .line 796
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/millennialmedia/InterstitialAd;->a(Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;)V

    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;)V
    .locals 0

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/millennialmedia/InterstitialAd;->a(Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;)V

    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/millennialmedia/InterstitialAd;->j(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method private a(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 8

    .prologue
    .line 373
    invoke-virtual {p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->copy()Lcom/millennialmedia/internal/AdPlacement$RequestState;

    move-result-object v2

    .line 375
    monitor-enter p0

    .line 376
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->c:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0, v2}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compareRequest(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->a:Ljava/lang/String;

    const-string v1, "play_list_loaded"

    .line 377
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->a:Ljava/lang/String;

    const-string v1, "ad_adapter_load_failed"

    .line 378
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 380
    :cond_0
    monitor-exit p0

    .line 529
    :goto_0
    return-void

    .line 383
    :cond_1
    const-string v0, "loading_ad_adapter"

    iput-object v0, p0, Lcom/millennialmedia/InterstitialAd;->a:Ljava/lang/String;

    .line 390
    invoke-virtual {v2}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getItemHash()I

    .line 391
    iput-object v2, p0, Lcom/millennialmedia/InterstitialAd;->c:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .line 392
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->b:Lcom/millennialmedia/internal/PlayList;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/PlayList;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 395
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 396
    sget-object v0, Lcom/millennialmedia/InterstitialAd;->e:Ljava/lang/String;

    const-string v1, "Unable to find ad adapter in play list"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    :cond_2
    invoke-direct {p0, v2}, Lcom/millennialmedia/InterstitialAd;->e(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    goto :goto_0

    .line 392
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 404
    :cond_3
    invoke-virtual {p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/internal/AdPlacementReporter;->getPlayListItemReporter(Lcom/millennialmedia/internal/AdPlacementReporter;)Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;

    move-result-object v3

    .line 406
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->b:Lcom/millennialmedia/internal/PlayList;

    .line 407
    invoke-virtual {v0, p0, v3}, Lcom/millennialmedia/internal/PlayList;->getNextAdAdapter(Lcom/millennialmedia/internal/AdPlacement;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)Lcom/millennialmedia/internal/adadapters/AdAdapter;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;

    .line 408
    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 411
    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    .line 414
    iput-object v0, p0, Lcom/millennialmedia/InterstitialAd;->h:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;

    .line 417
    iget v4, v0, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;->requestTimeout:I

    .line 418
    if-lez v4, :cond_5

    .line 419
    iget-object v5, p0, Lcom/millennialmedia/InterstitialAd;->j:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v5, :cond_4

    .line 420
    iget-object v5, p0, Lcom/millennialmedia/InterstitialAd;->j:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    invoke-interface {v5}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    .line 425
    :cond_4
    new-instance v5, Lcom/millennialmedia/InterstitialAd$3;

    invoke-direct {v5, p0, v2, v3}, Lcom/millennialmedia/InterstitialAd$3;-><init>(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)V

    int-to-long v6, v4

    invoke-static {v5, v6, v7}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object v4

    iput-object v4, p0, Lcom/millennialmedia/InterstitialAd;->j:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    .line 443
    :cond_5
    new-instance v4, Lcom/millennialmedia/InterstitialAd$4;

    invoke-direct {v4, p0, v2, v3}, Lcom/millennialmedia/InterstitialAd$4;-><init>(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)V

    invoke-virtual {v0, v1, v4}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;->init(Landroid/content/Context;Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;)V

    goto :goto_0

    .line 526
    :cond_6
    invoke-virtual {v2}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/millennialmedia/internal/AdPlacementReporter;->reportPlayListItem(Lcom/millennialmedia/internal/AdPlacementReporter;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)V

    .line 527
    invoke-direct {p0, v2}, Lcom/millennialmedia/InterstitialAd;->c(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/millennialmedia/InterstitialAd;)Lcom/millennialmedia/internal/AdPlacement$RequestState;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->c:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->i:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->i:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    invoke-interface {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->j:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v0, :cond_1

    .line 616
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->j:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    invoke-interface {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    .line 618
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/millennialmedia/InterstitialAd;->e(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method private b(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 4

    .prologue
    .line 623
    invoke-direct {p0}, Lcom/millennialmedia/InterstitialAd;->c()V

    .line 625
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getInterstitialExpirationDuration()I

    move-result v0

    .line 626
    if-lez v0, :cond_0

    .line 627
    new-instance v1, Lcom/millennialmedia/InterstitialAd$ExpirationRunnable;

    invoke-direct {v1, p0, p1}, Lcom/millennialmedia/InterstitialAd$ExpirationRunnable;-><init>(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    int-to-long v2, v0

    .line 628
    invoke-static {v1, v2, v3}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/InterstitialAd;->k:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    .line 631
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)Lcom/millennialmedia/internal/AdPlacement$RequestState;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/millennialmedia/InterstitialAd;->c:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    return-object p1
.end method

.method private c()V
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->k:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->k:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    invoke-interface {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    .line 639
    :cond_0
    return-void
.end method

.method private c(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 3

    .prologue
    .line 644
    monitor-enter p0

    .line 645
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->c:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compare(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 646
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    sget-object v0, Lcom/millennialmedia/InterstitialAd;->e:Ljava/lang/String;

    const-string v1, "onAdAdapterLoadFailed called but load state is not valid"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    :cond_0
    monitor-exit p0

    .line 665
    :goto_0
    return-void

    .line 653
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->a:Ljava/lang/String;

    const-string v1, "loading_ad_adapter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 654
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 655
    sget-object v0, Lcom/millennialmedia/InterstitialAd;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdAdapterLoadFailed called but placement state is not valid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/InterstitialAd;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 662
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 661
    :cond_3
    :try_start_1
    const-string v0, "ad_adapter_load_failed"

    iput-object v0, p0, Lcom/millennialmedia/InterstitialAd;->a:Ljava/lang/String;

    .line 662
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 664
    invoke-direct {p0, p1}, Lcom/millennialmedia/InterstitialAd;->a(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    goto :goto_0
.end method

.method public static createInstance(Ljava/lang/String;)Lcom/millennialmedia/InterstitialAd;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/MMException;
        }
    .end annotation

    .prologue
    .line 258
    invoke-static {}, Lcom/millennialmedia/MMSDK;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    new-instance v0, Lcom/millennialmedia/MMInitializationException;

    const-string v1, "Unable to create instance, SDK must be initialized first"

    invoke-direct {v0, v1}, Lcom/millennialmedia/MMInitializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_0
    new-instance v0, Lcom/millennialmedia/InterstitialAd;

    invoke-direct {v0, p0}, Lcom/millennialmedia/InterstitialAd;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic d(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/millennialmedia/InterstitialAd;->a(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method private d(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 3

    .prologue
    .line 670
    monitor-enter p0

    .line 671
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->c:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compare(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 672
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    sget-object v0, Lcom/millennialmedia/InterstitialAd;->e:Ljava/lang/String;

    const-string v1, "onLoadSucceeded called but load state is not valid"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    :cond_0
    monitor-exit p0

    .line 710
    :cond_1
    :goto_0
    return-void

    .line 679
    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->a:Ljava/lang/String;

    const-string v1, "loading_ad_adapter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 680
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 681
    sget-object v0, Lcom/millennialmedia/InterstitialAd;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadSucceeded called but placement state is not valid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/InterstitialAd;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    :cond_3
    monitor-exit p0

    goto :goto_0

    .line 688
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 687
    :cond_4
    :try_start_1
    const-string v0, "loaded"

    iput-object v0, p0, Lcom/millennialmedia/InterstitialAd;->a:Ljava/lang/String;

    .line 688
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 690
    sget-object v0, Lcom/millennialmedia/InterstitialAd;->e:Ljava/lang/String;

    const-string v1, "Load succeeded"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    invoke-direct {p0}, Lcom/millennialmedia/InterstitialAd;->b()V

    .line 692
    invoke-direct {p0, p1}, Lcom/millennialmedia/InterstitialAd;->b(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    .line 697
    invoke-virtual {p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/internal/AdPlacementReporter;->reportPlayList(Lcom/millennialmedia/internal/AdPlacementReporter;)V

    .line 700
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->g:Lcom/millennialmedia/InterstitialAd$InterstitialListener;

    .line 701
    if-eqz v0, :cond_1

    .line 702
    new-instance v1, Lcom/millennialmedia/InterstitialAd$5;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/InterstitialAd$5;-><init>(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/InterstitialAd$InterstitialListener;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/millennialmedia/InterstitialAd;->c(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method private e(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 3

    .prologue
    .line 715
    monitor-enter p0

    .line 716
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->c:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compareRequest(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 717
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 718
    sget-object v0, Lcom/millennialmedia/InterstitialAd;->e:Ljava/lang/String;

    const-string v1, "onLoadFailed called but load state is not valid"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    :cond_0
    monitor-exit p0

    .line 753
    :cond_1
    :goto_0
    return-void

    .line 724
    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->a:Ljava/lang/String;

    const-string v1, "loading_ad_adapter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->a:Ljava/lang/String;

    const-string v1, "loading_play_list"

    .line 725
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 726
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 727
    sget-object v0, Lcom/millennialmedia/InterstitialAd;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadFailed called but placement state is not valid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/InterstitialAd;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    :cond_3
    monitor-exit p0

    goto :goto_0

    .line 736
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 733
    :cond_4
    :try_start_1
    const-string v0, "load_failed"

    iput-object v0, p0, Lcom/millennialmedia/InterstitialAd;->a:Ljava/lang/String;

    .line 734
    invoke-direct {p0}, Lcom/millennialmedia/InterstitialAd;->b()V

    .line 735
    invoke-virtual {p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/internal/AdPlacementReporter;->reportPlayList(Lcom/millennialmedia/internal/AdPlacementReporter;)V

    .line 736
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 738
    sget-object v0, Lcom/millennialmedia/InterstitialAd;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load failed for placement ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/InterstitialAd;->placementId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". If this warning persists please check your placement configuration."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->g:Lcom/millennialmedia/InterstitialAd$InterstitialListener;

    .line 743
    if-eqz v0, :cond_1

    .line 744
    new-instance v1, Lcom/millennialmedia/InterstitialAd$6;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/InterstitialAd$6;-><init>(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/InterstitialAd$InterstitialListener;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/millennialmedia/InterstitialAd;->d(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method private f(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 2

    .prologue
    .line 758
    monitor-enter p0

    .line 759
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->c:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compare(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 760
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 761
    sget-object v0, Lcom/millennialmedia/InterstitialAd;->e:Ljava/lang/String;

    const-string v1, "onShown called but load state is not valid"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    :cond_0
    monitor-exit p0

    .line 786
    :cond_1
    :goto_0
    return-void

    .line 767
    :cond_2
    const-string v0, "shown"

    iput-object v0, p0, Lcom/millennialmedia/InterstitialAd;->a:Ljava/lang/String;

    .line 769
    invoke-virtual {p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/AdPlacementReporter;->setDisplayed(Lcom/millennialmedia/internal/AdPlacementReporter;I)V

    .line 771
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 773
    sget-object v0, Lcom/millennialmedia/InterstitialAd;->e:Ljava/lang/String;

    const-string v1, "Ad shown"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->g:Lcom/millennialmedia/InterstitialAd$InterstitialListener;

    .line 777
    if-eqz v0, :cond_1

    .line 778
    new-instance v1, Lcom/millennialmedia/InterstitialAd$7;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/InterstitialAd$7;-><init>(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/InterstitialAd$InterstitialListener;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 771
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic g(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/millennialmedia/InterstitialAd;->f(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method private g(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 2

    .prologue
    .line 816
    monitor-enter p0

    .line 817
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->c:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compare(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 818
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 819
    sget-object v0, Lcom/millennialmedia/InterstitialAd;->e:Ljava/lang/String;

    const-string v1, "onClosed called but load state is not valid"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    :cond_0
    monitor-exit p0

    .line 841
    :cond_1
    :goto_0
    return-void

    .line 825
    :cond_2
    const-string v0, "idle"

    iput-object v0, p0, Lcom/millennialmedia/InterstitialAd;->a:Ljava/lang/String;

    .line 826
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 828
    sget-object v0, Lcom/millennialmedia/InterstitialAd;->e:Ljava/lang/String;

    const-string v1, "Ad closed"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->g:Lcom/millennialmedia/InterstitialAd$InterstitialListener;

    .line 832
    if-eqz v0, :cond_1

    .line 833
    new-instance v1, Lcom/millennialmedia/InterstitialAd$9;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/InterstitialAd$9;-><init>(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/InterstitialAd$InterstitialListener;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 826
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic h(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/millennialmedia/InterstitialAd;->g(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method private h(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 2

    .prologue
    .line 846
    sget-object v0, Lcom/millennialmedia/InterstitialAd;->e:Ljava/lang/String;

    const-string v1, "Ad clicked"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    invoke-virtual {p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/internal/AdPlacementReporter;->setClicked(Lcom/millennialmedia/internal/AdPlacementReporter;)V

    .line 850
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->g:Lcom/millennialmedia/InterstitialAd$InterstitialListener;

    .line 851
    if-eqz v0, :cond_0

    .line 852
    new-instance v1, Lcom/millennialmedia/InterstitialAd$10;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/InterstitialAd$10;-><init>(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/InterstitialAd$InterstitialListener;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    .line 860
    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/millennialmedia/InterstitialAd;->h(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method private i(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 2

    .prologue
    .line 865
    monitor-enter p0

    .line 866
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->c:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compare(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 867
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 868
    sget-object v0, Lcom/millennialmedia/InterstitialAd;->e:Ljava/lang/String;

    const-string v1, "onAdLeftApplication called but load state is not valid"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    :cond_0
    monitor-exit p0

    .line 888
    :cond_1
    :goto_0
    return-void

    .line 873
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 875
    sget-object v0, Lcom/millennialmedia/InterstitialAd;->e:Ljava/lang/String;

    const-string v1, "Ad left application"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->g:Lcom/millennialmedia/InterstitialAd$InterstitialListener;

    .line 879
    if-eqz v0, :cond_1

    .line 880
    new-instance v1, Lcom/millennialmedia/InterstitialAd$11;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/InterstitialAd$11;-><init>(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/InterstitialAd$InterstitialListener;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 873
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic j(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/millennialmedia/InterstitialAd;->i(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method private j(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 3

    .prologue
    .line 893
    monitor-enter p0

    .line 894
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->c:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compare(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 895
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 896
    sget-object v0, Lcom/millennialmedia/InterstitialAd;->e:Ljava/lang/String;

    const-string v1, "onExpired called but load state is not valid"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    :cond_0
    monitor-exit p0

    .line 927
    :cond_1
    :goto_0
    return-void

    .line 903
    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->a:Ljava/lang/String;

    const-string v1, "loaded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->a:Ljava/lang/String;

    const-string v1, "show_failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 904
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 905
    sget-object v0, Lcom/millennialmedia/InterstitialAd;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onExpired called but placement state is not valid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/InterstitialAd;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    :cond_3
    monitor-exit p0

    goto :goto_0

    .line 912
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 911
    :cond_4
    :try_start_1
    const-string v0, "expired"

    iput-object v0, p0, Lcom/millennialmedia/InterstitialAd;->a:Ljava/lang/String;

    .line 912
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 914
    sget-object v0, Lcom/millennialmedia/InterstitialAd;->e:Ljava/lang/String;

    const-string v1, "Ad expired"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->g:Lcom/millennialmedia/InterstitialAd$InterstitialListener;

    .line 918
    if-eqz v0, :cond_1

    .line 919
    new-instance v1, Lcom/millennialmedia/InterstitialAd$12;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/InterstitialAd$12;-><init>(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/InterstitialAd$InterstitialListener;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public hasExpired()Z
    .locals 2

    .prologue
    .line 605
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->a:Ljava/lang/String;

    const-string v1, "expired"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isReady()Z
    .locals 2

    .prologue
    .line 594
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->a:Ljava/lang/String;

    const-string v1, "loaded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public load(Landroid/content/Context;Lcom/millennialmedia/InterstitialAd$InterstitialAdMetadata;)V
    .locals 6

    .prologue
    .line 284
    sget-object v0, Lcom/millennialmedia/InterstitialAd;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading playlist for placement ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/InterstitialAd;->placementId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/InterstitialAd;->f:Ljava/lang/ref/WeakReference;

    .line 289
    monitor-enter p0

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->a:Ljava/lang/String;

    const-string v1, "idle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->a:Ljava/lang/String;

    const-string v1, "load_failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->a:Ljava/lang/String;

    const-string v1, "expired"

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->a:Ljava/lang/String;

    const-string v1, "show_failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    sget-object v0, Lcom/millennialmedia/InterstitialAd;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to load interstitial ad, state is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/InterstitialAd;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    monitor-exit p0

    .line 367
    :goto_0
    return-void

    .line 298
    :cond_0
    const-string v0, "loading_play_list"

    iput-object v0, p0, Lcom/millennialmedia/InterstitialAd;->a:Ljava/lang/String;

    .line 299
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/InterstitialAd;->b:Lcom/millennialmedia/internal/PlayList;

    .line 305
    if-nez p2, :cond_1

    .line 306
    new-instance p2, Lcom/millennialmedia/InterstitialAd$InterstitialAdMetadata;

    invoke-direct {p2}, Lcom/millennialmedia/InterstitialAd$InterstitialAdMetadata;-><init>()V

    .line 309
    :cond_1
    invoke-virtual {p0}, Lcom/millennialmedia/InterstitialAd;->getRequestState()Lcom/millennialmedia/internal/AdPlacement$RequestState;

    move-result-object v0

    .line 312
    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd;->i:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v1, :cond_2

    .line 313
    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd;->i:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    invoke-interface {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    .line 316
    :cond_2
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getInterstitialTimeout()I

    move-result v1

    .line 320
    new-instance v2, Lcom/millennialmedia/InterstitialAd$1;

    invoke-direct {v2, p0, v0}, Lcom/millennialmedia/InterstitialAd$1;-><init>(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    int-to-long v4, v1

    invoke-static {v2, v4, v5}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object v2

    iput-object v2, p0, Lcom/millennialmedia/InterstitialAd;->i:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    .line 332
    invoke-virtual {p2}, Lcom/millennialmedia/InterstitialAd$InterstitialAdMetadata;->getImpressionGroup()Ljava/lang/String;

    move-result-object v2

    .line 333
    invoke-virtual {p2, p0}, Lcom/millennialmedia/InterstitialAd$InterstitialAdMetadata;->toMap(Lcom/millennialmedia/internal/AdPlacement;)Ljava/util/Map;

    move-result-object v3

    new-instance v4, Lcom/millennialmedia/InterstitialAd$2;

    invoke-direct {v4, p0, v0, v2}, Lcom/millennialmedia/InterstitialAd$2;-><init>(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;Ljava/lang/String;)V

    invoke-static {v3, v4, v1}, Lcom/millennialmedia/internal/playlistserver/PlayListServer;->loadPlayList(Ljava/util/Map;Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;I)V

    goto :goto_0

    .line 299
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setListener(Lcom/millennialmedia/InterstitialAd$InterstitialListener;)V
    .locals 0

    .prologue
    .line 583
    iput-object p1, p0, Lcom/millennialmedia/InterstitialAd;->g:Lcom/millennialmedia/InterstitialAd$InterstitialListener;

    .line 584
    return-void
.end method

.method public show(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/MMException;
        }
    .end annotation

    .prologue
    .line 540
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/millennialmedia/InterstitialAd;->show(Landroid/content/Context;Lcom/millennialmedia/InterstitialAd$DisplayOptions;)V

    .line 541
    return-void
.end method

.method public show(Landroid/content/Context;Lcom/millennialmedia/InterstitialAd$DisplayOptions;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/MMException;
        }
    .end annotation

    .prologue
    .line 553
    const/4 v0, 0x0

    .line 555
    if-nez p1, :cond_0

    .line 556
    new-instance v0, Lcom/millennialmedia/MMException;

    const-string v1, "Unable to show interstitial, specified context cannot be null"

    invoke-direct {v0, v1}, Lcom/millennialmedia/MMException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 559
    :cond_0
    monitor-enter p0

    .line 560
    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd;->a:Ljava/lang/String;

    const-string v2, "loaded"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to show interstitial ad, state is not valid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 563
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 565
    if-eqz v0, :cond_2

    .line 566
    new-instance v1, Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v0}, Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/millennialmedia/InterstitialAd;->a(Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;)V

    .line 573
    :goto_0
    return-void

    .line 563
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 571
    :cond_2
    invoke-direct {p0}, Lcom/millennialmedia/InterstitialAd;->c()V

    .line 572
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->h:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;->show(Landroid/content/Context;Lcom/millennialmedia/InterstitialAd$DisplayOptions;)V

    goto :goto_0
.end method
