.class public Lio/realm/internal/d;
.super Ljava/lang/Object;
.source "Context.java"


# static fields
.field static final a:Lio/realm/internal/d;

.field private static final b:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lio/realm/internal/g;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lio/realm/internal/d;->b:Ljava/lang/ref/ReferenceQueue;

    .line 30
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lio/realm/internal/f;

    sget-object v2, Lio/realm/internal/d;->b:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, v2}, Lio/realm/internal/f;-><init>(Ljava/lang/ref/ReferenceQueue;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lio/realm/internal/d;->c:Ljava/lang/Thread;

    .line 32
    new-instance v0, Lio/realm/internal/d;

    invoke-direct {v0}, Lio/realm/internal/d;-><init>()V

    sput-object v0, Lio/realm/internal/d;->a:Lio/realm/internal/d;

    .line 35
    sget-object v0, Lio/realm/internal/d;->c:Ljava/lang/Thread;

    const-string v1, "RealmFinalizingDaemon"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 36
    sget-object v0, Lio/realm/internal/d;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lio/realm/internal/g;)V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lio/realm/internal/NativeObjectReference;

    sget-object v1, Lio/realm/internal/d;->b:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p0, p1, v1}, Lio/realm/internal/NativeObjectReference;-><init>(Lio/realm/internal/d;Lio/realm/internal/g;Ljava/lang/ref/ReferenceQueue;)V

    .line 41
    return-void
.end method
