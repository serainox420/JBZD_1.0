.class public Lcom/revmob/internal/s;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private a:Lcom/revmob/RevMobAdsListener;

.field private b:Lcom/revmob/internal/t;

.field private c:Ljava/lang/String;

.field private d:D

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/revmob/RevMobAdsListener;Lcom/revmob/internal/t;)V
    .locals 2

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/revmob/internal/s;->e:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Lcom/revmob/internal/s;->d:D

    iput-object p1, p0, Lcom/revmob/internal/s;->a:Lcom/revmob/RevMobAdsListener;

    iput-object p2, p0, Lcom/revmob/internal/s;->b:Lcom/revmob/internal/t;

    return-void
.end method

.method public constructor <init>(Lcom/revmob/RevMobAdsListener;Lcom/revmob/internal/t;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/revmob/internal/s;-><init>(Lcom/revmob/RevMobAdsListener;Lcom/revmob/internal/t;)V

    iput-object p3, p0, Lcom/revmob/internal/s;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6

    iget-boolean v0, p0, Lcom/revmob/internal/s;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/revmob/internal/s;->e:Z

    iget-object v0, p0, Lcom/revmob/internal/s;->c:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-double v2, v2

    iget-wide v4, p0, Lcom/revmob/internal/s;->d:D

    sub-double/2addr v2, v4

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/revmob/a/e;->a(Ljava/lang/String;D)V

    :cond_0
    iget-object v0, p0, Lcom/revmob/internal/s;->b:Lcom/revmob/internal/t;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/revmob/internal/s;->b:Lcom/revmob/internal/t;

    invoke-interface {v0}, Lcom/revmob/internal/t;->a()V

    :cond_1
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/revmob/internal/s;->a:Lcom/revmob/RevMobAdsListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revmob/internal/s;->a:Lcom/revmob/RevMobAdsListener;

    const-string v1, "Content was not loaded"

    invoke-virtual {v0, v1}, Lcom/revmob/RevMobAdsListener;->onRevMobAdNotReceived(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/revmob/internal/s;->b:Lcom/revmob/internal/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revmob/internal/s;->b:Lcom/revmob/internal/t;

    invoke-interface {v0, p2}, Lcom/revmob/internal/t;->a(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
