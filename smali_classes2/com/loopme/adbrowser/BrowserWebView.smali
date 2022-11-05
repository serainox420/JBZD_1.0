.class public Lcom/loopme/adbrowser/BrowserWebView;
.super Landroid/webkit/WebView;
.source "BrowserWebView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 12
    invoke-direct {p0}, Lcom/loopme/adbrowser/BrowserWebView;->init()V

    .line 13
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 16
    invoke-virtual {p0}, Lcom/loopme/adbrowser/BrowserWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 17
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 19
    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 21
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 22
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 23
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 24
    invoke-virtual {p0, v2}, Lcom/loopme/adbrowser/BrowserWebView;->setInitialScale(I)V

    .line 25
    return-void
.end method
