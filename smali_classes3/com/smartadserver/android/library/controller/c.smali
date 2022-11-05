.class public Lcom/smartadserver/android/library/controller/c;
.super Landroid/webkit/WebViewClient;
.source "SASWebViewClient.java"


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field public a:Lcom/smartadserver/android/library/ui/SASAdView;

.field public b:Landroid/webkit/WebViewClient;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/smartadserver/android/library/controller/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartadserver/android/library/controller/c;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartadserver/android/library/controller/c;->d:Z

    .line 39
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartadserver/android/library/controller/c;->d:Z

    .line 34
    return-void
.end method

.method public a(Landroid/webkit/WebViewClient;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/smartadserver/android/library/controller/c;->b:Landroid/webkit/WebViewClient;

    .line 44
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/smartadserver/android/library/controller/c;->d:Z

    return v0
.end method

.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/c;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/c;->b:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 103
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/c;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/c;->b:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    .line 93
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 163
    sget-object v0, Lcom/smartadserver/android/library/controller/c;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadResource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/c;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/c;->b:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/c;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/c;->b:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/c;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/c;->b:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 159
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartadserver/android/library/controller/c;->d:Z

    .line 179
    monitor-enter p0

    .line 180
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 181
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    sget-object v0, Lcom/smartadserver/android/library/controller/c;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedError: code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "failingUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/c;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/c;->b:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 191
    :goto_0
    return-void

    .line 181
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 187
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/c;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/c;->b:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onScaleChanged(Landroid/webkit/WebView;FF)V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/c;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/c;->b:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onScaleChanged(Landroid/webkit/WebView;FF)V

    .line 150
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onScaleChanged(Landroid/webkit/WebView;FF)V

    goto :goto_0
.end method

.method public onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/c;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/c;->b:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    .line 83
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/c;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/c;->b:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    .line 141
    :goto_0
    return-void

    .line 140
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/c;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/c;->b:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 131
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 57
    sget-object v0, Lcom/smartadserver/android/library/controller/c;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldOverrideUrlLoading: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/c;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/c;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0, p2}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/String;)V

    .line 63
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
