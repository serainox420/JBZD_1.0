.class Lio/realm/internal/NativeObjectReference$a;
.super Ljava/lang/Object;
.source "NativeObjectReference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/NativeObjectReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Lio/realm/internal/NativeObjectReference;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/realm/internal/NativeObjectReference$1;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lio/realm/internal/NativeObjectReference$a;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized a(Lio/realm/internal/NativeObjectReference;)V
    .locals 1

    .prologue
    .line 37
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0}, Lio/realm/internal/NativeObjectReference;->a(Lio/realm/internal/NativeObjectReference;Lio/realm/internal/NativeObjectReference;)Lio/realm/internal/NativeObjectReference;

    .line 38
    iget-object v0, p0, Lio/realm/internal/NativeObjectReference$a;->a:Lio/realm/internal/NativeObjectReference;

    invoke-static {p1, v0}, Lio/realm/internal/NativeObjectReference;->b(Lio/realm/internal/NativeObjectReference;Lio/realm/internal/NativeObjectReference;)Lio/realm/internal/NativeObjectReference;

    .line 39
    iget-object v0, p0, Lio/realm/internal/NativeObjectReference$a;->a:Lio/realm/internal/NativeObjectReference;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lio/realm/internal/NativeObjectReference$a;->a:Lio/realm/internal/NativeObjectReference;

    invoke-static {v0, p1}, Lio/realm/internal/NativeObjectReference;->a(Lio/realm/internal/NativeObjectReference;Lio/realm/internal/NativeObjectReference;)Lio/realm/internal/NativeObjectReference;

    .line 42
    :cond_0
    iput-object p1, p0, Lio/realm/internal/NativeObjectReference$a;->a:Lio/realm/internal/NativeObjectReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(Lio/realm/internal/NativeObjectReference;)V
    .locals 3

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lio/realm/internal/NativeObjectReference;->a(Lio/realm/internal/NativeObjectReference;)Lio/realm/internal/NativeObjectReference;

    move-result-object v0

    .line 47
    invoke-static {p1}, Lio/realm/internal/NativeObjectReference;->b(Lio/realm/internal/NativeObjectReference;)Lio/realm/internal/NativeObjectReference;

    move-result-object v1

    .line 48
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lio/realm/internal/NativeObjectReference;->b(Lio/realm/internal/NativeObjectReference;Lio/realm/internal/NativeObjectReference;)Lio/realm/internal/NativeObjectReference;

    .line 49
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lio/realm/internal/NativeObjectReference;->a(Lio/realm/internal/NativeObjectReference;Lio/realm/internal/NativeObjectReference;)Lio/realm/internal/NativeObjectReference;

    .line 50
    if-eqz v1, :cond_1

    .line 51
    invoke-static {v1, v0}, Lio/realm/internal/NativeObjectReference;->b(Lio/realm/internal/NativeObjectReference;Lio/realm/internal/NativeObjectReference;)Lio/realm/internal/NativeObjectReference;

    .line 55
    :goto_0
    if-eqz v0, :cond_0

    .line 56
    invoke-static {v0, v1}, Lio/realm/internal/NativeObjectReference;->a(Lio/realm/internal/NativeObjectReference;Lio/realm/internal/NativeObjectReference;)Lio/realm/internal/NativeObjectReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_0
    monitor-exit p0

    return-void

    .line 53
    :cond_1
    :try_start_1
    iput-object v0, p0, Lio/realm/internal/NativeObjectReference$a;->a:Lio/realm/internal/NativeObjectReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
