.class Lcom/inmobi/monetization/internal/imai/WebviewLoader$3;
.super Ljava/lang/Object;
.source "WebviewLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/monetization/internal/imai/WebviewLoader;->stopLoading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/monetization/internal/imai/WebviewLoader;


# direct methods
.method constructor <init>(Lcom/inmobi/monetization/internal/imai/WebviewLoader;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/inmobi/monetization/internal/imai/WebviewLoader$3;->a:Lcom/inmobi/monetization/internal/imai/WebviewLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/monetization/internal/imai/WebviewLoader$3;->a:Lcom/inmobi/monetization/internal/imai/WebviewLoader;

    invoke-static {v0}, Lcom/inmobi/monetization/internal/imai/WebviewLoader;->a(Lcom/inmobi/monetization/internal/imai/WebviewLoader;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lcom/inmobi/monetization/internal/imai/WebviewLoader;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/inmobi/monetization/internal/imai/WebviewLoader$3;->a:Lcom/inmobi/monetization/internal/imai/WebviewLoader;

    invoke-static {v0}, Lcom/inmobi/monetization/internal/imai/WebviewLoader;->a(Lcom/inmobi/monetization/internal/imai/WebviewLoader;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 89
    const-string v1, "[InMobi]-[Monetization]"

    const-string v2, "Exception stop loading"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
