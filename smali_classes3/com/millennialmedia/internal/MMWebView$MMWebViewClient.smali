.class Lcom/millennialmedia/internal/MMWebView$MMWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "MMWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/MMWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MMWebViewClient"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 123
    instance-of v0, p1, Lcom/millennialmedia/internal/MMWebView;

    if-eqz v0, :cond_0

    .line 124
    check-cast p1, Lcom/millennialmedia/internal/MMWebView;

    .line 125
    iget-object v0, p1, Lcom/millennialmedia/internal/MMWebView;->a:Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;->onFailed()V

    .line 127
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 133
    instance-of v1, p1, Lcom/millennialmedia/internal/MMWebView;

    if-eqz v1, :cond_2

    .line 134
    check-cast p1, Lcom/millennialmedia/internal/MMWebView;

    .line 135
    invoke-static {p1, p2}, Lcom/millennialmedia/internal/MMWebView;->a(Lcom/millennialmedia/internal/MMWebView;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    :cond_0
    :goto_0
    return v0

    .line 139
    :cond_1
    invoke-static {p2}, Lcom/millennialmedia/internal/utils/Utils;->startActivityFromUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p1, Lcom/millennialmedia/internal/MMWebView;->a:Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;

    invoke-interface {v1}, Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;->onAdLeftApplication()V

    goto :goto_0

    .line 146
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
