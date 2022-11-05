.class Lcom/video/adsdk/internal/BrowserActivity$1;
.super Landroid/webkit/WebViewClient;
.source "BrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/video/adsdk/internal/BrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/video/adsdk/internal/BrowserActivity;


# direct methods
.method constructor <init>(Lcom/video/adsdk/internal/BrowserActivity;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/video/adsdk/internal/BrowserActivity$1;->this$0:Lcom/video/adsdk/internal/BrowserActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 29
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/video/adsdk/internal/BrowserActivity$1;->this$0:Lcom/video/adsdk/internal/BrowserActivity;

    invoke-static {v0}, Lcom/video/adsdk/internal/BrowserActivity;->access$000(Lcom/video/adsdk/internal/BrowserActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 31
    iget-object v0, p0, Lcom/video/adsdk/internal/BrowserActivity$1;->this$0:Lcom/video/adsdk/internal/BrowserActivity;

    invoke-static {v0}, Lcom/video/adsdk/internal/BrowserActivity;->access$100(Lcom/video/adsdk/internal/BrowserActivity;)V

    .line 32
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 36
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/video/adsdk/internal/BrowserActivity$1;->this$0:Lcom/video/adsdk/internal/BrowserActivity;

    invoke-static {v0}, Lcom/video/adsdk/internal/BrowserActivity;->access$000(Lcom/video/adsdk/internal/BrowserActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 38
    return-void
.end method
