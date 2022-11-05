.class Lcom/openx/sdk/browser/AdBrowserActivity$1;
.super Landroid/webkit/WebViewClient;
.source "AdBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/sdk/browser/AdBrowserActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/sdk/browser/AdBrowserActivity;


# direct methods
.method constructor <init>(Lcom/openx/sdk/browser/AdBrowserActivity;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/openx/sdk/browser/AdBrowserActivity$1;->this$0:Lcom/openx/sdk/browser/AdBrowserActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/openx/sdk/browser/AdBrowserActivity$1;->this$0:Lcom/openx/sdk/browser/AdBrowserActivity;

    invoke-static {v0}, Lcom/openx/sdk/browser/AdBrowserActivity;->access$000(Lcom/openx/sdk/browser/AdBrowserActivity;)Lcom/openx/sdk/browser/BrowserControls;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/openx/sdk/browser/AdBrowserActivity$1;->this$0:Lcom/openx/sdk/browser/AdBrowserActivity;

    invoke-static {v0}, Lcom/openx/sdk/browser/AdBrowserActivity;->access$000(Lcom/openx/sdk/browser/AdBrowserActivity;)Lcom/openx/sdk/browser/BrowserControls;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/sdk/browser/BrowserControls;->updateNavigationButtonsState()V

    .line 173
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 179
    .line 180
    const-string v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    .line 196
    :goto_0
    return v0

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/openx/sdk/browser/AdBrowserActivity$1;->this$0:Lcom/openx/sdk/browser/AdBrowserActivity;

    invoke-static {v0}, Lcom/openx/sdk/browser/AdBrowserActivity;->access$000(Lcom/openx/sdk/browser/AdBrowserActivity;)Lcom/openx/sdk/browser/BrowserControls;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/openx/sdk/browser/AdBrowserActivity$1;->this$0:Lcom/openx/sdk/browser/AdBrowserActivity;

    invoke-static {v0}, Lcom/openx/sdk/browser/AdBrowserActivity;->access$000(Lcom/openx/sdk/browser/AdBrowserActivity;)Lcom/openx/sdk/browser/BrowserControls;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/openx/sdk/browser/BrowserControls;->openURLInExternalBrowser(Ljava/lang/String;)V

    .line 189
    const/4 v0, 0x1

    goto :goto_0

    .line 193
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
