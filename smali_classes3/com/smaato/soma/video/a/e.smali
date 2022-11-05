.class public Lcom/smaato/soma/video/a/e;
.super Ljava/lang/Object;
.source "SmaatoAsyncTasks.java"


# static fields
.field private static a:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 16
    invoke-static {}, Lcom/smaato/soma/video/a/e;->a()V

    .line 17
    return-void
.end method

.method private static a()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 24
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/smaato/soma/video/a/e;->a:Ljava/util/concurrent/Executor;

    .line 28
    :goto_0
    return-void

    .line 26
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/smaato/soma/video/a/e;->a:Ljava/util/concurrent/Executor;

    goto :goto_0
.end method

.method public static varargs a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/AsyncTask",
            "<TP;**>;[TP;)V"
        }
    .end annotation

    .prologue
    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 47
    sget-object v0, Lcom/smaato/soma/video/a/e;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
