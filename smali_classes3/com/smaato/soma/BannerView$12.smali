.class Lcom/smaato/soma/BannerView$12;
.super Lcom/smaato/soma/l;
.source "BannerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/BannerView;->setAutoReloadEnabled(Z)V
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
.field final synthetic a:Z

.field final synthetic b:Lcom/smaato/soma/BannerView;


# direct methods
.method constructor <init>(Lcom/smaato/soma/BannerView;Z)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/smaato/soma/BannerView$12;->b:Lcom/smaato/soma/BannerView;

    iput-boolean p2, p0, Lcom/smaato/soma/BannerView$12;->a:Z

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 278
    new-instance v0, Lcom/smaato/soma/BannerView$12$1;

    invoke-direct {v0, p0}, Lcom/smaato/soma/BannerView$12$1;-><init>(Lcom/smaato/soma/BannerView$12;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 279
    iget-object v0, p0, Lcom/smaato/soma/BannerView$12;->b:Lcom/smaato/soma/BannerView;

    iget-boolean v1, p0, Lcom/smaato/soma/BannerView$12;->a:Z

    iput-boolean v1, v0, Lcom/smaato/soma/BannerView;->a:Z

    .line 280
    iget-object v0, p0, Lcom/smaato/soma/BannerView$12;->b:Lcom/smaato/soma/BannerView;

    iget-boolean v1, p0, Lcom/smaato/soma/BannerView$12;->a:Z

    invoke-static {v0, v1}, Lcom/smaato/soma/BannerView;->a(Lcom/smaato/soma/BannerView;Z)Z

    .line 282
    iget-object v0, p0, Lcom/smaato/soma/BannerView$12;->b:Lcom/smaato/soma/BannerView;

    iget-boolean v0, v0, Lcom/smaato/soma/BannerView;->a:Z

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/smaato/soma/BannerView$12;->b:Lcom/smaato/soma/BannerView;

    invoke-static {v0}, Lcom/smaato/soma/BannerView;->c(Lcom/smaato/soma/BannerView;)V

    .line 289
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 285
    :cond_0
    invoke-static {}, Lcom/smaato/soma/internal/requests/f;->b()Lcom/smaato/soma/internal/requests/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/requests/f;->a(I)V

    .line 286
    iget-object v0, p0, Lcom/smaato/soma/BannerView$12;->b:Lcom/smaato/soma/BannerView;

    invoke-virtual {v0}, Lcom/smaato/soma/BannerView;->c()V

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
    .line 275
    invoke-virtual {p0}, Lcom/smaato/soma/BannerView$12;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
