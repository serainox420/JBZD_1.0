.class Lcom/inmobi/monetization/internal/imai/WebviewLoader$1;
.super Ljava/lang/Object;
.source "WebviewLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/monetization/internal/imai/WebviewLoader;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/inmobi/monetization/internal/imai/WebviewLoader;


# direct methods
.method constructor <init>(Lcom/inmobi/monetization/internal/imai/WebviewLoader;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/inmobi/monetization/internal/imai/WebviewLoader$1;->b:Lcom/inmobi/monetization/internal/imai/WebviewLoader;

    iput-object p2, p0, Lcom/inmobi/monetization/internal/imai/WebviewLoader$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/monetization/internal/imai/WebviewLoader$1;->b:Lcom/inmobi/monetization/internal/imai/WebviewLoader;

    new-instance v1, Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/inmobi/monetization/internal/imai/WebviewLoader$1;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/inmobi/monetization/internal/imai/WebviewLoader;->a(Lcom/inmobi/monetization/internal/imai/WebviewLoader;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/inmobi/monetization/internal/imai/WebviewLoader;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    iget-object v0, p0, Lcom/inmobi/monetization/internal/imai/WebviewLoader$1;->b:Lcom/inmobi/monetization/internal/imai/WebviewLoader;

    invoke-static {v0}, Lcom/inmobi/monetization/internal/imai/WebviewLoader;->a(Lcom/inmobi/monetization/internal/imai/WebviewLoader;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/inmobi/monetization/internal/imai/WebviewLoader$MyWebViewClient;

    invoke-direct {v1}, Lcom/inmobi/monetization/internal/imai/WebviewLoader$MyWebViewClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 37
    iget-object v0, p0, Lcom/inmobi/monetization/internal/imai/WebviewLoader$1;->b:Lcom/inmobi/monetization/internal/imai/WebviewLoader;

    invoke-static {v0}, Lcom/inmobi/monetization/internal/imai/WebviewLoader;->a(Lcom/inmobi/monetization/internal/imai/WebviewLoader;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 38
    iget-object v0, p0, Lcom/inmobi/monetization/internal/imai/WebviewLoader$1;->b:Lcom/inmobi/monetization/internal/imai/WebviewLoader;

    invoke-static {v0}, Lcom/inmobi/monetization/internal/imai/WebviewLoader;->a(Lcom/inmobi/monetization/internal/imai/WebviewLoader;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 39
    iget-object v0, p0, Lcom/inmobi/monetization/internal/imai/WebviewLoader$1;->b:Lcom/inmobi/monetization/internal/imai/WebviewLoader;

    invoke-static {v0}, Lcom/inmobi/monetization/internal/imai/WebviewLoader;->a(Lcom/inmobi/monetization/internal/imai/WebviewLoader;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 43
    const-string v1, "[InMobi]-[Monetization]"

    const-string v2, "Exception init webview"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
