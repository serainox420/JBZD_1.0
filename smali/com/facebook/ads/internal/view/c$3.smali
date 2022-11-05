.class Lcom/facebook/ads/internal/view/c$3;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/c;->b()Landroid/webkit/WebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/c;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/c;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/c$3;->a:Lcom/facebook/ads/internal/view/c;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/c$3;->a:Lcom/facebook/ads/internal/view/c;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/c;->b(Lcom/facebook/ads/internal/view/c;)Lcom/facebook/ads/internal/j/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/j/a;->a(Ljava/util/Map;)V

    const-string v1, "touch"

    iget-object v2, p0, Lcom/facebook/ads/internal/view/c$3;->a:Lcom/facebook/ads/internal/view/c;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/c;->getTouchData()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/util/h;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/c$3;->a:Lcom/facebook/ads/internal/view/c;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/c;->c(Lcom/facebook/ads/internal/view/c;)Lcom/facebook/ads/internal/view/c$b;

    move-result-object v1

    invoke-interface {v1, p2, v0}, Lcom/facebook/ads/internal/view/c$b;->a(Ljava/lang/String;Ljava/util/Map;)V

    const/4 v0, 0x1

    return v0
.end method
