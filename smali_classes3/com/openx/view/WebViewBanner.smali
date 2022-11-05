.class public Lcom/openx/view/WebViewBanner;
.super Lcom/openx/view/WebViewBase;
.source "WebViewBanner.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/openx/model/Ad;Ljava/util/UUID;ZLcom/openx/view/video/PreloadManager$PreloadedListener;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p5}, Lcom/openx/view/WebViewBase;-><init>(Landroid/content/Context;Lcom/openx/model/Ad;Ljava/util/UUID;ZLcom/openx/view/video/PreloadManager$PreloadedListener;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/openx/view/video/PreloadManager$PreloadedListener;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/openx/view/WebViewBase;-><init>(Landroid/content/Context;ZLcom/openx/view/video/PreloadManager$PreloadedListener;)V

    .line 27
    invoke-virtual {p0}, Lcom/openx/view/WebViewBanner;->init()V

    .line 29
    return-void
.end method


# virtual methods
.method public init()V
    .locals 0

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/openx/view/WebViewBanner;->setMRAIDInterface()V

    .line 35
    return-void
.end method

.method public setMRAIDInterface()V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Lcom/openx/view/mraid/BannerJSInterface;

    invoke-virtual {p0}, Lcom/openx/view/WebViewBanner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/openx/view/mraid/BannerJSInterface;-><init>(Landroid/content/Context;Lcom/openx/view/WebViewBase;)V

    .line 42
    const-string v1, "jsBridge"

    invoke-virtual {p0, v0, v1}, Lcom/openx/view/WebViewBanner;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    const-string v1, "WebViewBanner"

    const-string v2, "WebViewBanner: setMRAIDInterface() JSbridge initialized: yay!"

    invoke-static {v1, v2}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0, v0}, Lcom/openx/view/WebViewBanner;->setBaseJSInterface(Lcom/openx/view/mraid/BaseJSInterface;)V

    .line 46
    return-void
.end method
