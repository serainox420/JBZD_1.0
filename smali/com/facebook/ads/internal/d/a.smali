.class public Lcom/facebook/ads/internal/d/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/facebook/ads/internal/d/a;

.field private static c:Z


# instance fields
.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/d/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/d/a;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/ads/internal/d/a;->c:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/d/a;->d:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/facebook/ads/internal/d/a;
    .locals 2

    sget-object v0, Lcom/facebook/ads/internal/d/a;->b:Lcom/facebook/ads/internal/d/a;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/ads/internal/d/a;->b:Lcom/facebook/ads/internal/d/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/facebook/ads/internal/d/a;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/d/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/facebook/ads/internal/d/a;->b:Lcom/facebook/ads/internal/d/a;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/facebook/ads/internal/d/a;->b:Lcom/facebook/ads/internal/d/a;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/facebook/ads/internal/d/a;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/d/a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/internal/h;->c(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/internal/d/b;

    iget-object v2, p0, Lcom/facebook/ads/internal/d/a;->d:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Lcom/facebook/ads/internal/d/b;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Landroid/content/Context;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    :try_start_2
    sput-boolean v0, Lcom/facebook/ads/internal/d/a;->c:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    sget-object v1, Lcom/facebook/ads/internal/d/a;->a:Ljava/lang/String;

    const-string v2, "No permissions to set the default uncaught exception handler"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
