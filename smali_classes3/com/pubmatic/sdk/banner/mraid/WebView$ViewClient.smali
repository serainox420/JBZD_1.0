.class Lcom/pubmatic/sdk/banner/mraid/WebView$ViewClient;
.super Landroid/webkit/WebViewClient;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/banner/mraid/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubmatic/sdk/banner/mraid/WebView;


# direct methods
.method public constructor <init>(Lcom/pubmatic/sdk/banner/mraid/WebView;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/mraid/WebView$ViewClient;->this$0:Lcom/pubmatic/sdk/banner/mraid/WebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 132
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/mraid/WebView$ViewClient;->initJavascriptBridge()V

    .line 133
    return-void
.end method


# virtual methods
.method protected initJavascriptBridge()V
    .locals 5

    .prologue
    .line 136
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/mraid/WebView$ViewClient;->this$0:Lcom/pubmatic/sdk/banner/mraid/WebView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/mraid/WebView;->access$200(Lcom/pubmatic/sdk/banner/mraid/WebView;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 138
    :try_start_0
    const-class v0, Lcom/pubmatic/sdk/banner/mraid/WebView;

    const-string v1, "/MASTMRAIDController.js"

    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 140
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v0, 0x4000

    invoke-direct {v1, v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    const/16 v2, 0x1000

    new-array v2, v2, [C

    .line 145
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/BufferedReader;->read([C)I

    move-result v3

    .line 146
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 150
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/mraid/WebView$ViewClient;->this$0:Lcom/pubmatic/sdk/banner/mraid/WebView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/pubmatic/sdk/banner/mraid/WebView;->access$202(Lcom/pubmatic/sdk/banner/mraid/WebView;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :cond_0
    :goto_1
    return-void

    .line 148
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PM-WebView : Error during injecting mraid script in creative. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 153
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;->Error:Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    .line 152
    invoke-static {v0, v1}, Lcom/pubmatic/sdk/common/PMLogger;->logEvent(Ljava/lang/String;Lcom/pubmatic/sdk/common/PMLogger$LogLevel;)V

    goto :goto_1
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 171
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/mraid/WebView$ViewClient;->this$0:Lcom/pubmatic/sdk/banner/mraid/WebView;

    invoke-static {v0, v2}, Lcom/pubmatic/sdk/banner/mraid/WebView;->access$302(Lcom/pubmatic/sdk/banner/mraid/WebView;Z)Z

    .line 175
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/mraid/WebView$ViewClient;->this$0:Lcom/pubmatic/sdk/banner/mraid/WebView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/mraid/WebView;->access$400(Lcom/pubmatic/sdk/banner/mraid/WebView;)Lcom/pubmatic/sdk/banner/mraid/WebView$Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/mraid/WebView$ViewClient;->this$0:Lcom/pubmatic/sdk/banner/mraid/WebView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/mraid/WebView;->access$400(Lcom/pubmatic/sdk/banner/mraid/WebView;)Lcom/pubmatic/sdk/banner/mraid/WebView$Handler;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/pubmatic/sdk/banner/mraid/WebView;

    invoke-interface {v1, v0}, Lcom/pubmatic/sdk/banner/mraid/WebView$Handler;->webViewPageFinished(Lcom/pubmatic/sdk/banner/mraid/WebView;)V

    .line 178
    :cond_0
    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 179
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 161
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 163
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/mraid/WebView$ViewClient;->this$0:Lcom/pubmatic/sdk/banner/mraid/WebView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/banner/mraid/WebView;->access$302(Lcom/pubmatic/sdk/banner/mraid/WebView;Z)Z

    .line 165
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/mraid/WebView$ViewClient;->this$0:Lcom/pubmatic/sdk/banner/mraid/WebView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/mraid/WebView;->access$400(Lcom/pubmatic/sdk/banner/mraid/WebView;)Lcom/pubmatic/sdk/banner/mraid/WebView$Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/mraid/WebView$ViewClient;->this$0:Lcom/pubmatic/sdk/banner/mraid/WebView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/mraid/WebView;->access$400(Lcom/pubmatic/sdk/banner/mraid/WebView;)Lcom/pubmatic/sdk/banner/mraid/WebView$Handler;

    move-result-object v0

    check-cast p1, Lcom/pubmatic/sdk/banner/mraid/WebView;

    invoke-interface {v0, p1}, Lcom/pubmatic/sdk/banner/mraid/WebView$Handler;->webViewPageStarted(Lcom/pubmatic/sdk/banner/mraid/WebView;)V

    .line 167
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 184
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/mraid/WebView$ViewClient;->this$0:Lcom/pubmatic/sdk/banner/mraid/WebView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/mraid/WebView;->access$400(Lcom/pubmatic/sdk/banner/mraid/WebView;)Lcom/pubmatic/sdk/banner/mraid/WebView$Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/mraid/WebView$ViewClient;->this$0:Lcom/pubmatic/sdk/banner/mraid/WebView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/mraid/WebView;->access$400(Lcom/pubmatic/sdk/banner/mraid/WebView;)Lcom/pubmatic/sdk/banner/mraid/WebView$Handler;

    move-result-object v0

    check-cast p1, Lcom/pubmatic/sdk/banner/mraid/WebView;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/pubmatic/sdk/banner/mraid/WebView$Handler;->webViewReceivedError(Lcom/pubmatic/sdk/banner/mraid/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 194
    const/4 v0, 0x0

    .line 196
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/mraid/WebView$ViewClient;->this$0:Lcom/pubmatic/sdk/banner/mraid/WebView;

    invoke-static {v1}, Lcom/pubmatic/sdk/banner/mraid/WebView;->access$400(Lcom/pubmatic/sdk/banner/mraid/WebView;)Lcom/pubmatic/sdk/banner/mraid/WebView$Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 197
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/mraid/WebView$ViewClient;->this$0:Lcom/pubmatic/sdk/banner/mraid/WebView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/mraid/WebView;->access$400(Lcom/pubmatic/sdk/banner/mraid/WebView;)Lcom/pubmatic/sdk/banner/mraid/WebView$Handler;

    move-result-object v0

    check-cast p1, Lcom/pubmatic/sdk/banner/mraid/WebView;

    invoke-interface {v0, p1, p2}, Lcom/pubmatic/sdk/banner/mraid/WebView$Handler;->webViewShouldOverrideUrlLoading(Lcom/pubmatic/sdk/banner/mraid/WebView;Ljava/lang/String;)Z

    move-result v0

    .line 199
    :cond_0
    return v0
.end method
