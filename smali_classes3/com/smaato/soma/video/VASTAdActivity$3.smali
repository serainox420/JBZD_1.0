.class Lcom/smaato/soma/video/VASTAdActivity$3;
.super Lcom/smaato/soma/l;
.source "VASTAdActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/video/VASTAdActivity;->d()V
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
    .line 260
    iput-object p1, p0, Lcom/smaato/soma/video/VASTAdActivity$3;->a:Lcom/smaato/soma/video/VASTAdActivity;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity$3;->a:Lcom/smaato/soma/video/VASTAdActivity;

    invoke-static {v0}, Lcom/smaato/soma/video/VASTAdActivity;->b(Lcom/smaato/soma/video/VASTAdActivity;)Z

    move-result v0

    .line 268
    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity$3;->a:Lcom/smaato/soma/video/VASTAdActivity;

    invoke-virtual {v0}, Lcom/smaato/soma/video/VASTAdActivity;->c()V

    .line 273
    iget-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity$3;->a:Lcom/smaato/soma/video/VASTAdActivity;

    iget-object v0, v0, Lcom/smaato/soma/video/VASTAdActivity;->a:Lcom/smaato/soma/video/c;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity$3;->a:Lcom/smaato/soma/video/VASTAdActivity;

    iget-object v0, v0, Lcom/smaato/soma/video/VASTAdActivity;->a:Lcom/smaato/soma/video/c;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/smaato/soma/video/c;->setVisibility(I)V

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity$3;->a:Lcom/smaato/soma/video/VASTAdActivity;

    invoke-static {v0}, Lcom/smaato/soma/video/VASTAdActivity;->c(Lcom/smaato/soma/video/VASTAdActivity;)Lcom/smaato/soma/internal/d/b;

    move-result-object v0

    if-nez v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity$3;->a:Lcom/smaato/soma/video/VASTAdActivity;

    invoke-virtual {v0}, Lcom/smaato/soma/video/VASTAdActivity;->f()V

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity$3;->a:Lcom/smaato/soma/video/VASTAdActivity;

    iget-object v0, v0, Lcom/smaato/soma/video/VASTAdActivity;->a:Lcom/smaato/soma/video/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity$3;->a:Lcom/smaato/soma/video/VASTAdActivity;

    iget-object v0, v0, Lcom/smaato/soma/video/VASTAdActivity;->a:Lcom/smaato/soma/video/c;

    invoke-virtual {v0}, Lcom/smaato/soma/video/c;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 310
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 289
    :cond_2
    iget-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity$3;->a:Lcom/smaato/soma/video/VASTAdActivity;

    iget-object v0, v0, Lcom/smaato/soma/video/VASTAdActivity;->d:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity$3;->a:Lcom/smaato/soma/video/VASTAdActivity;

    iget-object v0, v0, Lcom/smaato/soma/video/VASTAdActivity;->a:Lcom/smaato/soma/video/c;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity$3;->a:Lcom/smaato/soma/video/VASTAdActivity;

    iget-object v0, v0, Lcom/smaato/soma/video/VASTAdActivity;->a:Lcom/smaato/soma/video/c;

    invoke-virtual {v0}, Lcom/smaato/soma/video/c;->a()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity$3;->a:Lcom/smaato/soma/video/VASTAdActivity;

    iget-object v0, v0, Lcom/smaato/soma/video/VASTAdActivity;->a:Lcom/smaato/soma/video/c;

    invoke-virtual {v0}, Lcom/smaato/soma/video/c;->getAutoCloseDuration()I

    move-result v0

    if-lez v0, :cond_3

    .line 291
    iget-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity$3;->a:Lcom/smaato/soma/video/VASTAdActivity;

    iget-object v0, v0, Lcom/smaato/soma/video/VASTAdActivity;->d:Landroid/os/Handler;

    new-instance v1, Lcom/smaato/soma/video/VASTAdActivity$3$1;

    invoke-direct {v1, p0}, Lcom/smaato/soma/video/VASTAdActivity$3$1;-><init>(Lcom/smaato/soma/video/VASTAdActivity$3;)V

    iget-object v2, p0, Lcom/smaato/soma/video/VASTAdActivity$3;->a:Lcom/smaato/soma/video/VASTAdActivity;

    iget-object v2, v2, Lcom/smaato/soma/video/VASTAdActivity;->a:Lcom/smaato/soma/video/c;

    .line 303
    invoke-virtual {v2}, Lcom/smaato/soma/video/c;->getAutoCloseDuration()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    .line 291
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 307
    :cond_3
    iget-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity$3;->a:Lcom/smaato/soma/video/VASTAdActivity;

    invoke-virtual {v0}, Lcom/smaato/soma/video/VASTAdActivity;->e()V

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
    .line 260
    invoke-virtual {p0}, Lcom/smaato/soma/video/VASTAdActivity$3;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
