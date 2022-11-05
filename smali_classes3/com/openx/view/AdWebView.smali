.class public Lcom/openx/view/AdWebView;
.super Landroid/webkit/WebView;
.source "AdWebView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AdWebView"


# instance fields
.field protected ad:Lcom/openx/model/Ad;

.field private adAssetsLoadedListener:Lcom/openx/view/AdWebViewClient$AdAssetsLoadedListener;

.field private adWebViewClient:Lcom/openx/view/AdWebViewClient;

.field private isPortrait:Z

.field private mScale:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/openx/model/Ad;Z)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 36
    iput-boolean p3, p0, Lcom/openx/view/AdWebView;->isPortrait:Z

    .line 38
    iput-object p2, p0, Lcom/openx/view/AdWebView;->ad:Lcom/openx/model/Ad;

    .line 40
    invoke-virtual {p0}, Lcom/openx/view/AdWebView;->init()V

    .line 41
    return-void
.end method

.method private calculateFactor(IIII)F
    .locals 8

    .prologue
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v2, 0x42c80000    # 100.0f

    .line 192
    .line 194
    invoke-static {}, Lcom/openx/core/sdk/OXMManagersResolver;->getInstance()Lcom/openx/core/sdk/OXMManagersResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/core/sdk/OXMManagersResolver;->getDeviceManager()Lcom/openx/common/deviceData/listeners/DeviceInfoListener;

    move-result-object v0

    .line 196
    invoke-interface {v0}, Lcom/openx/common/deviceData/listeners/DeviceInfoListener;->getDeviceOrientation()I

    move-result v0

    .line 200
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 202
    iget-boolean v0, p0, Lcom/openx/view/AdWebView;->isPortrait:Z

    if-eqz v0, :cond_1

    if-ge p3, p2, :cond_1

    .line 204
    int-to-float v0, p1

    mul-float/2addr v0, v2

    int-to-float v1, p3

    div-float/2addr v0, v1

    .line 244
    :goto_0
    float-to-double v2, v0

    invoke-virtual {p0}, Lcom/openx/view/AdWebView;->densityScalingFactor()D

    move-result-wide v4

    mul-double/2addr v4, v6

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/openx/view/AdWebView;->densityScalingFactor()D

    move-result-wide v0

    mul-double/2addr v0, v6

    double-to-float v0, v0

    .line 251
    :cond_0
    return v0

    .line 207
    :cond_1
    iget-boolean v0, p0, Lcom/openx/view/AdWebView;->isPortrait:Z

    if-eqz v0, :cond_2

    if-le p3, p2, :cond_2

    .line 209
    int-to-float v0, p2

    mul-float/2addr v0, v2

    int-to-float v1, p3

    div-float/2addr v0, v1

    add-float/2addr v0, v3

    goto :goto_0

    .line 212
    :cond_2
    if-ge p3, p2, :cond_3

    .line 214
    int-to-float v0, p2

    mul-float/2addr v0, v2

    int-to-float v1, p3

    div-float/2addr v0, v1

    goto :goto_0

    .line 221
    :cond_3
    int-to-float v0, p2

    mul-float/2addr v0, v2

    int-to-float v1, p3

    div-float/2addr v0, v1

    add-float/2addr v0, v3

    goto :goto_0

    .line 231
    :cond_4
    if-ge p3, p1, :cond_5

    .line 233
    int-to-float v0, p1

    mul-float/2addr v0, v2

    int-to-float v1, p3

    div-float/2addr v0, v1

    goto :goto_0

    .line 238
    :cond_5
    int-to-float v0, p1

    mul-float/2addr v0, v2

    int-to-float v1, p3

    div-float/2addr v0, v1

    add-float/2addr v0, v3

    goto :goto_0
.end method


# virtual methods
.method public densityScalingFactor()D
    .locals 2

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/openx/view/AdWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public getInitialScaleValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/openx/view/AdWebView;->mScale:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/openx/view/AdWebView;->mScale:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected init()V
    .locals 0

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/openx/view/AdWebView;->initializeWebView()V

    .line 76
    invoke-virtual {p0}, Lcom/openx/view/AdWebView;->initializeWebSettings()V

    .line 87
    return-void
.end method

.method protected initializeWebSettings()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 101
    invoke-virtual {p0}, Lcom/openx/view/AdWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    .line 103
    invoke-virtual {p0}, Lcom/openx/view/AdWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 104
    invoke-virtual {p0}, Lcom/openx/view/AdWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 106
    if-ge v1, v0, :cond_0

    move v2, v1

    .line 107
    :goto_0
    if-le v1, v0, :cond_1

    .line 109
    :goto_1
    iget-object v0, p0, Lcom/openx/view/AdWebView;->ad:Lcom/openx/model/Ad;

    invoke-virtual {v0}, Lcom/openx/model/Ad;->getCreative()Lcom/openx/model/AdCreative;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_3

    .line 113
    invoke-virtual {v0}, Lcom/openx/model/AdCreative;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Lcom/openx/model/AdCreative;->getHeight()I

    move-result v5

    invoke-direct {p0, v2, v1, v4, v5}, Lcom/openx/view/AdWebView;->calculateFactor(IIII)F

    move-result v1

    .line 114
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/openx/view/AdWebView;->setInitialScale(I)V

    .line 116
    invoke-static {}, Lcom/openx/common/utils/helpers/Utils;->atLeastKitKat()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 118
    const-string v1, "AdWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AdWebView: initializeWebSettings: (regular creative) width: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/openx/model/AdCreative;->getWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "regular height: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/openx/model/AdCreative;->getHeight()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 120
    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 121
    sget-object v0, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 122
    invoke-virtual {v3, v8}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 124
    invoke-virtual {p0}, Lcom/openx/view/AdWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 126
    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 127
    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 129
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 188
    :goto_2
    return-void

    :cond_0
    move v2, v0

    .line 106
    goto :goto_0

    :cond_1
    move v1, v0

    .line 107
    goto :goto_1

    .line 134
    :cond_2
    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 135
    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 136
    sget-object v0, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 137
    invoke-virtual {v3, v8}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 139
    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 141
    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 142
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    goto :goto_2

    .line 147
    :cond_3
    iget-object v0, p0, Lcom/openx/view/AdWebView;->ad:Lcom/openx/model/Ad;

    instance-of v0, v0, Lcom/openx/view/tp/chain/parser/ChainItem;

    if-eqz v0, :cond_5

    .line 149
    const-string v4, "AdWebView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AdWebView: initializeWebSettings: chainItem width: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p0, Lcom/openx/view/AdWebView;->ad:Lcom/openx/model/Ad;

    check-cast v0, Lcom/openx/view/tp/chain/parser/ChainItem;

    iget v0, v0, Lcom/openx/view/tp/chain/parser/ChainItem;->width:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "chain height: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p0, Lcom/openx/view/AdWebView;->ad:Lcom/openx/model/Ad;

    check-cast v0, Lcom/openx/view/tp/chain/parser/ChainItem;

    iget v0, v0, Lcom/openx/view/tp/chain/parser/ChainItem;->height:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/openx/view/AdWebView;->ad:Lcom/openx/model/Ad;

    check-cast v0, Lcom/openx/view/tp/chain/parser/ChainItem;

    iget v4, v0, Lcom/openx/view/tp/chain/parser/ChainItem;->width:I

    iget-object v0, p0, Lcom/openx/view/AdWebView;->ad:Lcom/openx/model/Ad;

    check-cast v0, Lcom/openx/view/tp/chain/parser/ChainItem;

    iget v0, v0, Lcom/openx/view/tp/chain/parser/ChainItem;->height:I

    invoke-direct {p0, v2, v1, v4, v0}, Lcom/openx/view/AdWebView;->calculateFactor(IIII)F

    move-result v0

    .line 151
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/openx/view/AdWebView;->setInitialScale(I)V

    .line 153
    invoke-static {}, Lcom/openx/common/utils/helpers/Utils;->atLeastKitKat()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 156
    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 157
    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 158
    sget-object v0, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 159
    invoke-virtual {v3, v8}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 161
    invoke-virtual {p0}, Lcom/openx/view/AdWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 163
    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 164
    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 166
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    goto/16 :goto_2

    .line 171
    :cond_4
    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 172
    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 173
    sget-object v0, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 174
    invoke-virtual {v3, v8}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 176
    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 178
    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 179
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    goto/16 :goto_2

    .line 186
    :cond_5
    const-string v0, "AdWebView"

    const-string v1, "AdWebView: initializeWebSettings:(How did you come here?!): No value for ad\'s width & height!! "

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method protected initializeWebView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-virtual {p0, v1}, Lcom/openx/view/AdWebView;->setScrollBarStyle(I)V

    .line 92
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/openx/view/AdWebView;->setFocusable(Z)V

    .line 94
    invoke-virtual {p0, v1}, Lcom/openx/view/AdWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 95
    invoke-virtual {p0, v1}, Lcom/openx/view/AdWebView;->setVerticalScrollBarEnabled(Z)V

    .line 97
    return-void
.end method

.method public setAdAssetsLoadListener(Lcom/openx/view/AdWebViewClient$AdAssetsLoadedListener;)V
    .locals 2

    .prologue
    .line 62
    iput-object p1, p0, Lcom/openx/view/AdWebView;->adAssetsLoadedListener:Lcom/openx/view/AdWebViewClient$AdAssetsLoadedListener;

    .line 64
    iget-object v0, p0, Lcom/openx/view/AdWebView;->adWebViewClient:Lcom/openx/view/AdWebViewClient;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/openx/view/AdWebViewClient;

    iget-object v1, p0, Lcom/openx/view/AdWebView;->adAssetsLoadedListener:Lcom/openx/view/AdWebViewClient$AdAssetsLoadedListener;

    invoke-direct {v0, v1}, Lcom/openx/view/AdWebViewClient;-><init>(Lcom/openx/view/AdWebViewClient$AdAssetsLoadedListener;)V

    iput-object v0, p0, Lcom/openx/view/AdWebView;->adWebViewClient:Lcom/openx/view/AdWebViewClient;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/openx/view/AdWebView;->adWebViewClient:Lcom/openx/view/AdWebViewClient;

    invoke-virtual {p0, v0}, Lcom/openx/view/AdWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 70
    return-void
.end method

.method public setInitialScale(I)V
    .locals 1

    .prologue
    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/view/AdWebView;->mScale:Ljava/lang/Integer;

    .line 48
    return-void
.end method
