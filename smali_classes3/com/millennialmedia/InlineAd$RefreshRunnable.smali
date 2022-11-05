.class Lcom/millennialmedia/InlineAd$RefreshRunnable;
.super Ljava/lang/Object;
.source "InlineAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/InlineAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RefreshRunnable"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/InlineAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/millennialmedia/InlineAd;)V
    .locals 1

    .prologue
    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 486
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/InlineAd$RefreshRunnable;->a:Ljava/lang/ref/WeakReference;

    .line 487
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 493
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$RefreshRunnable;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/InlineAd;

    .line 494
    if-nez v0, :cond_0

    .line 495
    invoke-static {}, Lcom/millennialmedia/InlineAd;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InlineAd instance has been destroyed, shutting down refresh behavior"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    :goto_0
    return-void

    .line 500
    :cond_0
    invoke-static {v0}, Lcom/millennialmedia/InlineAd;->a(Lcom/millennialmedia/InlineAd;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 501
    if-nez v1, :cond_1

    .line 502
    invoke-static {}, Lcom/millennialmedia/InlineAd;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InlineAd container has been destroyed, shutting down refresh behavior"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 507
    :cond_1
    invoke-virtual {v0}, Lcom/millennialmedia/InlineAd;->b()Z

    move-result v2

    if-nez v2, :cond_3

    .line 508
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 509
    invoke-static {}, Lcom/millennialmedia/InlineAd;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Inline refresh disabled, aborting refresh behavior"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    :cond_2
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/millennialmedia/InlineAd;->a(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    goto :goto_0

    .line 514
    :cond_3
    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ViewUtils;->getActivityForView(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v2

    .line 515
    if-nez v2, :cond_4

    .line 516
    invoke-static {}, Lcom/millennialmedia/InlineAd;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unable to find valid activity context for placement container, aborting refresh"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 521
    :cond_4
    invoke-static {v2}, Lcom/millennialmedia/internal/ActivityListenerManager;->getLifecycleState(Landroid/app/Activity;)Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    move-result-object v2

    sget-object v5, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;->RESUMED:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    if-ne v2, v5, :cond_8

    move v2, v3

    .line 527
    :goto_1
    invoke-static {v0}, Lcom/millennialmedia/InlineAd;->b(Lcom/millennialmedia/InlineAd;)Lcom/millennialmedia/InlineAd$ImpressionListener;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 528
    invoke-static {v0}, Lcom/millennialmedia/InlineAd;->b(Lcom/millennialmedia/InlineAd;)Lcom/millennialmedia/InlineAd$ImpressionListener;

    move-result-object v5

    iget-boolean v5, v5, Lcom/millennialmedia/InlineAd$ImpressionListener;->d:Z

    if-eqz v5, :cond_6

    :cond_5
    move v4, v3

    .line 530
    :cond_6
    invoke-virtual {v1}, Landroid/view/ViewGroup;->isShown()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {v0}, Lcom/millennialmedia/InlineAd;->c(Lcom/millennialmedia/InlineAd;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {v0}, Lcom/millennialmedia/InlineAd;->d(Lcom/millennialmedia/InlineAd;)Z

    move-result v1

    if-nez v1, :cond_7

    if-eqz v2, :cond_7

    if-eqz v4, :cond_7

    .line 533
    new-instance v1, Lcom/millennialmedia/InlineAd$RefreshRunnable$1;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/InlineAd$RefreshRunnable$1;-><init>(Lcom/millennialmedia/InlineAd$RefreshRunnable;Lcom/millennialmedia/InlineAd;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 542
    :cond_7
    invoke-virtual {v0}, Lcom/millennialmedia/InlineAd;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v2, v1

    invoke-static {p0, v2, v3}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/InlineAd;->a(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    goto/16 :goto_0

    :cond_8
    move v2, v4

    .line 521
    goto :goto_1
.end method
