.class Lcom/adcolony/sdk/bi$b;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adcolony/sdk/bi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/bi;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bi;)V
    .locals 0

    .prologue
    .line 771
    iput-object p1, p0, Lcom/adcolony/sdk/bi$b;->a:Lcom/adcolony/sdk/bi;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 776
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 777
    iget-object v0, p0, Lcom/adcolony/sdk/bi$b;->a:Lcom/adcolony/sdk/bi;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bi;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " There was an error loading url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 779
    iget-object v0, p0, Lcom/adcolony/sdk/bi$b;->a:Lcom/adcolony/sdk/bi;

    iput p2, v0, Lcom/adcolony/sdk/bi;->v:I

    .line 780
    iget-object v0, p0, Lcom/adcolony/sdk/bi$b;->a:Lcom/adcolony/sdk/bi;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/adcolony/sdk/bi;->J:Ljava/lang/Boolean;

    .line 781
    iget-object v0, p0, Lcom/adcolony/sdk/bi$b;->a:Lcom/adcolony/sdk/bi;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/adcolony/sdk/bi$b;->a:Lcom/adcolony/sdk/bi;

    iget-wide v4, v1, Lcom/adcolony/sdk/bi;->t:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/adcolony/sdk/bi;->u:J

    .line 782
    iget-object v0, p0, Lcom/adcolony/sdk/bi$b;->a:Lcom/adcolony/sdk/bi;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bi;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " loadTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adcolony/sdk/bi$b;->a:Lcom/adcolony/sdk/bi;

    iget-wide v2, v2, Lcom/adcolony/sdk/bi;->u:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 784
    iget-object v0, p0, Lcom/adcolony/sdk/bi$b;->a:Lcom/adcolony/sdk/bi;

    invoke-static {v0, p2}, Lcom/adcolony/sdk/bi;->a(Lcom/adcolony/sdk/bi;I)V

    .line 785
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 790
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 791
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    .line 792
    iget-object v0, p0, Lcom/adcolony/sdk/bi$b;->a:Lcom/adcolony/sdk/bi;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bi;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There was an SSL error loading url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 794
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/bi$b;->a:Lcom/adcolony/sdk/bi;

    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v1

    iput v1, v0, Lcom/adcolony/sdk/bi;->v:I

    .line 795
    iget-object v0, p0, Lcom/adcolony/sdk/bi$b;->a:Lcom/adcolony/sdk/bi;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/adcolony/sdk/bi;->J:Ljava/lang/Boolean;

    .line 796
    iget-object v0, p0, Lcom/adcolony/sdk/bi$b;->a:Lcom/adcolony/sdk/bi;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/adcolony/sdk/bi$b;->a:Lcom/adcolony/sdk/bi;

    iget-wide v4, v1, Lcom/adcolony/sdk/bi;->t:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/adcolony/sdk/bi;->u:J

    .line 797
    iget-object v0, p0, Lcom/adcolony/sdk/bi$b;->a:Lcom/adcolony/sdk/bi;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bi;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " loadTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adcolony/sdk/bi$b;->a:Lcom/adcolony/sdk/bi;

    iget-wide v2, v2, Lcom/adcolony/sdk/bi;->u:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 799
    iget-object v0, p0, Lcom/adcolony/sdk/bi$b;->a:Lcom/adcolony/sdk/bi;

    iget-object v1, p0, Lcom/adcolony/sdk/bi$b;->a:Lcom/adcolony/sdk/bi;

    iget v1, v1, Lcom/adcolony/sdk/bi;->v:I

    invoke-static {v0, v1}, Lcom/adcolony/sdk/bi;->a(Lcom/adcolony/sdk/bi;I)V

    .line 800
    return-void
.end method
