.class public final Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$AdTrackerWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "AdTrackerWebViewLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "AdTrackerWebViewClient"
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;


# direct methods
.method protected constructor <init>(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$AdTrackerWebViewClient;->a:Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/16 v2, 0x9

    .line 123
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->c()Landroid/os/Handler;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 130
    const-string v1, "[InMobi]-[AdTracker]-4.5.5"

    const-string v2, "Webview Received Error"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 132
    const/16 v2, 0xa

    iput v2, v1, Landroid/os/Message;->what:I

    .line 133
    iput p2, v1, Landroid/os/Message;->arg2:I

    .line 134
    iget-object v2, p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$AdTrackerWebViewClient;->a:Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;

    invoke-static {v2}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->c(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;)Lcom/inmobi/commons/analytics/iat/impl/Goal;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 135
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 137
    :cond_0
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    const/16 v2, 0x9

    .line 142
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 143
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->c()Landroid/os/Handler;

    move-result-object v0

    .line 144
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 148
    const-string v1, "[InMobi]-[AdTracker]-4.5.5"

    const-string v2, "Webview Received SSL Error"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 150
    const/16 v2, 0xa

    iput v2, v1, Landroid/os/Message;->what:I

    .line 151
    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg2:I

    .line 152
    iget-object v2, p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$AdTrackerWebViewClient;->a:Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;

    invoke-static {v2}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->c(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;)Lcom/inmobi/commons/analytics/iat/impl/Goal;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 153
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 155
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/16 v2, 0x9

    .line 83
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->c()Landroid/os/Handler;

    move-result-object v0

    .line 84
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 87
    iget-object v1, p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$AdTrackerWebViewClient;->a:Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$AdTrackerWebViewClient;->a:Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;

    invoke-static {v4}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->b(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->b(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;J)J

    .line 89
    const-string v1, "iat"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    const/4 v1, 0x7

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 91
    iget-object v2, p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$AdTrackerWebViewClient;->a:Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;

    invoke-static {v2, v1}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->a(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;Ljava/lang/String;)Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$a;

    move-result-object v1

    .line 92
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "IMAdTrackerStatusUpload"

    const-string v4, "errcode"

    invoke-static {v1}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$a;->a(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$a;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/inmobi/commons/internal/FileOperations;->setPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 96
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 97
    const/16 v3, 0xa

    iput v3, v2, Landroid/os/Message;->what:I

    .line 98
    invoke-static {v1}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$a;->a(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$a;)I

    move-result v3

    iput v3, v2, Landroid/os/Message;->arg2:I

    .line 99
    iget-object v3, p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$AdTrackerWebViewClient;->a:Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;

    invoke-static {v3}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->c(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;)Lcom/inmobi/commons/analytics/iat/impl/Goal;

    move-result-object v3

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 100
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 101
    const-string v4, "appId"

    iget-object v5, p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$AdTrackerWebViewClient;->a:Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;

    invoke-static {v5}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->d(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 103
    const/16 v3, 0x1388

    invoke-static {v1}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$a;->a(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$a;)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 104
    iget-object v3, p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$AdTrackerWebViewClient;->a:Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;

    invoke-static {v1}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$a;->b(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->b(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;Ljava/lang/String;)I

    move-result v1

    .line 105
    const/16 v3, 0x1770

    if-ne v3, v1, :cond_2

    .line 106
    const/16 v1, 0x8

    iput v1, v2, Landroid/os/Message;->what:I

    .line 107
    iget-object v1, p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$AdTrackerWebViewClient;->a:Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;

    invoke-static {v1}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->e(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;)J

    move-result-wide v4

    long-to-int v1, v4

    iput v1, v2, Landroid/os/Message;->arg2:I

    .line 113
    :cond_0
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 117
    :cond_1
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 118
    const/4 v0, 0x1

    return v0

    .line 109
    :cond_2
    iput v1, v2, Landroid/os/Message;->arg2:I

    goto :goto_0
.end method
