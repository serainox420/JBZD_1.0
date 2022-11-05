.class Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity$1;
.super Landroid/webkit/WebViewClient;
.source "PromoHouseFullscreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;->createWebViewClient()Landroid/webkit/WebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 114
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 115
    const-string v0, "internal:noad"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;->access$102(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;Landroid/content/Intent;)Landroid/content/Intent;

    .line 117
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;->access$100(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "PROMO_HOUSE_AD_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;

    invoke-static {v1}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;->access$100(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 120
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 125
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 126
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;

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

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;->access$000(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;)V

    .line 130
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 135
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 136
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;

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

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;->access$000(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;)V

    .line 140
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 145
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 146
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;

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

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;->access$000(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;)V

    .line 150
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 155
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 156
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;

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

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;->access$000(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;)V

    .line 160
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 86
    const-string v2, "krassapp://close"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    iget-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;

    invoke-static {v1}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;->access$000(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;)V

    .line 109
    :cond_0
    :goto_0
    return v0

    .line 89
    :cond_1
    const-string v2, "internal:noad"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 90
    iget-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {v1, v2}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;->access$102(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;Landroid/content/Intent;)Landroid/content/Intent;

    .line 91
    iget-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;

    invoke-static {v1}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;->access$100(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "PROMO_HOUSE_AD_FAILED"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    iget-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;

    iget-object v2, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;

    invoke-static {v2}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;->access$100(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 93
    iget-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;

    invoke-static {v1}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;->access$000(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;)V

    goto :goto_0

    .line 95
    :cond_2
    if-eqz v1, :cond_0

    .line 96
    const-string v2, "krassgames"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;->access$102(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;Landroid/content/Intent;)Landroid/content/Intent;

    .line 100
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;->access$100(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "PROMO_HOUSE_AD_CLICKED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;

    invoke-static {v1}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;->access$100(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 102
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 104
    iget-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;

    invoke-virtual {v1, v0}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 105
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;->access$000(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;)V

    .line 106
    const/4 v0, 0x1

    goto :goto_0
.end method
