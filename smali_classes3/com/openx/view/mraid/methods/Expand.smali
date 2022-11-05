.class public Lcom/openx/view/mraid/methods/Expand;
.super Ljava/lang/Object;
.source "Expand.java"


# instance fields
.field private adHTML:Ljava/lang/String;

.field private clickTracked:Z

.field private context:Landroid/content/Context;

.field jsi:Lcom/openx/view/mraid/BaseJSInterface;

.field webViewBanner:Lcom/openx/view/WebViewBase;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/openx/view/mraid/BaseJSInterface;Lcom/openx/view/WebViewBase;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/openx/view/mraid/methods/Expand;->context:Landroid/content/Context;

    .line 33
    iput-object p3, p0, Lcom/openx/view/mraid/methods/Expand;->webViewBanner:Lcom/openx/view/WebViewBase;

    .line 34
    iput-object p2, p0, Lcom/openx/view/mraid/methods/Expand;->jsi:Lcom/openx/view/mraid/BaseJSInterface;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/openx/view/mraid/methods/Expand;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Expand;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public expand(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Expand;->webViewBanner:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->getAd()Lcom/openx/model/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/model/Ad;->getCreative()Lcom/openx/model/AdCreative;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/openx/model/AdCreative;->getTracking()Lcom/openx/model/AdTracking;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/openx/model/AdCreative;->getTracking()Lcom/openx/model/AdTracking;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/model/AdTracking;->getClickURL()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 44
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    const-string v0, "?"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 47
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 49
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Expand;->webViewBanner:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->getAd()Lcom/openx/model/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/model/Ad;->getHTML()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/view/mraid/methods/Expand;->adHTML:Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Expand;->adHTML:Ljava/lang/String;

    const-string v2, "clickUrl"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/openx/view/mraid/methods/Expand;->clickTracked:Z

    if-nez v0, :cond_1

    .line 67
    const-string v0, "Track Expand Click"

    invoke-static {p0, v0}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openx/view/mraid/methods/Expand;->clickTracked:Z

    .line 71
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Expand;->webViewBanner:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->getPreloadedListener()Lcom/openx/view/video/PreloadManager$PreloadedListener;

    move-result-object v0

    check-cast v0, Lcom/openx/view/AdBase;

    invoke-virtual {v0}, Lcom/openx/view/AdBase;->getAdModel()Lcom/openx/model/AdModel;

    move-result-object v0

    const-string v2, "click"

    invoke-virtual {v0, v2, v1}, Lcom/openx/model/AdModel;->trackAdModelEvents(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_1
    invoke-static {}, Lcom/openx/core/sdk/OXMManagersResolver;->getInstance()Lcom/openx/core/sdk/OXMManagersResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/openx/view/mraid/methods/Expand;->webViewBanner:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0, v1}, Lcom/openx/core/sdk/OXMManagersResolver;->setCurrentAd(Lcom/openx/view/WebViewBase;)V

    .line 79
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Expand;->jsi:Lcom/openx/view/mraid/BaseJSInterface;

    new-instance v1, Lcom/openx/view/mraid/methods/Expand$1;

    invoke-direct {v1, p0}, Lcom/openx/view/mraid/methods/Expand$1;-><init>(Lcom/openx/view/mraid/methods/Expand;)V

    invoke-virtual {v0, p1, v1}, Lcom/openx/view/mraid/BaseJSInterface;->followToOriginalUrl(Ljava/lang/String;Lcom/openx/view/mraid/network/RedirectURLListener;)V

    .line 138
    return-void

    .line 41
    :cond_2
    const-string v0, ""

    move-object v1, v0

    goto :goto_0
.end method
