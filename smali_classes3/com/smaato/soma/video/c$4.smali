.class Lcom/smaato/soma/video/c$4;
.super Lcom/smaato/soma/l;
.source "VASTView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/video/c;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smaato/soma/l",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/video/c;


# direct methods
.method constructor <init>(Lcom/smaato/soma/video/c;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/smaato/soma/video/c$4;->a:Lcom/smaato/soma/video/c;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 277
    iget-object v0, p0, Lcom/smaato/soma/video/c$4;->a:Lcom/smaato/soma/video/c;

    invoke-static {v0, v6}, Lcom/smaato/soma/video/c;->d(Lcom/smaato/soma/video/c;Z)Z

    .line 279
    iget-object v0, p0, Lcom/smaato/soma/video/c$4;->a:Lcom/smaato/soma/video/c;

    invoke-static {v0}, Lcom/smaato/soma/video/c;->d(Lcom/smaato/soma/video/c;)Lcom/smaato/soma/internal/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/d/c;->h()Ljava/util/Vector;

    move-result-object v0

    .line 280
    iget-object v1, p0, Lcom/smaato/soma/video/c$4;->a:Lcom/smaato/soma/video/c;

    invoke-static {v1}, Lcom/smaato/soma/video/c;->d(Lcom/smaato/soma/video/c;)Lcom/smaato/soma/internal/d/c;

    move-result-object v1

    const-string v2, "start"

    invoke-virtual {v1, v2}, Lcom/smaato/soma/internal/d/c;->c(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v1

    .line 281
    iget-object v2, p0, Lcom/smaato/soma/video/c$4;->a:Lcom/smaato/soma/video/c;

    invoke-static {v2}, Lcom/smaato/soma/video/c;->d(Lcom/smaato/soma/video/c;)Lcom/smaato/soma/internal/d/c;

    move-result-object v2

    const-string v3, "fullscreen"

    invoke-virtual {v2, v3}, Lcom/smaato/soma/internal/d/c;->c(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v2

    .line 283
    iget-object v3, p0, Lcom/smaato/soma/video/c$4;->a:Lcom/smaato/soma/video/c;

    invoke-static {v3}, Lcom/smaato/soma/video/c;->g(Lcom/smaato/soma/video/c;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 284
    new-instance v3, Lcom/smaato/soma/internal/c/e;

    invoke-direct {v3}, Lcom/smaato/soma/internal/c/e;-><init>()V

    new-array v4, v5, [Ljava/util/Vector;

    aput-object v0, v4, v6

    invoke-virtual {v3, v4}, Lcom/smaato/soma/internal/c/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 285
    iget-object v0, p0, Lcom/smaato/soma/video/c$4;->a:Lcom/smaato/soma/video/c;

    invoke-static {v0, v5}, Lcom/smaato/soma/video/c;->e(Lcom/smaato/soma/video/c;Z)Z

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/video/c$4;->a:Lcom/smaato/soma/video/c;

    invoke-static {v0}, Lcom/smaato/soma/video/c;->h(Lcom/smaato/soma/video/c;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 289
    new-instance v0, Lcom/smaato/soma/internal/c/e;

    invoke-direct {v0}, Lcom/smaato/soma/internal/c/e;-><init>()V

    new-array v3, v5, [Ljava/util/Vector;

    aput-object v1, v3, v6

    invoke-virtual {v0, v3}, Lcom/smaato/soma/internal/c/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 290
    iget-object v0, p0, Lcom/smaato/soma/video/c$4;->a:Lcom/smaato/soma/video/c;

    invoke-static {v0, v5}, Lcom/smaato/soma/video/c;->f(Lcom/smaato/soma/video/c;Z)Z

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/smaato/soma/video/c$4;->a:Lcom/smaato/soma/video/c;

    invoke-static {v0}, Lcom/smaato/soma/video/c;->i(Lcom/smaato/soma/video/c;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 294
    new-instance v0, Lcom/smaato/soma/internal/c/e;

    invoke-direct {v0}, Lcom/smaato/soma/internal/c/e;-><init>()V

    new-array v1, v5, [Ljava/util/Vector;

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/c/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 295
    iget-object v0, p0, Lcom/smaato/soma/video/c$4;->a:Lcom/smaato/soma/video/c;

    invoke-static {v0, v5}, Lcom/smaato/soma/video/c;->g(Lcom/smaato/soma/video/c;Z)Z

    .line 298
    :cond_2
    iget-object v0, p0, Lcom/smaato/soma/video/c$4;->a:Lcom/smaato/soma/video/c;

    invoke-virtual {v0}, Lcom/smaato/soma/video/c;->getRewardedVideoListener()Lcom/smaato/soma/video/a;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 299
    iget-object v0, p0, Lcom/smaato/soma/video/c$4;->a:Lcom/smaato/soma/video/c;

    invoke-virtual {v0}, Lcom/smaato/soma/video/c;->getRewardedVideoListener()Lcom/smaato/soma/video/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smaato/soma/video/a;->a()V

    .line 302
    :cond_3
    iget-object v0, p0, Lcom/smaato/soma/video/c$4;->a:Lcom/smaato/soma/video/c;

    invoke-static {v0}, Lcom/smaato/soma/video/c;->j(Lcom/smaato/soma/video/c;)V

    .line 303
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/smaato/soma/video/c$4;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
