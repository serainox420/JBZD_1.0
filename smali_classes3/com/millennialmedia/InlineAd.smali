.class public Lcom/millennialmedia/InlineAd;
.super Lcom/millennialmedia/internal/AdPlacement;
.source "InlineAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/InlineAd$RefreshRunnable;,
        Lcom/millennialmedia/InlineAd$AdSize;,
        Lcom/millennialmedia/InlineAd$ImpressionListener;,
        Lcom/millennialmedia/InlineAd$InlineAdMetadata;,
        Lcom/millennialmedia/InlineAd$InlineErrorStatus;,
        Lcom/millennialmedia/InlineAd$InlineAbortListener;,
        Lcom/millennialmedia/InlineAd$InlineListener;
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field private final f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/millennialmedia/InlineAd$InlineListener;

.field private h:Lcom/millennialmedia/internal/adadapters/InlineAdapter;

.field private i:Lcom/millennialmedia/InlineAd$InlineAbortListener;

.field private j:Lcom/millennialmedia/InlineAd$InlineAdMetadata;

.field private k:Landroid/widget/RelativeLayout;

.field private l:J

.field private m:Ljava/lang/Integer;

.field private n:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

.field private o:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

.field private p:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

.field private volatile q:Lcom/millennialmedia/InlineAd$ImpressionListener;

.field private volatile r:Z

.field private volatile s:Z

.field private volatile t:Z

.field private volatile u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/millennialmedia/InlineAd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/InlineAd;->e:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/view/ViewGroup;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/MMException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 576
    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/AdPlacement;-><init>(Ljava/lang/String;)V

    .line 65
    iput-boolean v0, p0, Lcom/millennialmedia/InlineAd;->r:Z

    .line 66
    iput-boolean v0, p0, Lcom/millennialmedia/InlineAd;->s:Z

    .line 67
    iput-boolean v0, p0, Lcom/millennialmedia/InlineAd;->t:Z

    .line 68
    iput-boolean v0, p0, Lcom/millennialmedia/InlineAd;->u:Z

    .line 578
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/InlineAd;->f:Ljava/lang/ref/WeakReference;

    .line 579
    return-void
.end method

.method private static a(Lcom/millennialmedia/internal/adadapters/AdAdapter;)J
    .locals 3

    .prologue
    .line 1411
    const-wide/16 v0, 0x3e8

    .line 1412
    instance-of v2, p0, Lcom/millennialmedia/internal/adadapters/MMAdAdapter;

    if-eqz v2, :cond_0

    .line 1413
    check-cast p0, Lcom/millennialmedia/internal/adadapters/MMAdAdapter;

    invoke-interface {p0}, Lcom/millennialmedia/internal/adadapters/MMAdAdapter;->getImpressionDelay()J

    move-result-wide v0

    .line 1416
    :cond_0
    return-wide v0
.end method

.method static synthetic a(Lcom/millennialmedia/InlineAd;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/millennialmedia/InlineAd;->k:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic a(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/InlineAd$ImpressionListener;)Lcom/millennialmedia/InlineAd$ImpressionListener;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/millennialmedia/InlineAd;->q:Lcom/millennialmedia/InlineAd$ImpressionListener;

    return-object p1
.end method

.method static synthetic a(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/PlayList;)Lcom/millennialmedia/internal/PlayList;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/millennialmedia/InlineAd;->b:Lcom/millennialmedia/internal/PlayList;

    return-object p1
.end method

.method static synthetic a(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/millennialmedia/InlineAd;->p:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    return-object p1
.end method

.method static synthetic a(Lcom/millennialmedia/InlineAd;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/millennialmedia/InlineAd;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/millennialmedia/InlineAd;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->f:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->c:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/millennialmedia/internal/AdPlacementReporter;->setDisplayed(Lcom/millennialmedia/internal/AdPlacementReporter;I)V

    .line 1042
    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/InlineAd;I)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/millennialmedia/InlineAd;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;)V
    .locals 0

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/millennialmedia/InlineAd;->a(Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;)V

    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/millennialmedia/InlineAd;->c(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;II)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/millennialmedia/InlineAd;->a(Lcom/millennialmedia/internal/AdPlacement$RequestState;II)V

    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;IIZ)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/millennialmedia/InlineAd;->a(Lcom/millennialmedia/internal/AdPlacement$RequestState;IIZ)V

    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;Lcom/millennialmedia/internal/adadapters/InlineAdapter;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/InlineAd;->a(Lcom/millennialmedia/internal/AdPlacement$RequestState;Lcom/millennialmedia/internal/adadapters/InlineAdapter;)V

    return-void
.end method

.method private a(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 8

    .prologue
    .line 737
    invoke-virtual {p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->copy()Lcom/millennialmedia/internal/AdPlacement$RequestState;

    move-result-object v2

    .line 739
    monitor-enter p0

    .line 740
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->c:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0, v2}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compareRequest(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->a:Ljava/lang/String;

    const-string v1, "play_list_loaded"

    .line 741
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->a:Ljava/lang/String;

    const-string v1, "ad_adapter_load_failed"

    .line 742
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 744
    :cond_0
    monitor-exit p0

    .line 959
    :goto_0
    return-void

    .line 747
    :cond_1
    const-string v0, "loading_ad_adapter"

    iput-object v0, p0, Lcom/millennialmedia/InlineAd;->a:Ljava/lang/String;

    .line 754
    invoke-virtual {v2}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getItemHash()I

    .line 755
    iput-object v2, p0, Lcom/millennialmedia/InlineAd;->c:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .line 756
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 758
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->b:Lcom/millennialmedia/internal/PlayList;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/PlayList;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 759
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 760
    sget-object v0, Lcom/millennialmedia/InlineAd;->e:Ljava/lang/String;

    const-string v1, "Unable to find ad adapter in play list"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    :cond_2
    invoke-direct {p0, v2}, Lcom/millennialmedia/InlineAd;->c(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    goto :goto_0

    .line 756
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 767
    :cond_3
    iget-boolean v0, p0, Lcom/millennialmedia/InlineAd;->u:Z

    if-eqz v0, :cond_4

    .line 768
    invoke-direct {p0, v2}, Lcom/millennialmedia/InlineAd;->h(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    goto :goto_0

    .line 774
    :cond_4
    invoke-virtual {p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/internal/AdPlacementReporter;->getPlayListItemReporter(Lcom/millennialmedia/internal/AdPlacementReporter;)Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;

    move-result-object v3

    .line 776
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->b:Lcom/millennialmedia/internal/PlayList;

    invoke-virtual {v0, p0, v3}, Lcom/millennialmedia/internal/PlayList;->getNextAdAdapter(Lcom/millennialmedia/internal/AdPlacement;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)Lcom/millennialmedia/internal/adadapters/AdAdapter;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/adadapters/InlineAdapter;

    .line 777
    iget-object v1, p0, Lcom/millennialmedia/InlineAd;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 780
    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    .line 783
    iput-object v0, p0, Lcom/millennialmedia/InlineAd;->h:Lcom/millennialmedia/internal/adadapters/InlineAdapter;

    .line 786
    iget v4, v0, Lcom/millennialmedia/internal/adadapters/InlineAdapter;->requestTimeout:I

    .line 787
    if-lez v4, :cond_6

    .line 788
    iget-object v5, p0, Lcom/millennialmedia/InlineAd;->o:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v5, :cond_5

    .line 789
    iget-object v5, p0, Lcom/millennialmedia/InlineAd;->o:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    invoke-interface {v5}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    .line 794
    :cond_5
    new-instance v5, Lcom/millennialmedia/InlineAd$3;

    invoke-direct {v5, p0, v2, v3}, Lcom/millennialmedia/InlineAd$3;-><init>(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)V

    int-to-long v6, v4

    invoke-static {v5, v6, v7}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object v4

    iput-object v4, p0, Lcom/millennialmedia/InlineAd;->o:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    .line 812
    :cond_6
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v4, Lcom/millennialmedia/InlineAd$4;

    invoke-direct {v4, p0, v2, v0, v3}, Lcom/millennialmedia/InlineAd$4;-><init>(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;Lcom/millennialmedia/internal/adadapters/InlineAdapter;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)V

    invoke-virtual {v0, v1, v4}, Lcom/millennialmedia/internal/adadapters/InlineAdapter;->init(Landroid/content/Context;Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;)V

    goto :goto_0

    .line 956
    :cond_7
    invoke-virtual {v2}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/millennialmedia/internal/AdPlacementReporter;->reportPlayListItem(Lcom/millennialmedia/internal/AdPlacementReporter;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)V

    .line 957
    invoke-direct {p0, v2}, Lcom/millennialmedia/InlineAd;->b(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    goto :goto_0
.end method

.method private a(Lcom/millennialmedia/internal/AdPlacement$RequestState;II)V
    .locals 2

    .prologue
    .line 1190
    monitor-enter p0

    .line 1191
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->c:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compare(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1192
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1193
    sget-object v0, Lcom/millennialmedia/InlineAd;->e:Ljava/lang/String;

    const-string v1, "onResize called but request state is not valid"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    :cond_0
    monitor-exit p0

    .line 1214
    :cond_1
    :goto_0
    return-void

    .line 1198
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1200
    sget-object v0, Lcom/millennialmedia/InlineAd;->e:Ljava/lang/String;

    const-string v1, "Ad resizing"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/InlineAd;->s:Z

    .line 1204
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->g:Lcom/millennialmedia/InlineAd$InlineListener;

    .line 1205
    if-eqz v0, :cond_1

    .line 1206
    new-instance v1, Lcom/millennialmedia/InlineAd$8;

    invoke-direct {v1, p0, v0, p2, p3}, Lcom/millennialmedia/InlineAd$8;-><init>(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/InlineAd$InlineListener;II)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1198
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Lcom/millennialmedia/internal/AdPlacement$RequestState;IIZ)V
    .locals 6

    .prologue
    .line 1220
    monitor-enter p0

    .line 1221
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->c:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compare(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1222
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1223
    sget-object v0, Lcom/millennialmedia/InlineAd;->e:Ljava/lang/String;

    const-string v1, "onResized called but request state is not valid"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    :cond_0
    monitor-exit p0

    .line 1246
    :cond_1
    :goto_0
    return-void

    .line 1228
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1230
    sget-object v0, Lcom/millennialmedia/InlineAd;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad resized, is closed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    if-eqz p4, :cond_3

    .line 1232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/InlineAd;->s:Z

    .line 1236
    :cond_3
    iget-object v2, p0, Lcom/millennialmedia/InlineAd;->g:Lcom/millennialmedia/InlineAd$InlineListener;

    .line 1237
    if-eqz v2, :cond_1

    .line 1238
    new-instance v0, Lcom/millennialmedia/InlineAd$9;

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/millennialmedia/InlineAd$9;-><init>(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/InlineAd$InlineListener;IIZ)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1228
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Lcom/millennialmedia/internal/AdPlacement$RequestState;Lcom/millennialmedia/internal/adadapters/InlineAdapter;)V
    .locals 7

    .prologue
    .line 1073
    monitor-enter p0

    .line 1074
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->c:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compare(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1075
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1076
    sget-object v0, Lcom/millennialmedia/InlineAd;->e:Ljava/lang/String;

    const-string v1, "onRequestSucceeded called but request state is not valid"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    :cond_0
    monitor-exit p0

    .line 1118
    :cond_1
    :goto_0
    return-void

    .line 1082
    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->a:Ljava/lang/String;

    const-string v1, "loading_ad_adapter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1083
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1084
    sget-object v0, Lcom/millennialmedia/InlineAd;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestSucceeded called but placement state is not valid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/InlineAd;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    :cond_3
    monitor-exit p0

    goto :goto_0

    .line 1101
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1090
    :cond_4
    :try_start_1
    const-string v0, "loaded"

    iput-object v0, p0, Lcom/millennialmedia/InlineAd;->a:Ljava/lang/String;

    .line 1092
    sget-object v0, Lcom/millennialmedia/InlineAd;->e:Ljava/lang/String;

    const-string v1, "Request succeeded"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    invoke-direct {p0}, Lcom/millennialmedia/InlineAd;->f()V

    .line 1095
    invoke-virtual {p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/internal/AdPlacementReporter;->reportPlayList(Lcom/millennialmedia/internal/AdPlacementReporter;)V

    .line 1097
    new-instance v1, Lcom/millennialmedia/InlineAd$ImpressionListener;

    iget-object v3, p0, Lcom/millennialmedia/InlineAd;->k:Landroid/widget/RelativeLayout;

    invoke-static {p2}, Lcom/millennialmedia/InlineAd;->a(Lcom/millennialmedia/internal/adadapters/AdAdapter;)J

    move-result-wide v4

    .line 1098
    invoke-static {p2}, Lcom/millennialmedia/InlineAd;->b(Lcom/millennialmedia/internal/adadapters/AdAdapter;)I

    move-result v6

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/millennialmedia/InlineAd$ImpressionListener;-><init>(Lcom/millennialmedia/InlineAd;Landroid/view/View;JI)V

    iput-object v1, p0, Lcom/millennialmedia/InlineAd;->q:Lcom/millennialmedia/InlineAd$ImpressionListener;

    .line 1100
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->q:Lcom/millennialmedia/InlineAd$ImpressionListener;

    invoke-virtual {v0}, Lcom/millennialmedia/InlineAd$ImpressionListener;->a()V

    .line 1101
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1104
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->g:Lcom/millennialmedia/InlineAd$InlineListener;

    .line 1105
    if-eqz v0, :cond_1

    .line 1106
    new-instance v1, Lcom/millennialmedia/InlineAd$5;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/InlineAd$5;-><init>(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/InlineAd$InlineListener;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static b(Lcom/millennialmedia/internal/adadapters/AdAdapter;)I
    .locals 2

    .prologue
    .line 1422
    const/16 v0, 0x32

    .line 1423
    instance-of v1, p0, Lcom/millennialmedia/internal/adadapters/MMAdAdapter;

    if-eqz v1, :cond_0

    .line 1424
    check-cast p0, Lcom/millennialmedia/internal/adadapters/MMAdAdapter;

    invoke-interface {p0}, Lcom/millennialmedia/internal/adadapters/MMAdAdapter;->getMinImpressionViewabilityPercentage()I

    move-result v0

    .line 1427
    :cond_0
    return v0
.end method

.method static synthetic b(Lcom/millennialmedia/InlineAd;)Lcom/millennialmedia/InlineAd$ImpressionListener;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->q:Lcom/millennialmedia/InlineAd$ImpressionListener;

    return-object v0
.end method

.method static synthetic b(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)Lcom/millennialmedia/internal/AdPlacement$RequestState;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/millennialmedia/InlineAd;->c:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    return-object p1
.end method

.method private b(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 3

    .prologue
    .line 1047
    monitor-enter p0

    .line 1048
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->c:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compare(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1049
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1050
    sget-object v0, Lcom/millennialmedia/InlineAd;->e:Ljava/lang/String;

    const-string v1, "onAdAdapterLoadFailed called but request state is not valid"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    :cond_0
    monitor-exit p0

    .line 1068
    :goto_0
    return-void

    .line 1056
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->a:Ljava/lang/String;

    const-string v1, "loading_ad_adapter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1057
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1058
    sget-object v0, Lcom/millennialmedia/InlineAd;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdAdapterLoadFailed called but placement state is not valid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/InlineAd;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 1065
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1064
    :cond_3
    :try_start_1
    const-string v0, "ad_adapter_load_failed"

    iput-object v0, p0, Lcom/millennialmedia/InlineAd;->a:Ljava/lang/String;

    .line 1065
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1067
    invoke-direct {p0, p1}, Lcom/millennialmedia/InlineAd;->a(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    goto :goto_0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/millennialmedia/InlineAd;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/millennialmedia/InlineAd;->a(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method private c(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 3

    .prologue
    .line 1123
    monitor-enter p0

    .line 1124
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->c:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compareRequest(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1125
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1126
    sget-object v0, Lcom/millennialmedia/InlineAd;->e:Ljava/lang/String;

    const-string v1, "onRequestFailed called but request state is not valid"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    :cond_0
    monitor-exit p0

    .line 1166
    :cond_1
    :goto_0
    return-void

    .line 1132
    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->a:Ljava/lang/String;

    const-string v1, "loading_ad_adapter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->a:Ljava/lang/String;

    const-string v1, "loading_play_list"

    .line 1133
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1134
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1135
    sget-object v0, Lcom/millennialmedia/InlineAd;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestFailed called but placement state is not valid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/InlineAd;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    :cond_3
    monitor-exit p0

    goto :goto_0

    .line 1149
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1141
    :cond_4
    :try_start_1
    const-string v0, "load_failed"

    iput-object v0, p0, Lcom/millennialmedia/InlineAd;->a:Ljava/lang/String;

    .line 1143
    sget-object v0, Lcom/millennialmedia/InlineAd;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request failed for placement ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/InlineAd;->placementId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". If this warning persists please check your placement configuration."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    invoke-direct {p0}, Lcom/millennialmedia/InlineAd;->f()V

    .line 1148
    invoke-virtual {p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/internal/AdPlacementReporter;->reportPlayList(Lcom/millennialmedia/internal/AdPlacementReporter;)V

    .line 1149
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1152
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->g:Lcom/millennialmedia/InlineAd$InlineListener;

    .line 1153
    if-eqz v0, :cond_1

    .line 1154
    new-instance v1, Lcom/millennialmedia/InlineAd$6;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/InlineAd$6;-><init>(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/InlineAd$InlineListener;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/millennialmedia/InlineAd;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/millennialmedia/InlineAd;->s:Z

    return v0
.end method

.method public static createInstance(Ljava/lang/String;Landroid/view/ViewGroup;)Lcom/millennialmedia/InlineAd;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/MMException;
        }
    .end annotation

    .prologue
    .line 558
    invoke-static {}, Lcom/millennialmedia/MMSDK;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 559
    new-instance v0, Lcom/millennialmedia/MMInitializationException;

    const-string v1, "Unable to create instance, SDK must be initialized first"

    invoke-direct {v0, v1}, Lcom/millennialmedia/MMInitializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 562
    :cond_0
    if-nez p1, :cond_1

    .line 563
    new-instance v0, Lcom/millennialmedia/MMException;

    const-string v1, "Unable to create instance, ad container cannot be null"

    invoke-direct {v0, v1}, Lcom/millennialmedia/MMException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 566
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    .line 567
    new-instance v0, Lcom/millennialmedia/MMException;

    const-string v1, "Unable to create instance, ad container must have an associated context"

    invoke-direct {v0, v1}, Lcom/millennialmedia/MMException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 570
    :cond_2
    new-instance v0, Lcom/millennialmedia/InlineAd;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/InlineAd;-><init>(Ljava/lang/String;Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method private d()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 633
    iget-boolean v0, p0, Lcom/millennialmedia/InlineAd;->s:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/millennialmedia/InlineAd;->t:Z

    if-eqz v0, :cond_1

    .line 634
    :cond_0
    sget-object v0, Lcom/millennialmedia/InlineAd;->e:Ljava/lang/String;

    const-string v1, "Inline ad is resized or expanded, unable to request new ad"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    :goto_0
    return-void

    .line 641
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 642
    iget-wide v2, p0, Lcom/millennialmedia/InlineAd;->l:J

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getMinInlineRefreshRate()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 643
    sget-object v0, Lcom/millennialmedia/InlineAd;->e:Ljava/lang/String;

    const-string v1, "Too soon since last inline ad request, unable to request ad"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 648
    :cond_2
    monitor-enter p0

    .line 649
    :try_start_0
    invoke-direct {p0}, Lcom/millennialmedia/InlineAd;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 650
    monitor-exit p0

    goto :goto_0

    .line 658
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 654
    :cond_3
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/millennialmedia/InlineAd;->u:Z

    .line 655
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/InlineAd;->i:Lcom/millennialmedia/InlineAd$InlineAbortListener;

    .line 657
    const-string v0, "loading_play_list"

    iput-object v0, p0, Lcom/millennialmedia/InlineAd;->a:Ljava/lang/String;

    .line 658
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 661
    iput-object v6, p0, Lcom/millennialmedia/InlineAd;->b:Lcom/millennialmedia/internal/PlayList;

    .line 664
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/millennialmedia/InlineAd;->l:J

    .line 667
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->j:Lcom/millennialmedia/InlineAd$InlineAdMetadata;

    if-nez v0, :cond_4

    .line 668
    new-instance v0, Lcom/millennialmedia/InlineAd$InlineAdMetadata;

    invoke-direct {v0}, Lcom/millennialmedia/InlineAd$InlineAdMetadata;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/InlineAd;->j:Lcom/millennialmedia/InlineAd$InlineAdMetadata;

    .line 671
    :cond_4
    invoke-virtual {p0}, Lcom/millennialmedia/InlineAd;->getRequestState()Lcom/millennialmedia/internal/AdPlacement$RequestState;

    move-result-object v0

    .line 674
    iget-object v1, p0, Lcom/millennialmedia/InlineAd;->n:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v1, :cond_5

    .line 675
    iget-object v1, p0, Lcom/millennialmedia/InlineAd;->n:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    invoke-interface {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    .line 678
    :cond_5
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getInlineTimeout()I

    move-result v1

    .line 682
    new-instance v2, Lcom/millennialmedia/InlineAd$1;

    invoke-direct {v2, p0, v0}, Lcom/millennialmedia/InlineAd$1;-><init>(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    int-to-long v4, v1

    invoke-static {v2, v4, v5}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object v2

    iput-object v2, p0, Lcom/millennialmedia/InlineAd;->n:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    .line 694
    iget-object v2, p0, Lcom/millennialmedia/InlineAd;->j:Lcom/millennialmedia/InlineAd$InlineAdMetadata;

    invoke-virtual {v2}, Lcom/millennialmedia/InlineAd$InlineAdMetadata;->getImpressionGroup()Ljava/lang/String;

    move-result-object v2

    .line 695
    iget-object v3, p0, Lcom/millennialmedia/InlineAd;->j:Lcom/millennialmedia/InlineAd$InlineAdMetadata;

    invoke-virtual {v3, p0}, Lcom/millennialmedia/InlineAd$InlineAdMetadata;->toMap(Lcom/millennialmedia/InlineAd;)Ljava/util/Map;

    move-result-object v3

    new-instance v4, Lcom/millennialmedia/InlineAd$2;

    invoke-direct {v4, p0, v0, v2}, Lcom/millennialmedia/InlineAd$2;-><init>(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;Ljava/lang/String;)V

    invoke-static {v3, v4, v1}, Lcom/millennialmedia/internal/playlistserver/PlayListServer;->loadPlayList(Ljava/util/Map;Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;I)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/millennialmedia/InlineAd;->b(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method private d(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 2

    .prologue
    .line 1171
    sget-object v0, Lcom/millennialmedia/InlineAd;->e:Ljava/lang/String;

    const-string v1, "Ad clicked"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    invoke-virtual {p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/internal/AdPlacementReporter;->setClicked(Lcom/millennialmedia/internal/AdPlacementReporter;)V

    .line 1175
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->g:Lcom/millennialmedia/InlineAd$InlineListener;

    .line 1176
    if-eqz v0, :cond_0

    .line 1177
    new-instance v1, Lcom/millennialmedia/InlineAd$7;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/InlineAd$7;-><init>(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/InlineAd$InlineListener;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    .line 1185
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/millennialmedia/InlineAd;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/millennialmedia/InlineAd;->t:Z

    return v0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 1003
    monitor-enter p0

    .line 1006
    :try_start_0
    invoke-virtual {p0}, Lcom/millennialmedia/InlineAd;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->p:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v0, :cond_2

    .line 1007
    :cond_0
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1008
    sget-object v0, Lcom/millennialmedia/InlineAd;->e:Ljava/lang/String;

    const-string v1, "Refresh disabled or already started, returning"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    :cond_1
    monitor-exit p0

    .line 1016
    :goto_0
    return-void

    .line 1014
    :cond_2
    new-instance v0, Lcom/millennialmedia/InlineAd$RefreshRunnable;

    invoke-direct {v0, p0}, Lcom/millennialmedia/InlineAd$RefreshRunnable;-><init>(Lcom/millennialmedia/InlineAd;)V

    invoke-virtual {p0}, Lcom/millennialmedia/InlineAd;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/InlineAd;->p:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    .line 1015
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic e(Lcom/millennialmedia/InlineAd;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/millennialmedia/InlineAd;->d()V

    return-void
.end method

.method static synthetic e(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/millennialmedia/InlineAd;->e(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method private e(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 2

    .prologue
    .line 1251
    monitor-enter p0

    .line 1252
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->c:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compare(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1253
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1254
    sget-object v0, Lcom/millennialmedia/InlineAd;->e:Ljava/lang/String;

    const-string v1, "onExpanded called but request state is not valid"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    :cond_0
    monitor-exit p0

    .line 1276
    :cond_1
    :goto_0
    return-void

    .line 1259
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1261
    sget-object v0, Lcom/millennialmedia/InlineAd;->e:Ljava/lang/String;

    const-string v1, "Ad expanded"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/InlineAd;->t:Z

    .line 1263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/InlineAd;->s:Z

    .line 1266
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->g:Lcom/millennialmedia/InlineAd$InlineListener;

    .line 1267
    if-eqz v0, :cond_1

    .line 1268
    new-instance v1, Lcom/millennialmedia/InlineAd$10;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/InlineAd$10;-><init>(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/InlineAd$InlineListener;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1259
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic f(Lcom/millennialmedia/InlineAd;)Lcom/millennialmedia/internal/AdPlacement$RequestState;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->c:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1027
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->n:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v0, :cond_0

    .line 1028
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->n:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    invoke-interface {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    .line 1029
    iput-object v1, p0, Lcom/millennialmedia/InlineAd;->n:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    .line 1032
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->o:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v0, :cond_1

    .line 1033
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->o:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    invoke-interface {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    .line 1034
    iput-object v1, p0, Lcom/millennialmedia/InlineAd;->o:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    .line 1036
    :cond_1
    return-void
.end method

.method static synthetic f(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/millennialmedia/InlineAd;->f(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method private f(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 2

    .prologue
    .line 1281
    monitor-enter p0

    .line 1282
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->c:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compare(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1283
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1284
    sget-object v0, Lcom/millennialmedia/InlineAd;->e:Ljava/lang/String;

    const-string v1, "onCollapsed called but request state is not valid"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    :cond_0
    monitor-exit p0

    .line 1305
    :cond_1
    :goto_0
    return-void

    .line 1289
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1291
    sget-object v0, Lcom/millennialmedia/InlineAd;->e:Ljava/lang/String;

    const-string v1, "Ad collapsed"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/InlineAd;->t:Z

    .line 1295
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->g:Lcom/millennialmedia/InlineAd$InlineListener;

    .line 1296
    if-eqz v0, :cond_1

    .line 1297
    new-instance v1, Lcom/millennialmedia/InlineAd$11;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/InlineAd$11;-><init>(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/InlineAd$InlineListener;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1289
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic g(Lcom/millennialmedia/InlineAd;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->a:Ljava/lang/String;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 1380
    sget-object v0, Lcom/millennialmedia/InlineAd;->e:Ljava/lang/String;

    const-string v1, "Ad abort failed"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->i:Lcom/millennialmedia/InlineAd$InlineAbortListener;

    .line 1384
    if-eqz v0, :cond_0

    .line 1385
    new-instance v1, Lcom/millennialmedia/InlineAd$14;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/InlineAd$14;-><init>(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/InlineAd$InlineAbortListener;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    .line 1393
    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/millennialmedia/InlineAd;->d(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method private g(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 2

    .prologue
    .line 1310
    monitor-enter p0

    .line 1311
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->c:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compare(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1312
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1313
    sget-object v0, Lcom/millennialmedia/InlineAd;->e:Ljava/lang/String;

    const-string v1, "onAdLeftApplication called but request state is not valid"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    :cond_0
    monitor-exit p0

    .line 1333
    :cond_1
    :goto_0
    return-void

    .line 1318
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1320
    sget-object v0, Lcom/millennialmedia/InlineAd;->e:Ljava/lang/String;

    const-string v1, "Ad left application"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->g:Lcom/millennialmedia/InlineAd$InlineListener;

    .line 1324
    if-eqz v0, :cond_1

    .line 1325
    new-instance v1, Lcom/millennialmedia/InlineAd$12;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/InlineAd$12;-><init>(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/InlineAd$InlineListener;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1318
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic h(Lcom/millennialmedia/InlineAd;)Lcom/millennialmedia/internal/AdPlacement$RequestState;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->c:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    return-object v0
.end method

.method static synthetic h(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/millennialmedia/InlineAd;->g(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method private h(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 3

    .prologue
    .line 1338
    monitor-enter p0

    .line 1339
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->c:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compare(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1340
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1341
    sget-object v0, Lcom/millennialmedia/InlineAd;->e:Ljava/lang/String;

    const-string v1, "onAborted called but request state is not valid"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    :cond_0
    monitor-exit p0

    .line 1375
    :cond_1
    :goto_0
    return-void

    .line 1347
    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->a:Ljava/lang/String;

    const-string v1, "loading_ad_adapter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1348
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1349
    sget-object v0, Lcom/millennialmedia/InlineAd;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAborted called but placement state is not valid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/InlineAd;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    :cond_3
    monitor-exit p0

    goto :goto_0

    .line 1356
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1355
    :cond_4
    :try_start_1
    const-string v0, "aborted"

    iput-object v0, p0, Lcom/millennialmedia/InlineAd;->a:Ljava/lang/String;

    .line 1356
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1358
    sget-object v0, Lcom/millennialmedia/InlineAd;->e:Ljava/lang/String;

    const-string v1, "Ad aborted"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    invoke-virtual {p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/internal/AdPlacementReporter;->reportPlayList(Lcom/millennialmedia/internal/AdPlacementReporter;)V

    .line 1365
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->i:Lcom/millennialmedia/InlineAd$InlineAbortListener;

    .line 1366
    if-eqz v0, :cond_1

    .line 1367
    new-instance v1, Lcom/millennialmedia/InlineAd$13;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/InlineAd$13;-><init>(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/InlineAd$InlineAbortListener;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private h()Z
    .locals 2

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->a:Ljava/lang/String;

    const-string v1, "idle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->a:Ljava/lang/String;

    const-string v1, "load_failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->a:Ljava/lang/String;

    const-string v1, "loaded"

    .line 1400
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->a:Ljava/lang/String;

    const-string v1, "aborted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1402
    :cond_0
    const/4 v0, 0x0

    .line 1405
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic i(Lcom/millennialmedia/InlineAd;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->k:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic j(Lcom/millennialmedia/InlineAd;)Lcom/millennialmedia/InlineAd$InlineAdMetadata;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->j:Lcom/millennialmedia/InlineAd$InlineAdMetadata;

    return-object v0
.end method

.method static synthetic k(Lcom/millennialmedia/InlineAd;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/millennialmedia/InlineAd;->u:Z

    return v0
.end method

.method static synthetic l(Lcom/millennialmedia/InlineAd;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/millennialmedia/InlineAd;->g()V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 993
    invoke-virtual {p0}, Lcom/millennialmedia/InlineAd;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 994
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->m:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getMinInlineRefreshRate()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 996
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->m:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public abort(Lcom/millennialmedia/InlineAd$InlineAbortListener;)V
    .locals 3

    .prologue
    .line 610
    sget-object v0, Lcom/millennialmedia/InlineAd;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to abort playlist request for placement ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/InlineAd;->placementId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    iput-object p1, p0, Lcom/millennialmedia/InlineAd;->i:Lcom/millennialmedia/InlineAd$InlineAbortListener;

    .line 614
    monitor-enter p0

    .line 615
    :try_start_0
    invoke-direct {p0}, Lcom/millennialmedia/InlineAd;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 616
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    sget-object v0, Lcom/millennialmedia/InlineAd;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Aborting playlist request for placement ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/InlineAd;->placementId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/InlineAd;->u:Z

    .line 622
    monitor-exit p0

    .line 627
    :goto_0
    return-void

    .line 624
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 626
    invoke-direct {p0}, Lcom/millennialmedia/InlineAd;->g()V

    goto :goto_0

    .line 624
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method b()Z
    .locals 1

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->m:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->m:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public request(Lcom/millennialmedia/InlineAd$InlineAdMetadata;)V
    .locals 3

    .prologue
    .line 589
    sget-object v0, Lcom/millennialmedia/InlineAd;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requesting playlist for placement ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/InlineAd;->placementId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    iput-object p1, p0, Lcom/millennialmedia/InlineAd;->j:Lcom/millennialmedia/InlineAd$InlineAdMetadata;

    .line 592
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/InlineAd;->r:Z

    .line 594
    invoke-direct {p0}, Lcom/millennialmedia/InlineAd;->d()V

    .line 595
    invoke-direct {p0}, Lcom/millennialmedia/InlineAd;->e()V

    .line 596
    return-void
.end method

.method public setListener(Lcom/millennialmedia/InlineAd$InlineListener;)V
    .locals 0

    .prologue
    .line 969
    iput-object p1, p0, Lcom/millennialmedia/InlineAd;->g:Lcom/millennialmedia/InlineAd$InlineListener;

    .line 970
    return-void
.end method

.method public setRefreshInterval(I)V
    .locals 1

    .prologue
    .line 983
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/InlineAd;->m:Ljava/lang/Integer;

    .line 985
    iget-boolean v0, p0, Lcom/millennialmedia/InlineAd;->r:Z

    if-eqz v0, :cond_0

    .line 986
    invoke-direct {p0}, Lcom/millennialmedia/InlineAd;->e()V

    .line 988
    :cond_0
    return-void
.end method
