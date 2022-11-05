.class Lcom/apprupt/sdk/CvConfig$4;
.super Ljava/lang/Object;
.source "CvConfig.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvConfig;->a(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/apprupt/sdk/CvConfig;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvConfig;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/apprupt/sdk/CvConfig$4;->b:Lcom/apprupt/sdk/CvConfig;

    iput-object p2, p0, Lcom/apprupt/sdk/CvConfig$4;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 105
    iget-object v2, p0, Lcom/apprupt/sdk/CvConfig$4;->b:Lcom/apprupt/sdk/CvConfig;

    monitor-enter v2

    .line 106
    :try_start_0
    iget-object v3, p0, Lcom/apprupt/sdk/CvConfig$4;->b:Lcom/apprupt/sdk/CvConfig;

    invoke-static {v3}, Lcom/apprupt/sdk/CvConfig;->a(Lcom/apprupt/sdk/CvConfig;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "do check..."

    aput-object v6, v4, v5

    invoke-interface {v3, v4}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 107
    iget-object v3, p0, Lcom/apprupt/sdk/CvConfig$4;->b:Lcom/apprupt/sdk/CvConfig;

    invoke-static {v3}, Lcom/apprupt/sdk/CvConfig;->e(Lcom/apprupt/sdk/CvConfig;)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gtz v3, :cond_1

    .line 108
    :goto_0
    iget-object v1, p0, Lcom/apprupt/sdk/CvConfig$4;->b:Lcom/apprupt/sdk/CvConfig;

    invoke-static {v1}, Lcom/apprupt/sdk/CvConfig;->d(Lcom/apprupt/sdk/CvConfig;)Lcom/apprupt/sdk/Q;

    move-result-object v1

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig$4;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig$4;->b:Lcom/apprupt/sdk/CvConfig;

    invoke-static {v0}, Lcom/apprupt/sdk/CvConfig;->f(Lcom/apprupt/sdk/CvConfig;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/apprupt/sdk/CvConfig$4;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 110
    :cond_0
    monitor-exit v2

    .line 115
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 107
    goto :goto_0

    .line 112
    :cond_2
    iget-object v1, p0, Lcom/apprupt/sdk/CvConfig$4;->a:Ljava/lang/Runnable;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/apprupt/sdk/CvConfig$4;->b:Lcom/apprupt/sdk/CvConfig;

    invoke-static {v1}, Lcom/apprupt/sdk/CvConfig;->g(Lcom/apprupt/sdk/CvConfig;)Ljava/util/Queue;

    move-result-object v1

    iget-object v3, p0, Lcom/apprupt/sdk/CvConfig$4;->a:Ljava/lang/Runnable;

    invoke-interface {v1, v3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 113
    :cond_3
    iget-object v1, p0, Lcom/apprupt/sdk/CvConfig$4;->b:Lcom/apprupt/sdk/CvConfig;

    invoke-static {v1}, Lcom/apprupt/sdk/CvConfig;->h(Lcom/apprupt/sdk/CvConfig;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/apprupt/sdk/CvConfig$4;->b:Lcom/apprupt/sdk/CvConfig;

    invoke-static {v1}, Lcom/apprupt/sdk/CvConfig;->d(Lcom/apprupt/sdk/CvConfig;)Lcom/apprupt/sdk/Q;

    move-result-object v1

    if-nez v1, :cond_4

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig$4;->b:Lcom/apprupt/sdk/CvConfig;

    invoke-static {v0}, Lcom/apprupt/sdk/CvConfig;->i(Lcom/apprupt/sdk/CvConfig;)V

    .line 114
    :cond_4
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
