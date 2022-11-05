.class Lcom/inmobi/monetization/internal/imai/WebviewLoader$4;
.super Ljava/lang/Object;
.source "WebviewLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/monetization/internal/imai/WebviewLoader;->loadInWebview(Ljava/lang/String;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/HashMap;

.field final synthetic c:Lcom/inmobi/monetization/internal/imai/WebviewLoader;


# direct methods
.method constructor <init>(Lcom/inmobi/monetization/internal/imai/WebviewLoader;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/inmobi/monetization/internal/imai/WebviewLoader$4;->c:Lcom/inmobi/monetization/internal/imai/WebviewLoader;

    iput-object p2, p0, Lcom/inmobi/monetization/internal/imai/WebviewLoader$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/inmobi/monetization/internal/imai/WebviewLoader$4;->b:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 105
    :try_start_0
    sget-object v0, Lcom/inmobi/monetization/internal/imai/WebviewLoader;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 106
    iget-object v0, p0, Lcom/inmobi/monetization/internal/imai/WebviewLoader$4;->c:Lcom/inmobi/monetization/internal/imai/WebviewLoader;

    invoke-static {v0}, Lcom/inmobi/monetization/internal/imai/WebviewLoader;->a(Lcom/inmobi/monetization/internal/imai/WebviewLoader;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/monetization/internal/imai/WebviewLoader$4;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/inmobi/monetization/internal/imai/WebviewLoader$4;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 110
    const-string v1, "[InMobi]-[Monetization]"

    const-string v2, "Exception load in webview"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
