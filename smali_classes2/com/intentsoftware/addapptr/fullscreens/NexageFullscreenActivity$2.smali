.class Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity$2;
.super Landroid/webkit/WebViewClient;
.source "NexageFullscreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;->createWebViewClient()Landroid/webkit/WebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 120
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 121
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebView has encountered an error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/c/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;->access$000(Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;)V

    .line 125
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 130
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 131
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebView has encountered an error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/c/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;->access$000(Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;)V

    .line 135
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 140
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 141
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebView has encountered an error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/c/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;->access$000(Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;)V

    .line 145
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 150
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 151
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebView has encountered an SSL error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/c/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;->access$000(Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;)V

    .line 155
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 103
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_0

    .line 105
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 106
    const-string v1, "RTB1_AD_CLICKED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    iget-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;

    invoke-virtual {v1, v0}, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 108
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 110
    iget-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;

    invoke-virtual {v1, v0}, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 111
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;->access$000(Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;)V

    .line 112
    const/4 v0, 0x1

    .line 114
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
