.class Lcom/millennialmedia/internal/JSBridge$3;
.super Ljava/lang/Object;
.source "JSBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/JSBridge;->b(Lcom/millennialmedia/internal/MMWebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/JSBridge;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/JSBridge;)V
    .locals 0

    .prologue
    .line 2237
    iput-object p1, p0, Lcom/millennialmedia/internal/JSBridge$3;->a:Lcom/millennialmedia/internal/JSBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2241
    const-wide/16 v2, 0x0

    .line 2245
    :goto_0
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2252
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$3;->a:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v0}, Lcom/millennialmedia/internal/JSBridge;->a(Lcom/millennialmedia/internal/JSBridge;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    .line 2253
    if-nez v0, :cond_1

    .line 2269
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$3;->a:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v0}, Lcom/millennialmedia/internal/JSBridge;->f(Lcom/millennialmedia/internal/JSBridge;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2270
    return-void

    .line 2262
    :cond_1
    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$3;->a:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v1}, Lcom/millennialmedia/internal/JSBridge;->e(Lcom/millennialmedia/internal/JSBridge;)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-lez v1, :cond_2

    .line 2263
    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$3;->a:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v1}, Lcom/millennialmedia/internal/JSBridge;->e(Lcom/millennialmedia/internal/JSBridge;)J

    move-result-wide v2

    .line 2264
    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$3;->a:Lcom/millennialmedia/internal/JSBridge;

    invoke-virtual {v1, v0}, Lcom/millennialmedia/internal/JSBridge;->c(Lcom/millennialmedia/internal/MMWebView;)V

    :cond_2
    move-wide v0, v2

    .line 2267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/millennialmedia/internal/JSBridge$3;->a:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v4}, Lcom/millennialmedia/internal/JSBridge;->e(Lcom/millennialmedia/internal/JSBridge;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    move-wide v2, v0

    goto :goto_0

    .line 2246
    :catch_0
    move-exception v0

    goto :goto_1
.end method
