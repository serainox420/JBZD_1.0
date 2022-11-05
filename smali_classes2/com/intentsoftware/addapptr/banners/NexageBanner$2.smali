.class Lcom/intentsoftware/addapptr/banners/NexageBanner$2;
.super Landroid/webkit/WebViewClient;
.source "NexageBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/banners/NexageBanner;->createWebViewClient()Landroid/webkit/WebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/banners/NexageBanner;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/banners/NexageBanner;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner$2;->this$0:Lcom/intentsoftware/addapptr/banners/NexageBanner;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner$2;->this$0:Lcom/intentsoftware/addapptr/banners/NexageBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/NexageBanner;->access$1100(Lcom/intentsoftware/addapptr/banners/NexageBanner;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner$2;->this$0:Lcom/intentsoftware/addapptr/banners/NexageBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/NexageBanner;->access$1200(Lcom/intentsoftware/addapptr/banners/NexageBanner;)V

    .line 141
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 178
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner$2;->this$0:Lcom/intentsoftware/addapptr/banners/NexageBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/NexageBanner;->access$1100(Lcom/intentsoftware/addapptr/banners/NexageBanner;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner$2;->this$0:Lcom/intentsoftware/addapptr/banners/NexageBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/NexageBanner;->access$1300(Lcom/intentsoftware/addapptr/banners/NexageBanner;)V

    .line 181
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner$2;->this$0:Lcom/intentsoftware/addapptr/banners/NexageBanner;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "webview received error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/banners/NexageBanner;->access$1700(Lcom/intentsoftware/addapptr/banners/NexageBanner;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner$2;->this$0:Lcom/intentsoftware/addapptr/banners/NexageBanner;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/banners/NexageBanner;->access$1102(Lcom/intentsoftware/addapptr/banners/NexageBanner;Z)Z

    .line 184
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 146
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 147
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner$2;->this$0:Lcom/intentsoftware/addapptr/banners/NexageBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/NexageBanner;->access$1100(Lcom/intentsoftware/addapptr/banners/NexageBanner;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner$2;->this$0:Lcom/intentsoftware/addapptr/banners/NexageBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/NexageBanner;->access$1300(Lcom/intentsoftware/addapptr/banners/NexageBanner;)V

    .line 149
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner$2;->this$0:Lcom/intentsoftware/addapptr/banners/NexageBanner;

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

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/banners/NexageBanner;->access$1400(Lcom/intentsoftware/addapptr/banners/NexageBanner;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner$2;->this$0:Lcom/intentsoftware/addapptr/banners/NexageBanner;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/banners/NexageBanner;->access$1102(Lcom/intentsoftware/addapptr/banners/NexageBanner;Z)Z

    .line 152
    :cond_0
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 157
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 158
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner$2;->this$0:Lcom/intentsoftware/addapptr/banners/NexageBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/NexageBanner;->access$1100(Lcom/intentsoftware/addapptr/banners/NexageBanner;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner$2;->this$0:Lcom/intentsoftware/addapptr/banners/NexageBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/NexageBanner;->access$1300(Lcom/intentsoftware/addapptr/banners/NexageBanner;)V

    .line 160
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner$2;->this$0:Lcom/intentsoftware/addapptr/banners/NexageBanner;

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

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/banners/NexageBanner;->access$1500(Lcom/intentsoftware/addapptr/banners/NexageBanner;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner$2;->this$0:Lcom/intentsoftware/addapptr/banners/NexageBanner;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/banners/NexageBanner;->access$1102(Lcom/intentsoftware/addapptr/banners/NexageBanner;Z)Z

    .line 163
    :cond_0
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 168
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 169
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner$2;->this$0:Lcom/intentsoftware/addapptr/banners/NexageBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/NexageBanner;->access$1100(Lcom/intentsoftware/addapptr/banners/NexageBanner;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner$2;->this$0:Lcom/intentsoftware/addapptr/banners/NexageBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/NexageBanner;->access$1300(Lcom/intentsoftware/addapptr/banners/NexageBanner;)V

    .line 171
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner$2;->this$0:Lcom/intentsoftware/addapptr/banners/NexageBanner;

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

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/banners/NexageBanner;->access$1600(Lcom/intentsoftware/addapptr/banners/NexageBanner;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner$2;->this$0:Lcom/intentsoftware/addapptr/banners/NexageBanner;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/banners/NexageBanner;->access$1102(Lcom/intentsoftware/addapptr/banners/NexageBanner;Z)Z

    .line 174
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 124
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner$2;->this$0:Lcom/intentsoftware/addapptr/banners/NexageBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/NexageBanner;->access$900(Lcom/intentsoftware/addapptr/banners/NexageBanner;)V

    .line 127
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 129
    iget-object v1, p0, Lcom/intentsoftware/addapptr/banners/NexageBanner$2;->this$0:Lcom/intentsoftware/addapptr/banners/NexageBanner;

    invoke-static {v1}, Lcom/intentsoftware/addapptr/banners/NexageBanner;->access$1000(Lcom/intentsoftware/addapptr/banners/NexageBanner;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 130
    const/4 v0, 0x1

    .line 132
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
