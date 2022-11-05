.class Lcom/smaato/soma/BannerView$3;
.super Lcom/smaato/soma/l;
.source "BannerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/BannerView;->onWindowFocusChanged(Z)V
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
    .line 331
    iput-object p1, p0, Lcom/smaato/soma/BannerView$3;->b:Lcom/smaato/soma/BannerView;

    iput-boolean p2, p0, Lcom/smaato/soma/BannerView$3;->a:Z

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
    .line 337
    iget-boolean v0, p0, Lcom/smaato/soma/BannerView$3;->a:Z

    if-eqz v0, :cond_2

    .line 340
    invoke-static {}, Lcom/smaato/soma/internal/requests/settings/a;->a()Lcom/smaato/soma/internal/requests/settings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/settings/a;->m()V

    .line 343
    iget-object v0, p0, Lcom/smaato/soma/BannerView$3;->b:Lcom/smaato/soma/BannerView;

    invoke-static {v0}, Lcom/smaato/soma/BannerView;->c(Lcom/smaato/soma/BannerView;)V

    .line 344
    iget-object v0, p0, Lcom/smaato/soma/BannerView$3;->b:Lcom/smaato/soma/BannerView;

    iget-boolean v0, v0, Lcom/smaato/soma/BannerView;->d:Z

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/smaato/soma/BannerView$3;->b:Lcom/smaato/soma/BannerView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/smaato/soma/BannerView;->d:Z

    .line 359
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/smaato/soma/BannerView$3;->b:Lcom/smaato/soma/BannerView;

    iget-boolean v0, v0, Lcom/smaato/soma/BannerView;->a:Z

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/smaato/soma/BannerView$3;->b:Lcom/smaato/soma/BannerView;

    invoke-virtual {v0}, Lcom/smaato/soma/BannerView;->e()V

    goto :goto_0

    .line 352
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/BannerView$3;->b:Lcom/smaato/soma/BannerView;

    iget-object v0, v0, Lcom/smaato/soma/BannerView;->g:Lcom/smaato/soma/bannerutilities/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/smaato/soma/BannerView$3;->b:Lcom/smaato/soma/BannerView;

    iget-object v0, v0, Lcom/smaato/soma/BannerView;->g:Lcom/smaato/soma/bannerutilities/a;

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a;->e()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/smaato/soma/BannerView$3;->b:Lcom/smaato/soma/BannerView;

    iget-object v0, v0, Lcom/smaato/soma/BannerView;->g:Lcom/smaato/soma/bannerutilities/a;

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 353
    iget-object v0, p0, Lcom/smaato/soma/BannerView$3;->b:Lcom/smaato/soma/BannerView;

    iget-object v0, v0, Lcom/smaato/soma/BannerView;->g:Lcom/smaato/soma/bannerutilities/a;

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a;->e()Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "javascript:mraid.viewableChange(false);"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/smaato/soma/BannerView$3;->b:Lcom/smaato/soma/BannerView;

    invoke-virtual {v0}, Lcom/smaato/soma/BannerView;->c()V

    goto :goto_0

    .line 356
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/smaato/soma/BannerView$3;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
