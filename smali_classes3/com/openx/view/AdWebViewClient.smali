.class public Lcom/openx/view/AdWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "AdWebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openx/view/AdWebViewClient$AdAssetsLoadedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AdWebViewClient"


# instance fields
.field private TIMEOUT:J

.field private adAssetsLoadedListener:Lcom/openx/view/AdWebViewClient$AdAssetsLoadedListener;

.field private adWebView:Lcom/openx/view/WebViewBase;

.field private clickTracked:Z

.field private eventsManager:Lcom/openx/sdk/event/OXMEventsListener;

.field private global_final_height:I

.field private global_final_width:I

.field private isEventRegistered:Z

.field loadingFinished:Z

.field private mCloseEventsListener:Lcom/openx/sdk/event/OXMEventsHandler;

.field private mPageUrl:Ljava/lang/String;

.field private pageFinished:Z

.field redirect:Z

.field private urls:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/openx/view/AdWebViewClient$AdAssetsLoadedListener;)V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openx/view/AdWebViewClient;->loadingFinished:Z

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openx/view/AdWebViewClient;->redirect:Z

    .line 36
    const-wide/16 v0, 0x4e20

    iput-wide v0, p0, Lcom/openx/view/AdWebViewClient;->TIMEOUT:J

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/openx/view/AdWebViewClient;->urls:Ljava/util/HashSet;

    .line 61
    iput-object p1, p0, Lcom/openx/view/AdWebViewClient;->adAssetsLoadedListener:Lcom/openx/view/AdWebViewClient$AdAssetsLoadedListener;

    .line 62
    invoke-static {}, Lcom/openx/core/sdk/OXMManagersResolver;->getInstance()Lcom/openx/core/sdk/OXMManagersResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/core/sdk/OXMManagersResolver;->getEventsManager()Lcom/openx/sdk/event/OXMEventsListener;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/view/AdWebViewClient;->eventsManager:Lcom/openx/sdk/event/OXMEventsListener;

    .line 64
    new-instance v0, Lcom/openx/view/AdWebViewClient$1;

    invoke-direct {v0, p0}, Lcom/openx/view/AdWebViewClient$1;-><init>(Lcom/openx/view/AdWebViewClient;)V

    iput-object v0, p0, Lcom/openx/view/AdWebViewClient;->mCloseEventsListener:Lcom/openx/sdk/event/OXMEventsHandler;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/openx/view/AdWebViewClient;)Lcom/openx/view/WebViewBase;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/openx/view/AdWebViewClient;->adWebView:Lcom/openx/view/WebViewBase;

    return-object v0
.end method

.method static synthetic access$100(Lcom/openx/view/AdWebViewClient;)Lcom/openx/sdk/event/OXMEventsHandler;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/openx/view/AdWebViewClient;->mCloseEventsListener:Lcom/openx/sdk/event/OXMEventsHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/openx/view/AdWebViewClient;)Lcom/openx/sdk/event/OXMEventsListener;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/openx/view/AdWebViewClient;->eventsManager:Lcom/openx/sdk/event/OXMEventsListener;

    return-object v0
.end method

.method static synthetic access$302(Lcom/openx/view/AdWebViewClient;Z)Z
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/openx/view/AdWebViewClient;->isEventRegistered:Z

    return p1
.end method

.method private getFactor(II)V
    .locals 8

    .prologue
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 164
    iget-object v0, p0, Lcom/openx/view/AdWebViewClient;->adWebView:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 165
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 167
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 172
    if-gt p1, v1, :cond_0

    if-le p2, v2, :cond_1

    .line 174
    :cond_0
    int-to-double v0, v1

    mul-double/2addr v0, v6

    int-to-double v4, p1

    div-double/2addr v0, v4

    .line 175
    int-to-double v2, v2

    mul-double/2addr v2, v6

    int-to-double v4, p2

    div-double/2addr v2, v4

    .line 177
    cmpl-double v4, v2, v0

    if-lez v4, :cond_2

    .line 178
    :goto_0
    iget-object v2, p0, Lcom/openx/view/AdWebViewClient;->adWebView:Lcom/openx/view/WebViewBase;

    invoke-virtual {v2}, Lcom/openx/view/WebViewBase;->densityScalingFactor()D

    move-result-wide v2

    div-double/2addr v0, v2

    .line 180
    int-to-double v2, p1

    mul-double/2addr v2, v0

    double-to-int p1, v2

    .line 181
    int-to-double v2, p2

    mul-double/2addr v0, v2

    double-to-int p2, v0

    .line 184
    :cond_1
    iput p1, p0, Lcom/openx/view/AdWebViewClient;->global_final_width:I

    .line 185
    iput p2, p0, Lcom/openx/view/AdWebViewClient;->global_final_height:I

    .line 187
    return-void

    :cond_2
    move-wide v0, v2

    .line 177
    goto :goto_0
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 193
    iget-object v0, p0, Lcom/openx/view/AdWebViewClient;->mPageUrl:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/openx/view/AdWebViewClient;->adWebView:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->isClicked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/openx/view/AdWebViewClient;->urls:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 198
    :cond_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v0

    .line 200
    const-string v1, "AdWebViewClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "######### : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 206
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 210
    :cond_2
    iget-object v0, p0, Lcom/openx/view/AdWebViewClient;->urls:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 211
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 107
    const-string v0, "AdWebViewClient"

    const-string v1, "onPageFinished..."

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p1

    .line 109
    check-cast v0, Lcom/openx/view/WebViewBase;

    iput-object v0, p0, Lcom/openx/view/AdWebViewClient;->adWebView:Lcom/openx/view/WebViewBase;

    .line 119
    iget-object v0, p0, Lcom/openx/view/AdWebViewClient;->adWebView:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->getAd()Lcom/openx/model/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/model/Ad;->getCreative()Lcom/openx/model/AdCreative;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 121
    const-string v0, "AdWebViewClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdwebviewClient : onPageFinished(): regular: width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/openx/view/AdWebViewClient;->adWebView:Lcom/openx/view/WebViewBase;

    invoke-virtual {v2}, Lcom/openx/view/WebViewBase;->getAd()Lcom/openx/model/Ad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/openx/model/Ad;->getCreative()Lcom/openx/model/AdCreative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/openx/model/AdCreative;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/openx/view/AdWebViewClient;->adWebView:Lcom/openx/view/WebViewBase;

    invoke-virtual {v2}, Lcom/openx/view/WebViewBase;->getAd()Lcom/openx/model/Ad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/openx/model/Ad;->getCreative()Lcom/openx/model/AdCreative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/openx/model/AdCreative;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/openx/view/AdWebViewClient;->adWebView:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->getAd()Lcom/openx/model/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/model/Ad;->getCreative()Lcom/openx/model/AdCreative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/model/AdCreative;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/openx/view/AdWebViewClient;->adWebView:Lcom/openx/view/WebViewBase;

    invoke-virtual {v1}, Lcom/openx/view/WebViewBase;->getAd()Lcom/openx/model/Ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openx/model/Ad;->getCreative()Lcom/openx/model/AdCreative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openx/model/AdCreative;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/openx/view/AdWebViewClient;->getFactor(II)V

    .line 132
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/openx/view/AdWebViewClient;->adWebView:Lcom/openx/view/WebViewBase;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript: var x; x = document.getElementsByTagName(\'img\'); for(var i = 0; i< x.length; i++){ \tif(x[i].width > 1)\t{\t\t\tx[i].width = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/openx/view/AdWebViewClient;->global_final_width:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\t\t\tx[i].height = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/openx/view/AdWebViewClient;->global_final_height:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/openx/common/utils/helpers/Utils;->atMostJB()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, " x[i].style.width = \'auto\'; x[i].style.height = \'auto\';"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\t\tbreak;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\t}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/openx/view/WebViewBase;->loadUrl(Ljava/lang/String;)V

    .line 142
    iget-boolean v0, p0, Lcom/openx/view/AdWebViewClient;->redirect:Z

    if-nez v0, :cond_1

    .line 144
    iput-boolean v4, p0, Lcom/openx/view/AdWebViewClient;->loadingFinished:Z

    .line 147
    :cond_1
    iget-boolean v0, p0, Lcom/openx/view/AdWebViewClient;->loadingFinished:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/openx/view/AdWebViewClient;->redirect:Z

    if-nez v0, :cond_4

    .line 150
    iput-boolean v4, p0, Lcom/openx/view/AdWebViewClient;->pageFinished:Z

    .line 151
    const-string v0, "AdWebViewClient"

    const-string v1, "AD_ASSETS_LOADED! n 170 AdWebViewClient"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/openx/view/AdWebViewClient;->adAssetsLoadedListener:Lcom/openx/view/AdWebViewClient$AdAssetsLoadedListener;

    invoke-interface {v0}, Lcom/openx/view/AdWebViewClient$AdAssetsLoadedListener;->adAssetsLoaded()V

    .line 154
    invoke-virtual {p1, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 160
    :goto_2
    return-void

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/openx/view/AdWebViewClient;->adWebView:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->getAd()Lcom/openx/model/Ad;

    move-result-object v0

    instance-of v0, v0, Lcom/openx/view/tp/chain/parser/ChainItem;

    if-eqz v0, :cond_0

    .line 127
    const-string v1, "AdWebViewClient"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdwebviewClient : onPageFinished(): chain: width: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/openx/view/AdWebViewClient;->adWebView:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->getAd()Lcom/openx/model/Ad;

    move-result-object v0

    check-cast v0, Lcom/openx/view/tp/chain/parser/ChainItem;

    iget v0, v0, Lcom/openx/view/tp/chain/parser/ChainItem;->width:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " chain Height: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/openx/view/AdWebViewClient;->adWebView:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->getAd()Lcom/openx/model/Ad;

    move-result-object v0

    check-cast v0, Lcom/openx/view/tp/chain/parser/ChainItem;

    iget v0, v0, Lcom/openx/view/tp/chain/parser/ChainItem;->height:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/openx/view/AdWebViewClient;->adWebView:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->getAd()Lcom/openx/model/Ad;

    move-result-object v0

    check-cast v0, Lcom/openx/view/tp/chain/parser/ChainItem;

    iget v1, v0, Lcom/openx/view/tp/chain/parser/ChainItem;->width:I

    iget-object v0, p0, Lcom/openx/view/AdWebViewClient;->adWebView:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->getAd()Lcom/openx/model/Ad;

    move-result-object v0

    check-cast v0, Lcom/openx/view/tp/chain/parser/ChainItem;

    iget v0, v0, Lcom/openx/view/tp/chain/parser/ChainItem;->height:I

    invoke-direct {p0, v1, v0}, Lcom/openx/view/AdWebViewClient;->getFactor(II)V

    goto/16 :goto_0

    .line 132
    :cond_3
    const-string v0, ""

    goto/16 :goto_1

    .line 158
    :cond_4
    iput-boolean v3, p0, Lcom/openx/view/AdWebViewClient;->redirect:Z

    goto :goto_2
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 85
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 87
    const-string v0, "AdWebViewClient"

    const-string v1, "@@@@@@@@ Registering Closing Event Listener"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-boolean v0, p0, Lcom/openx/view/AdWebViewClient;->isEventRegistered:Z

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/openx/view/AdWebViewClient;->eventsManager:Lcom/openx/sdk/event/OXMEventsListener;

    sget-object v1, Lcom/openx/sdk/event/OXMEvent$OXMEventType;->CLOSE_ACTIVE_INTERNAL_WINDOW:Lcom/openx/sdk/event/OXMEvent$OXMEventType;

    iget-object v2, p0, Lcom/openx/view/AdWebViewClient;->mCloseEventsListener:Lcom/openx/sdk/event/OXMEventsHandler;

    invoke-interface {v0, v1, v2}, Lcom/openx/sdk/event/OXMEventsListener;->registerEventListener(Lcom/openx/sdk/event/OXMEvent$OXMEventType;Lcom/openx/sdk/event/OXMEventsHandler;)V

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openx/view/AdWebViewClient;->isEventRegistered:Z

    .line 95
    :cond_0
    iput-object p2, p0, Lcom/openx/view/AdWebViewClient;->mPageUrl:Ljava/lang/String;

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openx/view/AdWebViewClient;->loadingFinished:Z

    .line 99
    check-cast p1, Lcom/openx/view/WebViewBase;

    iput-object p1, p0, Lcom/openx/view/AdWebViewClient;->adWebView:Lcom/openx/view/WebViewBase;

    .line 101
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 302
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 308
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 218
    const-string v0, "AdWebViewClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "######### : shouldOverrideUrlLoading :url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/openx/view/AdWebViewClient;->adWebView:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->isClicked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 222
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 225
    iget-object v0, p0, Lcom/openx/view/AdWebViewClient;->adWebView:Lcom/openx/view/WebViewBase;

    const-string v1, "javascript:window.HtmlViewer.showHTML(\'<html>\'+document.getElementsByTagName(\'html\')[0].innerHTML+\'</html>\');"

    invoke-virtual {v0, v1}, Lcom/openx/view/WebViewBase;->loadUrl(Ljava/lang/String;)V

    .line 295
    :cond_0
    :goto_0
    return v5

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/openx/view/AdWebViewClient;->urls:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 232
    iget-boolean v0, p0, Lcom/openx/view/AdWebViewClient;->loadingFinished:Z

    if-nez v0, :cond_2

    .line 234
    iput-boolean v5, p0, Lcom/openx/view/AdWebViewClient;->redirect:Z

    .line 237
    :cond_2
    iput-boolean v4, p0, Lcom/openx/view/AdWebViewClient;->loadingFinished:Z

    .line 239
    const-string v0, "opening_url"

    invoke-static {v0}, Lcom/openx/common/utils/helpers/Utils;->getLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 241
    iget-object v0, p0, Lcom/openx/view/AdWebViewClient;->adWebView:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->getAd()Lcom/openx/model/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/model/Ad;->getCreative()Lcom/openx/model/AdCreative;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/openx/model/AdCreative;->getTracking()Lcom/openx/model/AdTracking;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/openx/model/AdCreative;->getTracking()Lcom/openx/model/AdTracking;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/model/AdTracking;->getClickURL()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 244
    :goto_1
    const-string v0, "AdWebViewClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "######### : shouldOverrideUrlLoading :clickURL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 249
    const-string v0, "?"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 250
    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 252
    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 262
    :cond_3
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 264
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/openx/view/AdWebViewClient;->clickTracked:Z

    if-nez v0, :cond_4

    .line 267
    const-string v0, "Tracking Click"

    invoke-static {p0, v0}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 268
    iput-boolean v5, p0, Lcom/openx/view/AdWebViewClient;->clickTracked:Z

    .line 270
    iget-object v0, p0, Lcom/openx/view/AdWebViewClient;->adWebView:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->getPreloadedListener()Lcom/openx/view/video/PreloadManager$PreloadedListener;

    move-result-object v0

    check-cast v0, Lcom/openx/view/AdBase;

    invoke-virtual {v0}, Lcom/openx/view/AdBase;->getAdModel()Lcom/openx/model/AdModel;

    move-result-object v0

    const-string v2, "click"

    invoke-virtual {v0, v2, v1}, Lcom/openx/model/AdModel;->trackAdModelEvents(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_4
    iget-object v0, p0, Lcom/openx/view/AdWebViewClient;->adWebView:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->getMRAID()Lcom/openx/view/mraid/BaseJSInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 279
    iput-boolean v5, p0, Lcom/openx/view/AdWebViewClient;->loadingFinished:Z

    .line 280
    iput-boolean v4, p0, Lcom/openx/view/AdWebViewClient;->pageFinished:Z

    .line 281
    iput-boolean v4, p0, Lcom/openx/view/AdWebViewClient;->redirect:Z

    .line 282
    iget-object v0, p0, Lcom/openx/view/AdWebViewClient;->urls:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 284
    iget-object v0, p0, Lcom/openx/view/AdWebViewClient;->adWebView:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->getAdEventsListener()Lcom/openx/view/AdEventsListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 287
    iget-object v0, p0, Lcom/openx/view/AdWebViewClient;->adWebView:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->getAdEventsListener()Lcom/openx/view/AdEventsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/openx/view/AdEventsListener;->onAdClicked()V

    .line 289
    :cond_5
    iget-object v0, p0, Lcom/openx/view/AdWebViewClient;->adWebView:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->getMRAID()Lcom/openx/view/mraid/BaseJSInterface;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/openx/view/mraid/BaseJSInterface;->open(Ljava/lang/String;)V

    .line 291
    iput-boolean v4, p0, Lcom/openx/view/AdWebViewClient;->clickTracked:Z

    goto/16 :goto_0

    .line 243
    :cond_6
    const/4 v0, 0x0

    move-object v1, v0

    goto/16 :goto_1
.end method
