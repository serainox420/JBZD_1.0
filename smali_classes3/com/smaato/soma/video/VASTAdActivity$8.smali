.class Lcom/smaato/soma/video/VASTAdActivity$8;
.super Lcom/smaato/soma/l;
.source "VASTAdActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/video/VASTAdActivity;->onPause()V
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
.field final synthetic a:Lcom/smaato/soma/video/VASTAdActivity;


# direct methods
.method constructor <init>(Lcom/smaato/soma/video/VASTAdActivity;)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lcom/smaato/soma/video/VASTAdActivity$8;->a:Lcom/smaato/soma/video/VASTAdActivity;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 437
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity$8;->a:Lcom/smaato/soma/video/VASTAdActivity;

    iget-object v0, v0, Lcom/smaato/soma/video/VASTAdActivity;->a:Lcom/smaato/soma/video/c;

    invoke-virtual {v0}, Lcom/smaato/soma/video/c;->pause()V

    .line 438
    iget-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity$8;->a:Lcom/smaato/soma/video/VASTAdActivity;

    iget-object v0, v0, Lcom/smaato/soma/video/VASTAdActivity;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 439
    iget-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity$8;->a:Lcom/smaato/soma/video/VASTAdActivity;

    iget-object v0, v0, Lcom/smaato/soma/video/VASTAdActivity;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 440
    iget-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity$8;->a:Lcom/smaato/soma/video/VASTAdActivity;

    iget-object v0, v0, Lcom/smaato/soma/video/VASTAdActivity;->a:Lcom/smaato/soma/video/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smaato/soma/video/c;->setRewardedVideo(Z)V

    .line 441
    iget-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity$8;->a:Lcom/smaato/soma/video/VASTAdActivity;

    iget-object v0, v0, Lcom/smaato/soma/video/VASTAdActivity;->a:Lcom/smaato/soma/video/c;

    invoke-virtual {v0}, Lcom/smaato/soma/video/c;->destroyDrawingCache()V

    .line 442
    iget-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity$8;->a:Lcom/smaato/soma/video/VASTAdActivity;

    iget-object v0, v0, Lcom/smaato/soma/video/VASTAdActivity;->a:Lcom/smaato/soma/video/c;

    invoke-virtual {v0}, Lcom/smaato/soma/video/c;->e()V

    .line 443
    iget-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity$8;->a:Lcom/smaato/soma/video/VASTAdActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smaato/soma/video/VASTAdActivity;->a(Lcom/smaato/soma/video/VASTAdActivity;Lcom/smaato/soma/internal/d/b;)Lcom/smaato/soma/internal/d/b;

    .line 444
    iget-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity$8;->a:Lcom/smaato/soma/video/VASTAdActivity;

    invoke-virtual {v0}, Lcom/smaato/soma/video/VASTAdActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :goto_0
    return-object v2

    .line 445
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/smaato/soma/video/VASTAdActivity$8;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
