.class public Lcom/loopme/adview/AdView;
.super Landroid/webkit/WebView;
.source "AdView.java"

# interfaces
.implements Lcom/loopme/adview/Bridge$Listener;
.implements Lcom/loopme/adview/BridgeInterface;


# static fields
.field public static final CHROME_USER_AGENT:Ljava/lang/String;

.field public static final DEFAULT_CHROME_USER_AGENT:Ljava/lang/String; = "Mozilla/5.0 (Linux; Android 4.4.2; Nexus 4 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.114 Mobile Safari/537.36"

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private volatile mBridge:Lcom/loopme/adview/Bridge;

.field private mBridgeListener:Lcom/loopme/adview/Bridge$Listener;

.field private mCurrentVideoState:I

.field private mViewState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/loopme/adview/AdView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loopme/adview/AdView;->LOG_TAG:Ljava/lang/String;

    .line 27
    invoke-static {}, Lcom/loopme/adview/AdView;->initUserAgent()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loopme/adview/AdView;->CHROME_USER_AGENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/loopme/adview/AdView;->mCurrentVideoState:I

    .line 33
    const/4 v0, 0x3

    iput v0, p0, Lcom/loopme/adview/AdView;->mViewState:I

    .line 37
    invoke-direct {p0}, Lcom/loopme/adview/AdView;->init()V

    .line 38
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-virtual {p0}, Lcom/loopme/adview/AdView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 71
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 73
    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 75
    invoke-virtual {p0, v2}, Lcom/loopme/adview/AdView;->setVerticalScrollBarEnabled(Z)V

    .line 76
    invoke-virtual {p0, v2}, Lcom/loopme/adview/AdView;->setHorizontalScrollBarEnabled(Z)V

    .line 78
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 80
    sget-object v1, Lcom/loopme/adview/AdView;->CHROME_USER_AGENT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 82
    new-instance v0, Lcom/loopme/adview/AdViewChromeClient;

    invoke-direct {v0}, Lcom/loopme/adview/AdViewChromeClient;-><init>()V

    invoke-virtual {p0, v0}, Lcom/loopme/adview/AdView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 84
    new-instance v0, Lcom/loopme/adview/Bridge;

    invoke-direct {v0, p0}, Lcom/loopme/adview/Bridge;-><init>(Lcom/loopme/adview/Bridge$Listener;)V

    iput-object v0, p0, Lcom/loopme/adview/AdView;->mBridge:Lcom/loopme/adview/Bridge;

    .line 85
    iget-object v0, p0, Lcom/loopme/adview/AdView;->mBridge:Lcom/loopme/adview/Bridge;

    invoke-virtual {p0, v0}, Lcom/loopme/adview/AdView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 86
    return-void
.end method

.method private static initUserAgent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    const-string v0, "Mozilla/5.0 (Linux; Android 4.4.2; Nexus 4 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.114 Mobile Safari/537.36"

    .line 45
    :cond_0
    return-object v0
.end method


# virtual methods
.method public addBridgeListener(Lcom/loopme/adview/Bridge$Listener;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/loopme/adview/AdView;->mBridgeListener:Lcom/loopme/adview/Bridge$Listener;

    .line 67
    return-void
.end method

.method public computeScroll()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public getCurrentVideoState()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/loopme/adview/AdView;->mCurrentVideoState:I

    return v0
.end method

.method public getCurrentWebViewState()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/loopme/adview/AdView;->mViewState:I

    return v0
.end method

.method public onJsClose()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/loopme/adview/AdView;->mBridgeListener:Lcom/loopme/adview/Bridge$Listener;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/loopme/adview/AdView;->mBridgeListener:Lcom/loopme/adview/Bridge$Listener;

    invoke-interface {v0}, Lcom/loopme/adview/Bridge$Listener;->onJsClose()V

    .line 164
    :cond_0
    return-void
.end method

.method public onJsFullscreenMode(Z)V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/loopme/adview/AdView;->mBridgeListener:Lcom/loopme/adview/Bridge$Listener;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/loopme/adview/AdView;->mBridgeListener:Lcom/loopme/adview/Bridge$Listener;

    invoke-interface {v0, p1}, Lcom/loopme/adview/Bridge$Listener;->onJsFullscreenMode(Z)V

    .line 185
    :cond_0
    return-void
.end method

.method public onJsLoadFail(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/loopme/adview/AdView;->mBridgeListener:Lcom/loopme/adview/Bridge$Listener;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/loopme/adview/AdView;->mBridgeListener:Lcom/loopme/adview/Bridge$Listener;

    invoke-interface {v0, p1}, Lcom/loopme/adview/Bridge$Listener;->onJsLoadFail(Ljava/lang/String;)V

    .line 178
    :cond_0
    return-void
.end method

.method public onJsLoadSuccess()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/loopme/adview/AdView;->mBridgeListener:Lcom/loopme/adview/Bridge$Listener;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/loopme/adview/AdView;->mBridgeListener:Lcom/loopme/adview/Bridge$Listener;

    invoke-interface {v0}, Lcom/loopme/adview/Bridge$Listener;->onJsLoadSuccess()V

    .line 171
    :cond_0
    return-void
.end method

.method public onJsVideoLoad(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/loopme/adview/AdView;->mBridgeListener:Lcom/loopme/adview/Bridge$Listener;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/loopme/adview/AdView;->mBridgeListener:Lcom/loopme/adview/Bridge$Listener;

    invoke-interface {v0, p1}, Lcom/loopme/adview/Bridge$Listener;->onJsVideoLoad(Ljava/lang/String;)V

    .line 199
    :cond_0
    return-void
.end method

.method public onJsVideoMute(Z)V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/loopme/adview/AdView;->mBridgeListener:Lcom/loopme/adview/Bridge$Listener;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/loopme/adview/AdView;->mBridgeListener:Lcom/loopme/adview/Bridge$Listener;

    invoke-interface {v0, p1}, Lcom/loopme/adview/Bridge$Listener;->onJsVideoMute(Z)V

    .line 206
    :cond_0
    return-void
.end method

.method public onJsVideoPause(I)V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/loopme/adview/AdView;->mBridgeListener:Lcom/loopme/adview/Bridge$Listener;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/loopme/adview/AdView;->mBridgeListener:Lcom/loopme/adview/Bridge$Listener;

    invoke-interface {v0, p1}, Lcom/loopme/adview/Bridge$Listener;->onJsVideoPause(I)V

    .line 220
    :cond_0
    return-void
.end method

.method public onJsVideoPlay(I)V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/loopme/adview/AdView;->mBridgeListener:Lcom/loopme/adview/Bridge$Listener;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/loopme/adview/AdView;->mBridgeListener:Lcom/loopme/adview/Bridge$Listener;

    invoke-interface {v0, p1}, Lcom/loopme/adview/Bridge$Listener;->onJsVideoPlay(I)V

    .line 213
    :cond_0
    return-void
.end method

.method public onJsVideoStretch(Z)V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/loopme/adview/AdView;->mBridgeListener:Lcom/loopme/adview/Bridge$Listener;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/loopme/adview/AdView;->mBridgeListener:Lcom/loopme/adview/Bridge$Listener;

    invoke-interface {v0, p1}, Lcom/loopme/adview/Bridge$Listener;->onJsVideoStretch(Z)V

    .line 227
    :cond_0
    return-void
.end method

.method public onNonLoopMe(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/loopme/adview/AdView;->mBridgeListener:Lcom/loopme/adview/Bridge$Listener;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/loopme/adview/AdView;->mBridgeListener:Lcom/loopme/adview/Bridge$Listener;

    invoke-interface {v0, p1}, Lcom/loopme/adview/Bridge$Listener;->onNonLoopMe(Ljava/lang/String;)V

    .line 192
    :cond_0
    return-void
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public scrollTo(II)V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public send360Event(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 114
    new-instance v0, Lcom/loopme/adview/BridgeCommandBuilder;

    invoke-direct {v0}, Lcom/loopme/adview/BridgeCommandBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/loopme/adview/BridgeCommandBuilder;->event360(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-virtual {p0, v0}, Lcom/loopme/adview/AdView;->loadUrl(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public sendNativeCallFinished()V
    .locals 2

    .prologue
    .line 155
    new-instance v0, Lcom/loopme/adview/BridgeCommandBuilder;

    invoke-direct {v0}, Lcom/loopme/adview/BridgeCommandBuilder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/loopme/adview/BridgeCommandBuilder;->isNativeCallFinished(Z)Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-virtual {p0, v0}, Lcom/loopme/adview/AdView;->loadUrl(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public setFullscreenMode(Z)V
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lcom/loopme/adview/BridgeCommandBuilder;

    invoke-direct {v0}, Lcom/loopme/adview/BridgeCommandBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/loopme/adview/BridgeCommandBuilder;->fullscreenMode(Z)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-virtual {p0, v0}, Lcom/loopme/adview/AdView;->loadUrl(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public setVideoCurrentTime(I)V
    .locals 1

    .prologue
    .line 136
    new-instance v0, Lcom/loopme/adview/BridgeCommandBuilder;

    invoke-direct {v0}, Lcom/loopme/adview/BridgeCommandBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/loopme/adview/BridgeCommandBuilder;->videoCurrentTime(I)Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-virtual {p0, v0}, Lcom/loopme/adview/AdView;->loadUrl(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public setVideoDuration(I)V
    .locals 1

    .prologue
    .line 130
    new-instance v0, Lcom/loopme/adview/BridgeCommandBuilder;

    invoke-direct {v0}, Lcom/loopme/adview/BridgeCommandBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/loopme/adview/BridgeCommandBuilder;->videoDuration(I)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-virtual {p0, v0}, Lcom/loopme/adview/AdView;->loadUrl(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public setVideoMute(Z)V
    .locals 3

    .prologue
    .line 142
    sget-object v0, Lcom/loopme/adview/AdView;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MUTE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    new-instance v0, Lcom/loopme/adview/BridgeCommandBuilder;

    invoke-direct {v0}, Lcom/loopme/adview/BridgeCommandBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/loopme/adview/BridgeCommandBuilder;->videoMute(Z)Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-virtual {p0, v0}, Lcom/loopme/adview/AdView;->loadUrl(Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public setVideoState(I)V
    .locals 3

    .prologue
    .line 120
    iget v0, p0, Lcom/loopme/adview/AdView;->mCurrentVideoState:I

    if-eq v0, p1, :cond_0

    .line 121
    iput p1, p0, Lcom/loopme/adview/AdView;->mCurrentVideoState:I

    .line 122
    sget-object v0, Lcom/loopme/adview/AdView;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VIDEO : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/loopme/constants/VideoState;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance v0, Lcom/loopme/adview/BridgeCommandBuilder;

    invoke-direct {v0}, Lcom/loopme/adview/BridgeCommandBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/loopme/adview/BridgeCommandBuilder;->videoState(I)Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-virtual {p0, v0}, Lcom/loopme/adview/AdView;->loadUrl(Ljava/lang/String;)V

    .line 126
    :cond_0
    return-void
.end method

.method public setWebViewState(I)V
    .locals 3

    .prologue
    .line 94
    iget v0, p0, Lcom/loopme/adview/AdView;->mViewState:I

    if-eq v0, p1, :cond_0

    .line 95
    iput p1, p0, Lcom/loopme/adview/AdView;->mViewState:I

    .line 96
    sget-object v0, Lcom/loopme/adview/AdView;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WEBVIEW : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/loopme/constants/WebviewState;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    new-instance v0, Lcom/loopme/adview/BridgeCommandBuilder;

    invoke-direct {v0}, Lcom/loopme/adview/BridgeCommandBuilder;-><init>()V

    iget v1, p0, Lcom/loopme/adview/AdView;->mViewState:I

    invoke-virtual {v0, v1}, Lcom/loopme/adview/BridgeCommandBuilder;->webviewState(I)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-virtual {p0, v0}, Lcom/loopme/adview/AdView;->loadUrl(Ljava/lang/String;)V

    .line 100
    :cond_0
    return-void
.end method

.method public shake()V
    .locals 2

    .prologue
    .line 148
    sget-object v0, Lcom/loopme/adview/AdView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "SHAKE"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    new-instance v0, Lcom/loopme/adview/BridgeCommandBuilder;

    invoke-direct {v0}, Lcom/loopme/adview/BridgeCommandBuilder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/loopme/adview/BridgeCommandBuilder;->shake(Z)Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-virtual {p0, v0}, Lcom/loopme/adview/AdView;->loadUrl(Ljava/lang/String;)V

    .line 151
    return-void
.end method
