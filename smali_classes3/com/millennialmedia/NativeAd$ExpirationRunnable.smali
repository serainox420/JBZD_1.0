.class Lcom/millennialmedia/NativeAd$ExpirationRunnable;
.super Ljava/lang/Object;
.source "NativeAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/NativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExpirationRunnable"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/NativeAd;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/internal/AdPlacement$RequestState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 1

    .prologue
    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/NativeAd$ExpirationRunnable;->a:Ljava/lang/ref/WeakReference;

    .line 339
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/NativeAd$ExpirationRunnable;->b:Ljava/lang/ref/WeakReference;

    .line 340
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/millennialmedia/NativeAd$ExpirationRunnable;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/NativeAd;

    .line 347
    if-nez v0, :cond_0

    .line 348
    invoke-static {}, Lcom/millennialmedia/NativeAd;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NativeAd instance has been destroyed, aborting expiration state change"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    :goto_0
    return-void

    .line 352
    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/millennialmedia/NativeAd;->a(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    .line 354
    iget-object v1, p0, Lcom/millennialmedia/NativeAd$ExpirationRunnable;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .line 355
    if-nez v1, :cond_1

    .line 356
    invoke-static {}, Lcom/millennialmedia/NativeAd;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No valid RequestStateComponents is available, unable to trigger expired state change"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 360
    :cond_1
    invoke-static {v0, v1}, Lcom/millennialmedia/NativeAd;->a(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    goto :goto_0
.end method
