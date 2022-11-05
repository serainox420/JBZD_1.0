.class Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$1;
.super Ljava/lang/Object;
.source "AdTrackerWebViewLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;


# direct methods
.method constructor <init>(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$1;->a:Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$1;->a:Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;

    new-instance v1, Landroid/webkit/WebView;

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->a(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 42
    iget-object v0, p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$1;->a:Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;

    invoke-static {v0}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->a(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$AdTrackerWebViewClient;

    iget-object v2, p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$1;->a:Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;

    invoke-direct {v1, v2}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$AdTrackerWebViewClient;-><init>(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 43
    iget-object v0, p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$1;->a:Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;

    invoke-static {v0}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->a(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 44
    iget-object v0, p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$1;->a:Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;

    invoke-static {v0}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->a(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 45
    iget-object v0, p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$1;->a:Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;

    invoke-static {v0}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->a(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$JSInterface;

    invoke-direct {v1}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$JSInterface;-><init>()V

    const-string v2, "iatsdk"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    return-void
.end method
