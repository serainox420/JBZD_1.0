.class Lcom/madsdk/BrowserActivity$1;
.super Landroid/webkit/WebViewClient;
.source "BrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/madsdk/BrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/madsdk/BrowserActivity;


# direct methods
.method constructor <init>(Lcom/madsdk/BrowserActivity;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/madsdk/BrowserActivity$1;->this$0:Lcom/madsdk/BrowserActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/madsdk/BrowserActivity$1;->this$0:Lcom/madsdk/BrowserActivity;

    invoke-static {v0}, Lcom/madsdk/BrowserActivity;->access$200(Lcom/madsdk/BrowserActivity;)V

    .line 37
    iget-object v0, p0, Lcom/madsdk/BrowserActivity$1;->this$0:Lcom/madsdk/BrowserActivity;

    invoke-static {v0}, Lcom/madsdk/BrowserActivity;->access$100(Lcom/madsdk/BrowserActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 38
    iget-object v0, p0, Lcom/madsdk/BrowserActivity$1;->this$0:Lcom/madsdk/BrowserActivity;

    invoke-static {v0}, Lcom/madsdk/BrowserActivity;->access$000(Lcom/madsdk/BrowserActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 39
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    iget-object v0, p0, Lcom/madsdk/BrowserActivity$1;->this$0:Lcom/madsdk/BrowserActivity;

    invoke-static {v0}, Lcom/madsdk/BrowserActivity;->access$000(Lcom/madsdk/BrowserActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 29
    iget-object v0, p0, Lcom/madsdk/BrowserActivity$1;->this$0:Lcom/madsdk/BrowserActivity;

    invoke-static {v0}, Lcom/madsdk/BrowserActivity;->access$000(Lcom/madsdk/BrowserActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 30
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 31
    iget-object v0, p0, Lcom/madsdk/BrowserActivity$1;->this$0:Lcom/madsdk/BrowserActivity;

    invoke-static {v0}, Lcom/madsdk/BrowserActivity;->access$100(Lcom/madsdk/BrowserActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 32
    return-void
.end method
