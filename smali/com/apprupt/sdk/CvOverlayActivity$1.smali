.class Lcom/apprupt/sdk/CvOverlayActivity$1;
.super Landroid/webkit/WebViewClient;
.source "CvOverlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvOverlayActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/LinearLayout;

.field final synthetic b:Landroid/widget/RelativeLayout;

.field final synthetic c:Lcom/apprupt/sdk/CvOverlayActivity;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvOverlayActivity;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/apprupt/sdk/CvOverlayActivity$1;->c:Lcom/apprupt/sdk/CvOverlayActivity;

    iput-object p2, p0, Lcom/apprupt/sdk/CvOverlayActivity$1;->a:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/apprupt/sdk/CvOverlayActivity$1;->b:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 95
    new-instance v0, Lcom/apprupt/sdk/CvOverlayActivity$1$1;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/CvOverlayActivity$1$1;-><init>(Lcom/apprupt/sdk/CvOverlayActivity$1;)V

    invoke-static {v0}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;)V

    .line 103
    const-string v0, "OVERLAY_PAGE"

    invoke-static {v0}, Lcom/apprupt/sdk/Logger;->a(Ljava/lang/String;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Page"

    aput-object v3, v1, v2

    aput-object p2, v1, v4

    const/4 v2, 0x2

    const-string v3, "loaded successfully"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lcom/apprupt/sdk/CvOverlayActivity$1;->c:Lcom/apprupt/sdk/CvOverlayActivity;

    invoke-static {v0, v4}, Lcom/apprupt/sdk/CvOverlayActivity;->a(Lcom/apprupt/sdk/CvOverlayActivity;Z)Z

    .line 105
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 116
    const-string v0, "OVERLAY_PAGE"

    invoke-static {v0}, Lcom/apprupt/sdk/Logger;->a(Ljava/lang/String;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hiding overlay after error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    const-string v3, " (URL:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lcom/apprupt/sdk/CvOverlayActivity$1;->c:Lcom/apprupt/sdk/CvOverlayActivity;

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvOverlayActivity;->finish()V

    .line 118
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 5

    .prologue
    .line 109
    const-string v0, "OVERLAY_PAGE"

    invoke-static {v0}, Lcom/apprupt/sdk/Logger;->a(Ljava/lang/String;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hiding overlay after error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, " (URL:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

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

    .line 110
    iget-object v0, p0, Lcom/apprupt/sdk/CvOverlayActivity$1;->c:Lcom/apprupt/sdk/CvOverlayActivity;

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvOverlayActivity;->finish()V

    .line 111
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/apprupt/sdk/CvOverlayActivity$1;->c:Lcom/apprupt/sdk/CvOverlayActivity;

    iget-object v0, v0, Lcom/apprupt/sdk/CvOverlayActivity;->a:Lcom/apprupt/sdk/CvLauncher;

    sget-object v1, Lcom/apprupt/sdk/CvAdType;->c:Lcom/apprupt/sdk/CvAdType;

    invoke-virtual {v0, p2, v1}, Lcom/apprupt/sdk/CvLauncher;->a(Ljava/lang/String;Lcom/apprupt/sdk/CvAdType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 90
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
