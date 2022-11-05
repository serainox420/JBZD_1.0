.class Lcom/google/android/gms/internal/zzbpu$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbpu;-><init>(Ljava/util/concurrent/ThreadFactory;Lcom/google/android/gms/internal/zzbpt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzcgn:Ljava/util/concurrent/ThreadFactory;

.field final synthetic zzcgo:Lcom/google/android/gms/internal/zzbpt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbpu;Ljava/util/concurrent/ThreadFactory;Lcom/google/android/gms/internal/zzbpt;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbpu$1;->zzcgn:Ljava/util/concurrent/ThreadFactory;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbpu$1;->zzcgo:Lcom/google/android/gms/internal/zzbpt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpu$1;->zzcgn:Ljava/util/concurrent/ThreadFactory;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpu$1;->zzcgo:Lcom/google/android/gms/internal/zzbpt;

    const-string v2, "FirebaseDatabaseEventTarget"

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/zzbpt;->zza(Ljava/lang/Thread;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpu$1;->zzcgo:Lcom/google/android/gms/internal/zzbpt;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/zzbpt;->zza(Ljava/lang/Thread;Z)V

    return-object v0
.end method
