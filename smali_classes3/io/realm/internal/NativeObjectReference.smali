.class final Lio/realm/internal/NativeObjectReference;
.super Ljava/lang/ref/PhantomReference;
.source "NativeObjectReference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/internal/NativeObjectReference$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/PhantomReference",
        "<",
        "Lio/realm/internal/g;",
        ">;"
    }
.end annotation


# static fields
.field private static f:Lio/realm/internal/NativeObjectReference$a;


# instance fields
.field private final a:J

.field private final b:J

.field private final c:Lio/realm/internal/d;

.field private d:Lio/realm/internal/NativeObjectReference;

.field private e:Lio/realm/internal/NativeObjectReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 69
    new-instance v0, Lio/realm/internal/NativeObjectReference$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/realm/internal/NativeObjectReference$a;-><init>(Lio/realm/internal/NativeObjectReference$1;)V

    sput-object v0, Lio/realm/internal/NativeObjectReference;->f:Lio/realm/internal/NativeObjectReference$a;

    return-void
.end method

.method constructor <init>(Lio/realm/internal/d;Lio/realm/internal/g;Ljava/lang/ref/ReferenceQueue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/internal/d;",
            "Lio/realm/internal/g;",
            "Ljava/lang/ref/ReferenceQueue",
            "<-",
            "Lio/realm/internal/g;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 75
    invoke-interface {p2}, Lio/realm/internal/g;->getNativePtr()J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/internal/NativeObjectReference;->a:J

    .line 76
    invoke-interface {p2}, Lio/realm/internal/g;->getNativeFinalizerPtr()J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/internal/NativeObjectReference;->b:J

    .line 77
    iput-object p1, p0, Lio/realm/internal/NativeObjectReference;->c:Lio/realm/internal/d;

    .line 78
    sget-object v0, Lio/realm/internal/NativeObjectReference;->f:Lio/realm/internal/NativeObjectReference$a;

    invoke-virtual {v0, p0}, Lio/realm/internal/NativeObjectReference$a;->a(Lio/realm/internal/NativeObjectReference;)V

    .line 79
    return-void
.end method

.method static synthetic a(Lio/realm/internal/NativeObjectReference;)Lio/realm/internal/NativeObjectReference;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lio/realm/internal/NativeObjectReference;->e:Lio/realm/internal/NativeObjectReference;

    return-object v0
.end method

.method static synthetic a(Lio/realm/internal/NativeObjectReference;Lio/realm/internal/NativeObjectReference;)Lio/realm/internal/NativeObjectReference;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lio/realm/internal/NativeObjectReference;->d:Lio/realm/internal/NativeObjectReference;

    return-object p1
.end method

.method static synthetic b(Lio/realm/internal/NativeObjectReference;)Lio/realm/internal/NativeObjectReference;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lio/realm/internal/NativeObjectReference;->d:Lio/realm/internal/NativeObjectReference;

    return-object v0
.end method

.method static synthetic b(Lio/realm/internal/NativeObjectReference;Lio/realm/internal/NativeObjectReference;)Lio/realm/internal/NativeObjectReference;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lio/realm/internal/NativeObjectReference;->e:Lio/realm/internal/NativeObjectReference;

    return-object p1
.end method

.method private static native nativeCleanUp(JJ)V
.end method


# virtual methods
.method a()V
    .locals 6

    .prologue
    .line 85
    iget-object v1, p0, Lio/realm/internal/NativeObjectReference;->c:Lio/realm/internal/d;

    monitor-enter v1

    .line 86
    :try_start_0
    iget-wide v2, p0, Lio/realm/internal/NativeObjectReference;->b:J

    iget-wide v4, p0, Lio/realm/internal/NativeObjectReference;->a:J

    invoke-static {v2, v3, v4, v5}, Lio/realm/internal/NativeObjectReference;->nativeCleanUp(JJ)V

    .line 87
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    sget-object v0, Lio/realm/internal/NativeObjectReference;->f:Lio/realm/internal/NativeObjectReference$a;

    invoke-virtual {v0, p0}, Lio/realm/internal/NativeObjectReference$a;->b(Lio/realm/internal/NativeObjectReference;)V

    .line 90
    return-void

    .line 87
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
