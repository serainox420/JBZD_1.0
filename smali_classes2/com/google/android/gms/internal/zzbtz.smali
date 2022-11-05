.class public Lcom/google/android/gms/internal/zzbtz;
.super Ljava/lang/Object;


# static fields
.field static zzcoI:Z


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final zzbFM:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/internal/zzbtz;->zzcoI:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbtz;->zzbFM:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbtz;->zzbFM:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbtz;->mHandler:Landroid/os/Handler;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbtz;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method


# virtual methods
.method public zzy(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbtz;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbtz;->zzbFM:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbtz;->zzbFM:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/google/firebase/storage/a;->a()Lcom/google/firebase/storage/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/storage/a;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbtz;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
