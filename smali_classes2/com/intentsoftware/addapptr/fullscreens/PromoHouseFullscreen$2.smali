.class Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen$2;
.super Landroid/webkit/WebViewClient;
.source "PromoHouseFullscreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->createWebViewClient()Landroid/webkit/WebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 146
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 147
    const-string v0, "krassapp://close"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "internal:noad"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->access$300(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;

    const-string v1, "response close or noad"

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->access$500(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;Ljava/lang/String;)V

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->access$302(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;Z)Z

    .line 155
    :cond_2
    :goto_0
    return-void

    .line 152
    :cond_3
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->access$300(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->access$600(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;)V

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 201
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->access$300(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->access$700(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->access$700(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 205
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->access$702(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "webview received error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->access$1100(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->access$302(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;Z)Z

    .line 210
    :cond_1
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 160
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 161
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->access$300(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->access$700(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->access$700(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 164
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->access$702(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "webview received error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->access$800(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->access$302(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;Z)Z

    .line 169
    :cond_1
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 174
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 175
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->access$300(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->access$700(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->access$700(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 178
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->access$702(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "webview received HTTP error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->access$900(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->access$302(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;Z)Z

    .line 183
    :cond_1
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 188
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 189
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->access$300(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->access$700(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->access$700(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 192
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->access$702(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "webview received SSL error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->access$1000(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;->access$302(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;Z)Z

    .line 197
    :cond_1
    return-void
.end method
