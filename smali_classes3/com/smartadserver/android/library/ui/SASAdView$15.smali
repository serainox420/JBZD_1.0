.class Lcom/smartadserver/android/library/ui/SASAdView$15;
.super Ljava/lang/Object;
.source "SASAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/SASAdView;->d(Ljava/lang/String;)Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/webkit/WebView;

.field final synthetic c:Lcom/smartadserver/android/library/ui/SASAdView;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/SASAdView;Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 2565
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdView$15;->c:Lcom/smartadserver/android/library/ui/SASAdView;

    iput-object p2, p0, Lcom/smartadserver/android/library/ui/SASAdView$15;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/smartadserver/android/library/ui/SASAdView$15;->b:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2570
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView$15;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2571
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$15;->b:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView$15;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2576
    :goto_0
    return-void

    .line 2572
    :catch_0
    move-exception v0

    .line 2574
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$15;->b:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView$15;->c:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v1, v1, Lcom/smartadserver/android/library/ui/SASAdView;->n:Lcom/smartadserver/android/library/model/SASAdElement;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/model/SASAdElement;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASAdView$15;->a:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
