.class Lcom/google/android/gms/internal/zzbcl$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbcl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation


# static fields
.field private static volatile zzbLh:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/zzbcl$zza;->zzbLh:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzch(Landroid/content/Context;)Ljava/util/concurrent/ExecutorService;
    .locals 10

    sget-object v0, Lcom/google/android/gms/internal/zzbcl$zza;->zzbLh:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    const-class v9, Lcom/google/android/gms/internal/zzbcl$zza;

    monitor-enter v9

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzbcl$zza;->zzbLh:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzbbj;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/google/android/gms/internal/zzbcl$zza$1;

    invoke-direct {v8}, Lcom/google/android/gms/internal/zzbcl$zza$1;-><init>()V

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzbbj;-><init>(Landroid/content/Context;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/google/android/gms/internal/zzbcl$zza;->zzbLh:Ljava/util/concurrent/ExecutorService;

    :cond_0
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/zzbcl$zza;->zzbLh:Ljava/util/concurrent/ExecutorService;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
