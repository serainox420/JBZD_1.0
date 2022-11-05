.class Lcom/millennialmedia/InlineAd$ImpressionListener$1;
.super Ljava/lang/Object;
.source "InlineAd.java"

# interfaces
.implements Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/InlineAd$ImpressionListener;-><init>(Lcom/millennialmedia/InlineAd;Landroid/view/View;JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/millennialmedia/InlineAd$ImpressionListener;


# direct methods
.method constructor <init>(Lcom/millennialmedia/InlineAd$ImpressionListener;J)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/millennialmedia/InlineAd$ImpressionListener$1;->b:Lcom/millennialmedia/InlineAd$ImpressionListener;

    iput-wide p2, p0, Lcom/millennialmedia/InlineAd$ImpressionListener$1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewableChanged(Landroid/view/View;Z)V
    .locals 6

    .prologue
    .line 325
    iget-object v1, p0, Lcom/millennialmedia/InlineAd$ImpressionListener$1;->b:Lcom/millennialmedia/InlineAd$ImpressionListener;

    monitor-enter v1

    .line 326
    if-eqz p2, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$ImpressionListener$1;->b:Lcom/millennialmedia/InlineAd$ImpressionListener;

    iget-object v0, v0, Lcom/millennialmedia/InlineAd$ImpressionListener;->c:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/InlineAd$ImpressionListener$1;->b:Lcom/millennialmedia/InlineAd$ImpressionListener;

    iget-boolean v0, v0, Lcom/millennialmedia/InlineAd$ImpressionListener;->d:Z

    if-nez v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$ImpressionListener$1;->b:Lcom/millennialmedia/InlineAd$ImpressionListener;

    new-instance v2, Lcom/millennialmedia/InlineAd$ImpressionListener$1$1;

    invoke-direct {v2, p0}, Lcom/millennialmedia/InlineAd$ImpressionListener$1$1;-><init>(Lcom/millennialmedia/InlineAd$ImpressionListener$1;)V

    iget-wide v4, p0, Lcom/millennialmedia/InlineAd$ImpressionListener$1;->a:J

    invoke-static {v2, v4, v5}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object v2

    iput-object v2, v0, Lcom/millennialmedia/InlineAd$ImpressionListener;->c:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    .line 363
    :cond_0
    :goto_0
    monitor-exit v1

    .line 364
    return-void

    .line 359
    :cond_1
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/InlineAd$ImpressionListener$1;->b:Lcom/millennialmedia/InlineAd$ImpressionListener;

    iget-object v0, v0, Lcom/millennialmedia/InlineAd$ImpressionListener;->c:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$ImpressionListener$1;->b:Lcom/millennialmedia/InlineAd$ImpressionListener;

    iget-object v0, v0, Lcom/millennialmedia/InlineAd$ImpressionListener;->c:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    invoke-interface {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    .line 361
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$ImpressionListener$1;->b:Lcom/millennialmedia/InlineAd$ImpressionListener;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/millennialmedia/InlineAd$ImpressionListener;->c:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    goto :goto_0

    .line 363
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
