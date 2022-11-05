.class Lcom/smaato/soma/video/c$3$1;
.super Ljava/lang/Object;
.source "VASTView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/video/c$3;->a()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/video/c$3;


# direct methods
.method constructor <init>(Lcom/smaato/soma/video/c$3;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/smaato/soma/video/c$3$1;->a:Lcom/smaato/soma/video/c$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 234
    iget-object v0, p0, Lcom/smaato/soma/video/c$3$1;->a:Lcom/smaato/soma/video/c$3;

    iget-object v0, v0, Lcom/smaato/soma/video/c$3;->a:Lcom/smaato/soma/video/c;

    invoke-virtual {v0}, Lcom/smaato/soma/video/c;->getCurrentPosition()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    .line 235
    iget-object v2, p0, Lcom/smaato/soma/video/c$3$1;->a:Lcom/smaato/soma/video/c$3;

    iget-object v2, v2, Lcom/smaato/soma/video/c$3;->a:Lcom/smaato/soma/video/c;

    invoke-static {v2}, Lcom/smaato/soma/video/c;->b(Lcom/smaato/soma/video/c;)J

    move-result-wide v2

    const-wide/16 v4, 0x4

    div-long/2addr v2, v4

    .line 236
    const-wide/16 v4, 0x3

    mul-long/2addr v4, v2

    cmp-long v4, v0, v4

    if-ltz v4, :cond_1

    iget-object v4, p0, Lcom/smaato/soma/video/c$3$1;->a:Lcom/smaato/soma/video/c$3;

    iget-object v4, v4, Lcom/smaato/soma/video/c$3;->a:Lcom/smaato/soma/video/c;

    invoke-static {v4}, Lcom/smaato/soma/video/c;->c(Lcom/smaato/soma/video/c;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 237
    new-instance v0, Lcom/smaato/soma/internal/c/e;

    invoke-direct {v0}, Lcom/smaato/soma/internal/c/e;-><init>()V

    new-array v1, v6, [Ljava/util/Vector;

    iget-object v2, p0, Lcom/smaato/soma/video/c$3$1;->a:Lcom/smaato/soma/video/c$3;

    iget-object v2, v2, Lcom/smaato/soma/video/c$3;->a:Lcom/smaato/soma/video/c;

    invoke-static {v2}, Lcom/smaato/soma/video/c;->d(Lcom/smaato/soma/video/c;)Lcom/smaato/soma/internal/d/c;

    move-result-object v2

    const-string v3, "thirdQuartile"

    invoke-virtual {v2, v3}, Lcom/smaato/soma/internal/d/c;->c(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/c/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 238
    iget-object v0, p0, Lcom/smaato/soma/video/c$3$1;->a:Lcom/smaato/soma/video/c$3;

    iget-object v0, v0, Lcom/smaato/soma/video/c$3;->a:Lcom/smaato/soma/video/c;

    invoke-static {v0, v6}, Lcom/smaato/soma/video/c;->a(Lcom/smaato/soma/video/c;Z)Z

    .line 239
    iget-object v0, p0, Lcom/smaato/soma/video/c$3$1;->a:Lcom/smaato/soma/video/c$3;

    iget-object v0, v0, Lcom/smaato/soma/video/c$3;->a:Lcom/smaato/soma/video/c;

    iget-object v0, v0, Lcom/smaato/soma/video/c;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 240
    iget-object v0, p0, Lcom/smaato/soma/video/c$3$1;->a:Lcom/smaato/soma/video/c$3;

    iget-object v0, v0, Lcom/smaato/soma/video/c$3;->a:Lcom/smaato/soma/video/c;

    invoke-virtual {v0}, Lcom/smaato/soma/video/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/smaato/soma/video/c$3$1;->a:Lcom/smaato/soma/video/c$3;

    iget-object v0, v0, Lcom/smaato/soma/video/c$3;->a:Lcom/smaato/soma/video/c;

    invoke-virtual {v0}, Lcom/smaato/soma/video/c;->getRewardedVideoListener()Lcom/smaato/soma/video/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smaato/soma/video/a;->d()V

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    const-wide/16 v4, 0x2

    mul-long/2addr v4, v2

    cmp-long v4, v0, v4

    if-ltz v4, :cond_2

    iget-object v4, p0, Lcom/smaato/soma/video/c$3$1;->a:Lcom/smaato/soma/video/c$3;

    iget-object v4, v4, Lcom/smaato/soma/video/c$3;->a:Lcom/smaato/soma/video/c;

    invoke-static {v4}, Lcom/smaato/soma/video/c;->e(Lcom/smaato/soma/video/c;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 244
    new-instance v0, Lcom/smaato/soma/internal/c/e;

    invoke-direct {v0}, Lcom/smaato/soma/internal/c/e;-><init>()V

    new-array v1, v6, [Ljava/util/Vector;

    iget-object v2, p0, Lcom/smaato/soma/video/c$3$1;->a:Lcom/smaato/soma/video/c$3;

    iget-object v2, v2, Lcom/smaato/soma/video/c$3;->a:Lcom/smaato/soma/video/c;

    invoke-static {v2}, Lcom/smaato/soma/video/c;->d(Lcom/smaato/soma/video/c;)Lcom/smaato/soma/internal/d/c;

    move-result-object v2

    const-string v3, "midpoint"

    invoke-virtual {v2, v3}, Lcom/smaato/soma/internal/d/c;->c(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/c/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 245
    iget-object v0, p0, Lcom/smaato/soma/video/c$3$1;->a:Lcom/smaato/soma/video/c$3;

    iget-object v0, v0, Lcom/smaato/soma/video/c$3;->a:Lcom/smaato/soma/video/c;

    invoke-static {v0, v6}, Lcom/smaato/soma/video/c;->b(Lcom/smaato/soma/video/c;Z)Z

    .line 246
    iget-object v0, p0, Lcom/smaato/soma/video/c$3$1;->a:Lcom/smaato/soma/video/c$3;

    iget-object v0, v0, Lcom/smaato/soma/video/c$3;->a:Lcom/smaato/soma/video/c;

    iget-object v0, v0, Lcom/smaato/soma/video/c;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 247
    iget-object v0, p0, Lcom/smaato/soma/video/c$3$1;->a:Lcom/smaato/soma/video/c$3;

    iget-object v0, v0, Lcom/smaato/soma/video/c$3;->a:Lcom/smaato/soma/video/c;

    invoke-virtual {v0}, Lcom/smaato/soma/video/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/smaato/soma/video/c$3$1;->a:Lcom/smaato/soma/video/c$3;

    iget-object v0, v0, Lcom/smaato/soma/video/c$3;->a:Lcom/smaato/soma/video/c;

    invoke-virtual {v0}, Lcom/smaato/soma/video/c;->getRewardedVideoListener()Lcom/smaato/soma/video/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smaato/soma/video/a;->c()V

    goto :goto_0

    .line 250
    :cond_2
    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/smaato/soma/video/c$3$1;->a:Lcom/smaato/soma/video/c$3;

    iget-object v0, v0, Lcom/smaato/soma/video/c$3;->a:Lcom/smaato/soma/video/c;

    invoke-static {v0}, Lcom/smaato/soma/video/c;->f(Lcom/smaato/soma/video/c;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 251
    new-instance v0, Lcom/smaato/soma/internal/c/e;

    invoke-direct {v0}, Lcom/smaato/soma/internal/c/e;-><init>()V

    new-array v1, v6, [Ljava/util/Vector;

    iget-object v2, p0, Lcom/smaato/soma/video/c$3$1;->a:Lcom/smaato/soma/video/c$3;

    iget-object v2, v2, Lcom/smaato/soma/video/c$3;->a:Lcom/smaato/soma/video/c;

    invoke-static {v2}, Lcom/smaato/soma/video/c;->d(Lcom/smaato/soma/video/c;)Lcom/smaato/soma/internal/d/c;

    move-result-object v2

    const-string v3, "firstQuartile"

    invoke-virtual {v2, v3}, Lcom/smaato/soma/internal/d/c;->c(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/c/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 252
    iget-object v0, p0, Lcom/smaato/soma/video/c$3$1;->a:Lcom/smaato/soma/video/c$3;

    iget-object v0, v0, Lcom/smaato/soma/video/c$3;->a:Lcom/smaato/soma/video/c;

    invoke-static {v0, v6}, Lcom/smaato/soma/video/c;->c(Lcom/smaato/soma/video/c;Z)Z

    .line 253
    iget-object v0, p0, Lcom/smaato/soma/video/c$3$1;->a:Lcom/smaato/soma/video/c$3;

    iget-object v0, v0, Lcom/smaato/soma/video/c$3;->a:Lcom/smaato/soma/video/c;

    iget-object v0, v0, Lcom/smaato/soma/video/c;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 254
    iget-object v0, p0, Lcom/smaato/soma/video/c$3$1;->a:Lcom/smaato/soma/video/c$3;

    iget-object v0, v0, Lcom/smaato/soma/video/c$3;->a:Lcom/smaato/soma/video/c;

    invoke-virtual {v0}, Lcom/smaato/soma/video/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/smaato/soma/video/c$3$1;->a:Lcom/smaato/soma/video/c$3;

    iget-object v0, v0, Lcom/smaato/soma/video/c$3;->a:Lcom/smaato/soma/video/c;

    invoke-virtual {v0}, Lcom/smaato/soma/video/c;->getRewardedVideoListener()Lcom/smaato/soma/video/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smaato/soma/video/a;->b()V

    goto/16 :goto_0

    .line 258
    :cond_3
    iget-object v0, p0, Lcom/smaato/soma/video/c$3$1;->a:Lcom/smaato/soma/video/c$3;

    iget-object v0, v0, Lcom/smaato/soma/video/c$3;->a:Lcom/smaato/soma/video/c;

    iget-object v0, v0, Lcom/smaato/soma/video/c;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method
