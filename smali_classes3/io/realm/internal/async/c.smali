.class public Lio/realm/internal/async/c;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "RealmThreadPoolExecutor.java"


# static fields
.field private static final a:I


# instance fields
.field private b:Z

.field private c:Ljava/util/concurrent/locks/ReentrantLock;

.field private d:Ljava/util/concurrent/locks/Condition;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lio/realm/internal/async/c;->b()I

    move-result v0

    sput v0, Lio/realm/internal/async/c;->a:I

    return-void
.end method

.method private constructor <init>(II)V
    .locals 8

    .prologue
    .line 99
    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v0, 0x64

    invoke-direct {v7, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 45
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lio/realm/internal/async/c;->c:Ljava/util/concurrent/locks/ReentrantLock;

    .line 46
    iget-object v0, p0, Lio/realm/internal/async/c;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lio/realm/internal/async/c;->d:Ljava/util/concurrent/locks/Condition;

    .line 102
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 86
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Lio/realm/internal/async/c$1;

    invoke-direct {v3, v1}, Lio/realm/internal/async/c$1;-><init>(Ljava/util/regex/Pattern;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 92
    if-nez v1, :cond_0

    .line 95
    :goto_0
    return v0

    .line 92
    :cond_0
    array-length v0, v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a()Lio/realm/internal/async/c;
    .locals 3

    .prologue
    .line 52
    new-instance v0, Lio/realm/internal/async/c;

    sget v1, Lio/realm/internal/async/c;->a:I

    sget v2, Lio/realm/internal/async/c;->a:I

    invoke-direct {v0, v1, v2}, Lio/realm/internal/async/c;-><init>(II)V

    return-object v0
.end method

.method private static b()I
    .locals 2
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressWarnings;
        value = {
            "DMI_HARDCODED_ABSOLUTE_FILENAME"
        }
    .end annotation

    .prologue
    .line 71
    const-string v0, "/sys/devices/system/cpu/"

    const-string v1, "cpu[0-9]+"

    invoke-static {v0, v1}, Lio/realm/internal/async/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 72
    if-gtz v0, :cond_0

    .line 73
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 75
    :cond_0
    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Lio/realm/internal/async/a;

    invoke-direct {v0, p1}, Lio/realm/internal/async/a;-><init>(Ljava/lang/Runnable;)V

    invoke-super {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 112
    return-object v0
.end method

.method protected beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 153
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 154
    iget-object v0, p0, Lio/realm/internal/async/c;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 156
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lio/realm/internal/async/c;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/realm/internal/async/c;->d:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    iget-object v0, p0, Lio/realm/internal/async/c;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 162
    :goto_1
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lio/realm/internal/async/c;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/realm/internal/async/c;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
