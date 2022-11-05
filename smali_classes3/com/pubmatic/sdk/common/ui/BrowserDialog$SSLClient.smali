.class Lcom/pubmatic/sdk/common/ui/BrowserDialog$SSLClient;
.super Landroid/webkit/WebViewClient;
.source "BrowserDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/common/ui/BrowserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SSLClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;


# direct methods
.method private constructor <init>(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)V
    .locals 0

    .prologue
    .line 420
    iput-object p1, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$SSLClient;->this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pubmatic/sdk/common/ui/BrowserDialog;Lcom/pubmatic/sdk/common/ui/BrowserDialog$1;)V
    .locals 0

    .prologue
    .line 420
    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/common/ui/BrowserDialog$SSLClient;-><init>(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 424
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$SSLClient;->this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->access$1300(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 425
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$SSLClient;->this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->access$900(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 426
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$SSLClient;->this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->access$100(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$SSLClient;->this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->access$100(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:setHostName(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pubmatic/sdk/common/ui/BrowserDialog$SSLClient;->this$0:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-static {v2}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->access$400(Lcom/pubmatic/sdk/common/ui/BrowserDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 430
    :cond_0
    return-void
.end method
