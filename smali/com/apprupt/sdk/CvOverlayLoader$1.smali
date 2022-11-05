.class Lcom/apprupt/sdk/CvOverlayLoader$1;
.super Landroid/webkit/WebViewClient;
.source "CvOverlayLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvOverlayLoader;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/apprupt/sdk/CvOverlayLoader;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvOverlayLoader;Z)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/apprupt/sdk/CvOverlayLoader$1;->b:Lcom/apprupt/sdk/CvOverlayLoader;

    iput-boolean p2, p0, Lcom/apprupt/sdk/CvOverlayLoader$1;->a:Z

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/apprupt/sdk/CvOverlayLoader$1;->b:Lcom/apprupt/sdk/CvOverlayLoader;

    invoke-static {v0}, Lcom/apprupt/sdk/CvOverlayLoader;->b(Lcom/apprupt/sdk/CvOverlayLoader;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/apprupt/sdk/CvOverlayLoader$1;->a:Z

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/apprupt/sdk/CvOverlayLoader$1;->b:Lcom/apprupt/sdk/CvOverlayLoader;

    invoke-static {v0}, Lcom/apprupt/sdk/CvOverlayLoader;->c(Lcom/apprupt/sdk/CvOverlayLoader;)V

    .line 49
    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 59
    const-string v0, "OVERLAY"

    invoke-static {v0}, Lcom/apprupt/sdk/Logger;->a(Ljava/lang/String;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Overlay error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 5

    .prologue
    .line 53
    const-string v0, "OVERLAY"

    invoke-static {v0}, Lcom/apprupt/sdk/Logger;->a(Ljava/lang/String;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Overlay error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, " (URL:"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 36
    iget-object v0, p0, Lcom/apprupt/sdk/CvOverlayLoader$1;->b:Lcom/apprupt/sdk/CvOverlayLoader;

    invoke-static {v0}, Lcom/apprupt/sdk/CvOverlayLoader;->a(Lcom/apprupt/sdk/CvOverlayLoader;)Lcom/apprupt/sdk/CvLauncher;

    move-result-object v0

    sget-object v1, Lcom/apprupt/sdk/CvAdType;->c:Lcom/apprupt/sdk/CvAdType;

    invoke-virtual {v0, p2, v1}, Lcom/apprupt/sdk/CvLauncher;->a(Ljava/lang/String;Lcom/apprupt/sdk/CvAdType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 41
    :goto_0
    return v2

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/apprupt/sdk/CvOverlayLoader$1;->b:Lcom/apprupt/sdk/CvOverlayLoader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/apprupt/sdk/CvOverlayLoader;->a(Lcom/apprupt/sdk/CvOverlayLoader;Z)Z

    goto :goto_0
.end method
