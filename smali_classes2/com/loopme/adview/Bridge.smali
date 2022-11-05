.class public Lcom/loopme/adview/Bridge;
.super Landroid/webkit/WebViewClient;
.source "Bridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loopme/adview/Bridge$Listener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final LOOPME:Ljava/lang/String; = "loopme"

.field private static final QUERY_PARAM_CURRENT_TIME:Ljava/lang/String; = "currentTime"

.field private static final QUERY_PARAM_FULLSCREEN_MODE:Ljava/lang/String; = "mode"

.field private static final QUERY_PARAM_MUTE:Ljava/lang/String; = "mute"

.field private static final QUERY_PARAM_SRC:Ljava/lang/String; = "src"

.field private static final VIDEO:Ljava/lang/String; = "video"

.field private static final VIDEO_DISABLE_STRETCH:Ljava/lang/String; = "/disableStretching"

.field private static final VIDEO_ENABLE_STRETCH:Ljava/lang/String; = "/enableStretching"

.field private static final VIDEO_LOAD:Ljava/lang/String; = "/load"

.field private static final VIDEO_MUTE:Ljava/lang/String; = "/mute"

.field private static final VIDEO_PAUSE:Ljava/lang/String; = "/pause"

.field private static final VIDEO_PLAY:Ljava/lang/String; = "/play"

.field private static final WEBVIEW:Ljava/lang/String; = "webview"

.field private static final WEBVIEW_CLOSE:Ljava/lang/String; = "/close"

.field private static final WEBVIEW_FAIL:Ljava/lang/String; = "/fail"

.field private static final WEBVIEW_FULLSCREEN:Ljava/lang/String; = "/fullscreenMode"

.field private static final WEBVIEW_SUCCESS:Ljava/lang/String; = "/success"

.field private static final WEBVIEW_VIBRATE:Ljava/lang/String; = "/vibrate"


# instance fields
.field private mListener:Lcom/loopme/adview/Bridge$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/loopme/adview/Bridge;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loopme/adview/Bridge;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/loopme/adview/Bridge$Listener;)V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 70
    if-eqz p1, :cond_0

    .line 71
    iput-object p1, p0, Lcom/loopme/adview/Bridge;->mListener:Lcom/loopme/adview/Bridge$Listener;

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    sget-object v0, Lcom/loopme/adview/Bridge;->LOG_TAG:Ljava/lang/String;

    const-string v1, "VideoBridgeListener should not be null"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private detectQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 256
    const/4 v0, 0x0

    .line 258
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 264
    :goto_0
    return-object v0

    .line 259
    :catch_0
    move-exception v1

    .line 260
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 261
    :catch_1
    move-exception v1

    .line 262
    invoke-virtual {v1}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_0
.end method

.method private handleFullscreenMode(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 158
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 159
    const-string v1, "mode"

    invoke-direct {p0, v0, v1}, Lcom/loopme/adview/Bridge;->detectQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-direct {p0, v0}, Lcom/loopme/adview/Bridge;->isValidBooleanParameter(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 161
    const-string v0, "Empty parameter in js command: fullscreen mode"

    const-string v1, "js"

    invoke-static {v0, v1}, Lcom/loopme/debugging/ErrorLog;->post(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/loopme/adview/Bridge;->mListener:Lcom/loopme/adview/Bridge$Listener;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/loopme/adview/Bridge$Listener;->onJsFullscreenMode(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 168
    :catch_1
    move-exception v0

    .line 169
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_0
.end method

.method private handleVibrate(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 182
    :try_start_0
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 183
    if-eqz v0, :cond_0

    .line 184
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    sget-object v0, Lcom/loopme/adview/Bridge;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Missing permission for vibrate"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleVideoCommands(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 193
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/loopme/adview/Bridge;->mListener:Lcom/loopme/adview/Bridge$Listener;

    if-nez v1, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 205
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 207
    :pswitch_0
    const-string v0, "src"

    invoke-direct {p0, v3, v0}, Lcom/loopme/adview/Bridge;->detectQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 209
    iget-object v1, p0, Lcom/loopme/adview/Bridge;->mListener:Lcom/loopme/adview/Bridge$Listener;

    invoke-interface {v1, v0}, Lcom/loopme/adview/Bridge$Listener;->onJsVideoLoad(Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 205
    :sswitch_0
    const-string v4, "/load"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v0

    goto :goto_1

    :sswitch_1
    const-string v4, "/mute"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    goto :goto_1

    :sswitch_2
    const-string v4, "/play"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v4, "/pause"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v4, "/enableStretching"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_5
    const-string v4, "/disableStretching"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x5

    goto :goto_1

    .line 211
    :cond_3
    const-string v0, "Empty parameter in js command: src"

    const-string v1, "js"

    invoke-static {v0, v1}, Lcom/loopme/debugging/ErrorLog;->post(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 216
    :pswitch_1
    const-string v0, "mute"

    invoke-direct {p0, v3, v0}, Lcom/loopme/adview/Bridge;->detectQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-direct {p0, v0}, Lcom/loopme/adview/Bridge;->isValidBooleanParameter(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 218
    iget-object v1, p0, Lcom/loopme/adview/Bridge;->mListener:Lcom/loopme/adview/Bridge$Listener;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/loopme/adview/Bridge$Listener;->onJsVideoMute(Z)V

    goto/16 :goto_0

    .line 220
    :cond_4
    const-string v0, "Empty parameter in js command: mute"

    const-string v1, "js"

    invoke-static {v0, v1}, Lcom/loopme/debugging/ErrorLog;->post(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 225
    :pswitch_2
    const-string v1, "currentTime"

    invoke-direct {p0, v3, v1}, Lcom/loopme/adview/Bridge;->detectQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 227
    if-eqz v1, :cond_5

    .line 228
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 230
    :cond_5
    iget-object v1, p0, Lcom/loopme/adview/Bridge;->mListener:Lcom/loopme/adview/Bridge$Listener;

    invoke-interface {v1, v0}, Lcom/loopme/adview/Bridge$Listener;->onJsVideoPlay(I)V

    goto/16 :goto_0

    .line 234
    :pswitch_3
    const-string v1, "currentTime"

    invoke-direct {p0, v3, v1}, Lcom/loopme/adview/Bridge;->detectQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 236
    if-eqz v1, :cond_6

    .line 237
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 239
    :cond_6
    iget-object v1, p0, Lcom/loopme/adview/Bridge;->mListener:Lcom/loopme/adview/Bridge$Listener;

    invoke-interface {v1, v0}, Lcom/loopme/adview/Bridge$Listener;->onJsVideoPause(I)V

    goto/16 :goto_0

    .line 243
    :pswitch_4
    iget-object v0, p0, Lcom/loopme/adview/Bridge;->mListener:Lcom/loopme/adview/Bridge$Listener;

    invoke-interface {v0, v2}, Lcom/loopme/adview/Bridge$Listener;->onJsVideoStretch(Z)V

    goto/16 :goto_0

    .line 247
    :pswitch_5
    iget-object v1, p0, Lcom/loopme/adview/Bridge;->mListener:Lcom/loopme/adview/Bridge$Listener;

    invoke-interface {v1, v0}, Lcom/loopme/adview/Bridge$Listener;->onJsVideoStretch(Z)V

    goto/16 :goto_0

    .line 205
    :sswitch_data_0
    .sparse-switch
        -0x661a6d31 -> :sswitch_4
        -0x5496688a -> :sswitch_5
        0x2c91595 -> :sswitch_0
        0x2c9a2c8 -> :sswitch_1
        0x2cadbe3 -> :sswitch_2
        0x568beb27 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private handleWebviewCommands(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 126
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/loopme/adview/Bridge;->mListener:Lcom/loopme/adview/Bridge$Listener;

    if-nez v0, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 132
    :pswitch_0
    iget-object v0, p0, Lcom/loopme/adview/Bridge;->mListener:Lcom/loopme/adview/Bridge$Listener;

    invoke-interface {v0}, Lcom/loopme/adview/Bridge$Listener;->onJsClose()V

    goto :goto_0

    .line 130
    :sswitch_0
    const-string v1, "/close"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v1, "/vibrate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v1, "/fail"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v1, "/success"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v1, "/fullscreenMode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x4

    goto :goto_1

    .line 136
    :pswitch_1
    invoke-direct {p0, p3}, Lcom/loopme/adview/Bridge;->handleVibrate(Landroid/content/Context;)V

    goto :goto_0

    .line 140
    :pswitch_2
    iget-object v0, p0, Lcom/loopme/adview/Bridge;->mListener:Lcom/loopme/adview/Bridge$Listener;

    const-string v1, "Ad received specific URL loopme://webview/fail"

    invoke-interface {v0, v1}, Lcom/loopme/adview/Bridge$Listener;->onJsLoadFail(Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :pswitch_3
    iget-object v0, p0, Lcom/loopme/adview/Bridge;->mListener:Lcom/loopme/adview/Bridge$Listener;

    invoke-interface {v0}, Lcom/loopme/adview/Bridge$Listener;->onJsLoadSuccess()V

    goto :goto_0

    .line 148
    :pswitch_4
    invoke-direct {p0, p2}, Lcom/loopme/adview/Bridge;->handleFullscreenMode(Ljava/lang/String;)V

    goto :goto_0

    .line 130
    nop

    :sswitch_data_0
    .sparse-switch
        -0x5cf3830c -> :sswitch_3
        0x2c627cd -> :sswitch_2
        0x2d3db260 -> :sswitch_1
        0x55d9a329 -> :sswitch_0
        0x761255ed -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private isValidBooleanParameter(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 174
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "true"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "false"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 277
    sget-object v0, Lcom/loopme/adview/Bridge;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onPageStarted"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 279
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 269
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/loopme/adview/Bridge;->mListener:Lcom/loopme/adview/Bridge$Listener;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/loopme/adview/Bridge;->mListener:Lcom/loopme/adview/Bridge$Listener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/loopme/adview/Bridge$Listener;->onJsLoadFail(Ljava/lang/String;)V

    .line 273
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 79
    sget-object v1, Lcom/loopme/adview/Bridge;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shouldOverrideUrlLoading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broken redirect in bridge: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "js"

    invoke-static {v1, v2}, Lcom/loopme/debugging/ErrorLog;->post(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_0
    :goto_0
    return v0

    .line 86
    :cond_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 89
    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 98
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 102
    const-string v4, "loopme"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 103
    check-cast p1, Lcom/loopme/adview/AdView;

    invoke-virtual {p1}, Lcom/loopme/adview/AdView;->sendNativeCallFinished()V

    .line 104
    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 105
    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 110
    const-string v0, "webview"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 111
    invoke-direct {p0, v2, p2, v1}, Lcom/loopme/adview/Bridge;->handleWebviewCommands(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 121
    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 90
    :catch_0
    move-exception v1

    .line 91
    sget-object v2, Lcom/loopme/adview/Bridge;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v1}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broken redirect in bridge: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "js"

    invoke-static {v1, v2}, Lcom/loopme/debugging/ErrorLog;->post(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_3
    const-string v0, "video"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    invoke-direct {p0, v2, p2}, Lcom/loopme/adview/Bridge;->handleVideoCommands(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 116
    :cond_4
    iget-object v0, p0, Lcom/loopme/adview/Bridge;->mListener:Lcom/loopme/adview/Bridge$Listener;

    if-eqz v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/loopme/adview/Bridge;->mListener:Lcom/loopme/adview/Bridge$Listener;

    invoke-interface {v0, p2}, Lcom/loopme/adview/Bridge$Listener;->onNonLoopMe(Ljava/lang/String;)V

    goto :goto_1
.end method
