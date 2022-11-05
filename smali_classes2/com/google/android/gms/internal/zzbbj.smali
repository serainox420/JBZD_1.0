.class public Lcom/google/android/gms/internal/zzbbj;
.super Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            ")V"
        }
    .end annotation

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbbj;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 2

    if-eqz p2, :cond_0

    const-string v0, "Uncaught exception: "

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbbj;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, v1}, Lcom/google/android/gms/internal/zzbbe;->zza(Ljava/lang/String;Ljava/lang/Throwable;Landroid/content/Context;)V

    :cond_0
    return-void
.end method
