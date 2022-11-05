.class Lcom/smaato/soma/video/c$5;
.super Lcom/smaato/soma/l;
.source "VASTView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/video/c;->onCompletion(Landroid/media/MediaPlayer;)V
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
    .line 315
    iput-object p1, p0, Lcom/smaato/soma/video/c$5;->a:Lcom/smaato/soma/video/c;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 320
    iget-object v0, p0, Lcom/smaato/soma/video/c$5;->a:Lcom/smaato/soma/video/c;

    invoke-static {v0, v1}, Lcom/smaato/soma/video/c;->d(Lcom/smaato/soma/video/c;Z)Z

    .line 321
    new-instance v0, Lcom/smaato/soma/internal/c/e;

    invoke-direct {v0}, Lcom/smaato/soma/internal/c/e;-><init>()V

    new-array v1, v1, [Ljava/util/Vector;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/smaato/soma/video/c$5;->a:Lcom/smaato/soma/video/c;

    invoke-static {v3}, Lcom/smaato/soma/video/c;->d(Lcom/smaato/soma/video/c;)Lcom/smaato/soma/internal/d/c;

    move-result-object v3

    const-string v4, "complete"

    invoke-virtual {v3, v4}, Lcom/smaato/soma/internal/d/c;->c(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/c/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 323
    iget-object v0, p0, Lcom/smaato/soma/video/c$5;->a:Lcom/smaato/soma/video/c;

    invoke-virtual {v0}, Lcom/smaato/soma/video/c;->getRewardedVideoListener()Lcom/smaato/soma/video/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smaato/soma/video/c$5;->a:Lcom/smaato/soma/video/c;

    invoke-virtual {v0}, Lcom/smaato/soma/video/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/smaato/soma/video/c$5;->a:Lcom/smaato/soma/video/c;

    invoke-virtual {v0}, Lcom/smaato/soma/video/c;->getRewardedVideoListener()Lcom/smaato/soma/video/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smaato/soma/video/a;->e()V

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/video/c$5;->a:Lcom/smaato/soma/video/c;

    invoke-static {v0}, Lcom/smaato/soma/video/c;->k(Lcom/smaato/soma/video/c;)Lcom/smaato/soma/video/c$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/smaato/soma/video/c$5;->a:Lcom/smaato/soma/video/c;

    invoke-static {v0}, Lcom/smaato/soma/video/c;->k(Lcom/smaato/soma/video/c;)Lcom/smaato/soma/video/c$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smaato/soma/video/c$a;->d()V

    .line 331
    :cond_1
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
    .line 315
    invoke-virtual {p0}, Lcom/smaato/soma/video/c$5;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
