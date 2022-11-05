.class Lcom/millennialmedia/NativeAd$ImpressionReporter;
.super Ljava/lang/Object;
.source "NativeAd.java"

# interfaces
.implements Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/NativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImpressionReporter"
.end annotation


# instance fields
.field a:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

.field volatile b:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

.field final c:Lcom/millennialmedia/NativeAd;

.field final d:Landroid/view/View;

.field final e:J


# direct methods
.method constructor <init>(Lcom/millennialmedia/NativeAd;Landroid/view/View;J)V
    .locals 1

    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput-object p1, p0, Lcom/millennialmedia/NativeAd$ImpressionReporter;->c:Lcom/millennialmedia/NativeAd;

    .line 239
    iput-object p2, p0, Lcom/millennialmedia/NativeAd$ImpressionReporter;->d:Landroid/view/View;

    .line 240
    iput-wide p3, p0, Lcom/millennialmedia/NativeAd$ImpressionReporter;->e:J

    .line 241
    return-void
.end method

.method private a(Lcom/millennialmedia/NativeAd;)V
    .locals 4

    .prologue
    .line 286
    new-instance v0, Lcom/millennialmedia/NativeAd$ImpressionReporter$1;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/NativeAd$ImpressionReporter$1;-><init>(Lcom/millennialmedia/NativeAd$ImpressionReporter;Lcom/millennialmedia/NativeAd;)V

    iget-wide v2, p0, Lcom/millennialmedia/NativeAd$ImpressionReporter;->e:J

    invoke-static {v0, v2, v3}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/NativeAd$ImpressionReporter;->b:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    .line 309
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/millennialmedia/NativeAd$ImpressionReporter;->b:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v0, :cond_0

    .line 315
    invoke-static {}, Lcom/millennialmedia/NativeAd;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cancelling previous impression timer runnable"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/millennialmedia/NativeAd$ImpressionReporter;->b:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    invoke-interface {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    .line 317
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/NativeAd$ImpressionReporter;->b:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    .line 319
    :cond_0
    return-void
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/millennialmedia/NativeAd$ImpressionReporter;->b:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/millennialmedia/NativeAd$ImpressionReporter;->a:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    if-nez v0, :cond_0

    .line 247
    new-instance v0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    iget-object v1, p0, Lcom/millennialmedia/NativeAd$ImpressionReporter;->d:Landroid/view/View;

    invoke-direct {v0, v1, p0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;-><init>(Landroid/view/View;Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;)V

    iput-object v0, p0, Lcom/millennialmedia/NativeAd$ImpressionReporter;->a:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/NativeAd$ImpressionReporter;->a:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->setMinViewabilityPercent(I)V

    .line 251
    iget-object v0, p0, Lcom/millennialmedia/NativeAd$ImpressionReporter;->a:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->startWatching()V

    .line 252
    return-void
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 257
    monitor-enter p0

    .line 258
    :try_start_0
    invoke-direct {p0}, Lcom/millennialmedia/NativeAd$ImpressionReporter;->b()V

    .line 260
    iget-object v0, p0, Lcom/millennialmedia/NativeAd$ImpressionReporter;->a:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    if-eqz v0, :cond_0

    .line 261
    invoke-static {}, Lcom/millennialmedia/NativeAd;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Stopping previous impression viewability watcher"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/millennialmedia/NativeAd$ImpressionReporter;->a:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->stopWatching()V

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/NativeAd$ImpressionReporter;->a:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    .line 265
    :cond_0
    monitor-exit p0

    .line 266
    return-void

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onViewableChanged(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 272
    monitor-enter p0

    .line 274
    if-eqz p2, :cond_1

    :try_start_0
    invoke-direct {p0}, Lcom/millennialmedia/NativeAd$ImpressionReporter;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/NativeAd$ImpressionReporter;->c:Lcom/millennialmedia/NativeAd;

    invoke-static {v0}, Lcom/millennialmedia/NativeAd;->a(Lcom/millennialmedia/NativeAd;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/millennialmedia/NativeAd$ImpressionReporter;->c:Lcom/millennialmedia/NativeAd;

    invoke-direct {p0, v0}, Lcom/millennialmedia/NativeAd$ImpressionReporter;->a(Lcom/millennialmedia/NativeAd;)V

    .line 280
    :cond_0
    :goto_0
    monitor-exit p0

    .line 281
    return-void

    .line 277
    :cond_1
    if-nez p2, :cond_0

    .line 278
    invoke-direct {p0}, Lcom/millennialmedia/NativeAd$ImpressionReporter;->b()V

    goto :goto_0

    .line 280
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
