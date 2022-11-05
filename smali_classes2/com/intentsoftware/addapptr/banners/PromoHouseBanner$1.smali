.class Lcom/intentsoftware/addapptr/banners/PromoHouseBanner$1;
.super Landroid/webkit/WebViewClient;
.source "PromoHouseBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;->createWebViewClient()Landroid/webkit/WebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 86
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 87
    const-string v0, "krassapp://close"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "internal:noad"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;->access$000(Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;

    const-string v1, "no ad or close"

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;->access$500(Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;Ljava/lang/String;)V

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;->access$002(Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;Z)Z

    .line 95
    :cond_2
    :goto_0
    return-void

    .line 92
    :cond_3
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;->access$000(Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 93
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;->access$600(Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;)V

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 132
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;->access$000(Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;->access$700(Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;)V

    .line 135
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "webview received error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;->access$1100(Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;->access$002(Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;Z)Z

    .line 138
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 100
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 101
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;->access$000(Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;->access$700(Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;)V

    .line 103
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;

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

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;->access$800(Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;->access$002(Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;Z)Z

    .line 106
    :cond_0
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 111
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 112
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;->access$000(Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;->access$700(Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;)V

    .line 114
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;

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

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;->access$900(Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;->access$002(Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;Z)Z

    .line 117
    :cond_0
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 122
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 123
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;->access$000(Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;->access$700(Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;)V

    .line 125
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;

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

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;->access$1000(Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;->access$002(Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;Z)Z

    .line 128
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 57
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 58
    const-string v3, "krassapp://close"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v0

    .line 60
    :cond_1
    const-string v3, "internal:noad"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 61
    iget-object v2, p0, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;

    invoke-static {v2}, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;->access$000(Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 62
    iget-object v2, p0, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;

    const-string v3, "no ad"

    invoke-static {v2, v3}, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;->access$100(Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;Ljava/lang/String;)V

    .line 64
    :cond_2
    iget-object v2, p0, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;

    invoke-static {v2, v1}, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;->access$002(Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;Z)Z

    goto :goto_0

    .line 66
    :cond_3
    if-eqz v2, :cond_0

    .line 67
    const-string v3, "krassgames"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 68
    iget-object v2, p0, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;

    invoke-static {v2}, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;->access$000(Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 69
    iget-object v2, p0, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;

    const-string v3, "host contains krassgames"

    invoke-static {v2, v3}, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;->access$200(Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;Ljava/lang/String;)V

    .line 71
    :cond_4
    iget-object v2, p0, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;

    invoke-static {v2, v1}, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;->access$002(Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;Z)Z

    goto :goto_0

    .line 74
    :cond_5
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;->access$300(Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;)V

    .line 75
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 77
    iget-object v2, p0, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;

    invoke-static {v2}, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;->access$400(Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 78
    goto :goto_0
.end method
