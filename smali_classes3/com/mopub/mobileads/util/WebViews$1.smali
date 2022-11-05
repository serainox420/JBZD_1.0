.class final Lcom/mopub/mobileads/util/WebViews$1;
.super Landroid/webkit/WebChromeClient;
.source "WebViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/util/WebViews;->setDisableJSChromeClient(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    .prologue
    .line 61
    invoke-static {p3}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method public onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    .prologue
    .line 86
    invoke-static {p3}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    .prologue
    .line 69
    invoke-static {p3}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 1

    .prologue
    .line 78
    invoke-static {p3}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p5}, Landroid/webkit/JsPromptResult;->confirm()V

    .line 80
    const/4 v0, 0x1

    return v0
.end method
