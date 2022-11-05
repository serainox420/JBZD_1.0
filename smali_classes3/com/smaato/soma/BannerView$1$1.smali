.class Lcom/smaato/soma/BannerView$1$1;
.super Lcom/smaato/soma/l;
.source "BannerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/BannerView$1;->run()V
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
.field final synthetic a:Lcom/smaato/soma/BannerView$1;


# direct methods
.method constructor <init>(Lcom/smaato/soma/BannerView$1;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/smaato/soma/BannerView$1$1;->a:Lcom/smaato/soma/BannerView$1;

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
    .line 97
    iget-object v0, p0, Lcom/smaato/soma/BannerView$1$1;->a:Lcom/smaato/soma/BannerView$1;

    iget-object v0, v0, Lcom/smaato/soma/BannerView$1;->a:Lcom/smaato/soma/BannerView;

    invoke-virtual {v0}, Lcom/smaato/soma/BannerView;->getBannerAnimatorHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/smaato/soma/BannerView$1$1;->a:Lcom/smaato/soma/BannerView$1;

    iget-object v1, v1, Lcom/smaato/soma/BannerView$1;->a:Lcom/smaato/soma/BannerView;

    invoke-static {v1}, Lcom/smaato/soma/BannerView;->a(Lcom/smaato/soma/BannerView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 99
    iget-object v0, p0, Lcom/smaato/soma/BannerView$1$1;->a:Lcom/smaato/soma/BannerView$1;

    iget-object v0, v0, Lcom/smaato/soma/BannerView$1;->a:Lcom/smaato/soma/BannerView;

    invoke-virtual {v0}, Lcom/smaato/soma/BannerView;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/smaato/soma/BannerView$1$1;->a:Lcom/smaato/soma/BannerView$1;

    iget-object v0, v0, Lcom/smaato/soma/BannerView$1;->a:Lcom/smaato/soma/BannerView;

    invoke-virtual {v0}, Lcom/smaato/soma/BannerView;->e()V

    .line 101
    iget-object v0, p0, Lcom/smaato/soma/BannerView$1$1;->a:Lcom/smaato/soma/BannerView$1;

    iget-object v0, v0, Lcom/smaato/soma/BannerView$1;->a:Lcom/smaato/soma/BannerView;

    iget-object v1, p0, Lcom/smaato/soma/BannerView$1$1;->a:Lcom/smaato/soma/BannerView$1;

    iget-object v1, v1, Lcom/smaato/soma/BannerView$1;->a:Lcom/smaato/soma/BannerView;

    invoke-static {v1}, Lcom/smaato/soma/BannerView;->a(Lcom/smaato/soma/BannerView;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/smaato/soma/BannerView$1$1;->a:Lcom/smaato/soma/BannerView$1;

    iget-object v2, v2, Lcom/smaato/soma/BannerView$1;->a:Lcom/smaato/soma/BannerView;

    .line 102
    invoke-static {v2}, Lcom/smaato/soma/BannerView;->b(Lcom/smaato/soma/BannerView;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    .line 101
    invoke-virtual {v0, v1, v2, v3}, Lcom/smaato/soma/BannerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 104
    :cond_0
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
    .line 94
    invoke-virtual {p0}, Lcom/smaato/soma/BannerView$1$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
