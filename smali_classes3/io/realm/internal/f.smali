.class Lio/realm/internal/f;
.super Ljava/lang/Object;
.source "FinalizerRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lio/realm/internal/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lio/realm/internal/g;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lio/realm/internal/f;->a:Ljava/lang/ref/ReferenceQueue;

    .line 30
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 36
    :goto_0
    :try_start_0
    iget-object v0, p0, Lio/realm/internal/f;->a:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lio/realm/internal/NativeObjectReference;

    .line 37
    invoke-virtual {v0}, Lio/realm/internal/NativeObjectReference;->a()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 40
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 42
    const-string v0, "The FinalizerRunnable thread has been interrupted. Native resources cannot be freed anymore"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/realm/log/RealmLog;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    return-void
.end method
