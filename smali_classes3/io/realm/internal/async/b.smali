.class public final Lio/realm/internal/async/b;
.super Ljava/lang/Object;
.source "RealmAsyncTaskImpl.java"

# interfaces
.implements Lio/realm/m;


# instance fields
.field private final a:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/ThreadPoolExecutor;

.field private volatile c:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;",
            "Ljava/util/concurrent/ThreadPoolExecutor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/async/b;->c:Z

    .line 30
    iput-object p1, p0, Lio/realm/internal/async/b;->a:Ljava/util/concurrent/Future;

    .line 31
    iput-object p2, p0, Lio/realm/internal/async/b;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 32
    return-void
.end method
