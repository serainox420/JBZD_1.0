.class Lcom/smaato/soma/bannerutilities/g$b$7;
.super Lcom/smaato/soma/l;
.source "VideoChrome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/bannerutilities/g$b;->onProgressChanged(Landroid/webkit/WebView;I)V
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
.field final synthetic a:Landroid/webkit/WebView;

.field final synthetic b:I

.field final synthetic c:Lcom/smaato/soma/bannerutilities/g$b;


# direct methods
.method constructor <init>(Lcom/smaato/soma/bannerutilities/g$b;Landroid/webkit/WebView;I)V
    .locals 0

    .prologue
    .line 504
    iput-object p1, p0, Lcom/smaato/soma/bannerutilities/g$b$7;->c:Lcom/smaato/soma/bannerutilities/g$b;

    iput-object p2, p0, Lcom/smaato/soma/bannerutilities/g$b$7;->a:Landroid/webkit/WebView;

    iput p3, p0, Lcom/smaato/soma/bannerutilities/g$b$7;->b:I

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
    .line 508
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/g$b$7;->c:Lcom/smaato/soma/bannerutilities/g$b;

    iget-object v0, v0, Lcom/smaato/soma/bannerutilities/g$b;->a:Lcom/smaato/soma/bannerutilities/h;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/g$b$7;->c:Lcom/smaato/soma/bannerutilities/g$b;

    iget-object v0, v0, Lcom/smaato/soma/bannerutilities/g$b;->a:Lcom/smaato/soma/bannerutilities/h;

    iget-object v1, p0, Lcom/smaato/soma/bannerutilities/g$b$7;->a:Landroid/webkit/WebView;

    iget v2, p0, Lcom/smaato/soma/bannerutilities/g$b$7;->b:I

    invoke-interface {v0, v1, v2}, Lcom/smaato/soma/bannerutilities/h;->a(Landroid/webkit/WebView;I)V

    .line 512
    :cond_0
    iget v0, p0, Lcom/smaato/soma/bannerutilities/g$b$7;->b:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    .line 513
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/g$b$7;->a:Landroid/webkit/WebView;

    check-cast v0, Lcom/smaato/soma/internal/e/a;

    invoke-virtual {v0}, Lcom/smaato/soma/internal/e/a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 514
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/g$b$7;->c:Lcom/smaato/soma/bannerutilities/g$b;

    iget-object v1, p0, Lcom/smaato/soma/bannerutilities/g$b$7;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/smaato/soma/bannerutilities/g$b$7;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, v2}, Lcom/smaato/soma/bannerutilities/g$b;->a(Ljava/lang/String;Landroid/webkit/WebView;)Z

    move-result v0

    .line 516
    iget-object v1, p0, Lcom/smaato/soma/bannerutilities/g$b$7;->c:Lcom/smaato/soma/bannerutilities/g$b;

    iget-object v1, v1, Lcom/smaato/soma/bannerutilities/g$b;->a:Lcom/smaato/soma/bannerutilities/h;

    if-eqz v1, :cond_1

    .line 517
    iget-object v1, p0, Lcom/smaato/soma/bannerutilities/g$b$7;->c:Lcom/smaato/soma/bannerutilities/g$b;

    iget-object v1, v1, Lcom/smaato/soma/bannerutilities/g$b;->a:Lcom/smaato/soma/bannerutilities/h;

    invoke-interface {v1, v0}, Lcom/smaato/soma/bannerutilities/h;->b(Z)V

    .line 527
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 519
    :cond_2
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/g$b$7;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/g$b$7;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/g$b$7;->c:Lcom/smaato/soma/bannerutilities/g$b;

    iget-object v1, p0, Lcom/smaato/soma/bannerutilities/g$b$7;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smaato/soma/bannerutilities/g$b;->a(Lcom/smaato/soma/bannerutilities/g$b;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/g$b$7;->c:Lcom/smaato/soma/bannerutilities/g$b;

    iget-object v1, p0, Lcom/smaato/soma/bannerutilities/g$b$7;->a:Landroid/webkit/WebView;

    .line 520
    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smaato/soma/bannerutilities/g$b;->b(Lcom/smaato/soma/bannerutilities/g$b;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/g$b$7;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "intent:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 523
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/g$b$7;->a:Landroid/webkit/WebView;

    check-cast v0, Lcom/smaato/soma/internal/e/a;

    sget-object v1, Lcom/smaato/soma/measurements/FraudesType;->AUTO_REDIRECT:Lcom/smaato/soma/measurements/FraudesType;

    iget-object v2, p0, Lcom/smaato/soma/bannerutilities/g$b$7;->a:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/smaato/soma/bannerutilities/g$b$7;->c:Lcom/smaato/soma/bannerutilities/g$b;

    iget-object v4, p0, Lcom/smaato/soma/bannerutilities/g$b$7;->a:Landroid/webkit/WebView;

    invoke-virtual {v3, v4}, Lcom/smaato/soma/bannerutilities/g$b;->a(Landroid/webkit/WebView;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/smaato/soma/internal/e/a;->a(Lcom/smaato/soma/measurements/FraudesType;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 524
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
    .line 504
    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/g$b$7;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
