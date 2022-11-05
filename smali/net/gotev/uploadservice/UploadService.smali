.class public final Lnet/gotev/uploadservice/UploadService;
.super Landroid/app/Service;
.source "UploadService.java"


# static fields
.field public static a:I

.field public static b:I

.field public static c:Z

.field public static d:Ljava/lang/String;

.field public static e:Lnet/gotev/uploadservice/a/c;

.field public static f:I

.field public static g:I

.field public static h:I

.field public static i:I

.field private static final j:Ljava/lang/String;

.field private static final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lnet/gotev/uploadservice/j;",
            ">;"
        }
    .end annotation
.end field

.field private static final n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lnet/gotev/uploadservice/i;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile p:Ljava/lang/String;


# instance fields
.field private k:Landroid/os/PowerManager$WakeLock;

.field private l:I

.field private final o:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 34
    const-class v0, Lnet/gotev/uploadservice/UploadService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/gotev/uploadservice/UploadService;->j:Ljava/lang/String;

    .line 40
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lnet/gotev/uploadservice/UploadService;->a:I

    .line 46
    sput v1, Lnet/gotev/uploadservice/UploadService;->b:I

    .line 56
    sput-boolean v1, Lnet/gotev/uploadservice/UploadService;->c:Z

    .line 62
    const-string v0, "net.gotev"

    sput-object v0, Lnet/gotev/uploadservice/UploadService;->d:Ljava/lang/String;

    .line 68
    new-instance v0, Lnet/gotev/uploadservice/a/a/b;

    invoke-direct {v0}, Lnet/gotev/uploadservice/a/a/b;-><init>()V

    sput-object v0, Lnet/gotev/uploadservice/UploadService;->e:Lnet/gotev/uploadservice/a/c;

    .line 73
    const/16 v0, 0x1000

    sput v0, Lnet/gotev/uploadservice/UploadService;->f:I

    .line 80
    const/16 v0, 0x3e8

    sput v0, Lnet/gotev/uploadservice/UploadService;->g:I

    .line 88
    const/16 v0, 0xa

    sput v0, Lnet/gotev/uploadservice/UploadService;->h:I

    .line 96
    const v0, 0x927c0

    sput v0, Lnet/gotev/uploadservice/UploadService;->i:I

    .line 120
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lnet/gotev/uploadservice/UploadService;->m:Ljava/util/Map;

    .line 121
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lnet/gotev/uploadservice/UploadService;->n:Ljava/util/Map;

    .line 123
    const/4 v0, 0x0

    sput-object v0, Lnet/gotev/uploadservice/UploadService;->p:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 119
    const/4 v0, 0x0

    iput v0, p0, Lnet/gotev/uploadservice/UploadService;->l:I

    .line 122
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lnet/gotev/uploadservice/UploadService;->o:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method protected static a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnet/gotev/uploadservice/UploadService;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".uploadservice.action.upload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static a(Ljava/lang/String;Lnet/gotev/uploadservice/i;)V
    .locals 1

    .prologue
    .line 355
    if-nez p1, :cond_0

    .line 359
    :goto_0
    return-void

    .line 358
    :cond_0
    sget-object v0, Lnet/gotev/uploadservice/UploadService;->n:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected static b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnet/gotev/uploadservice/UploadService;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".uploadservice.broadcast.status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static b(Ljava/lang/String;)Lnet/gotev/uploadservice/i;
    .locals 1

    .prologue
    .line 368
    sget-object v0, Lnet/gotev/uploadservice/UploadService;->n:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/gotev/uploadservice/i;

    return-object v0
.end method

.method public static declared-synchronized c()V
    .locals 4

    .prologue
    .line 166
    const-class v1, Lnet/gotev/uploadservice/UploadService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lnet/gotev/uploadservice/UploadService;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    :cond_0
    monitor-exit v1

    return-void

    .line 171
    :cond_1
    :try_start_1
    sget-object v0, Lnet/gotev/uploadservice/UploadService;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 173
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    sget-object v0, Lnet/gotev/uploadservice/UploadService;->m:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/gotev/uploadservice/j;

    .line 175
    invoke-virtual {v0}, Lnet/gotev/uploadservice/j;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private d()I
    .locals 1

    .prologue
    .line 244
    sget-object v0, Lnet/gotev/uploadservice/UploadService;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {p0}, Lnet/gotev/uploadservice/UploadService;->stopSelf()V

    .line 246
    const/4 v0, 0x2

    .line 249
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method a(Landroid/content/Intent;)Lnet/gotev/uploadservice/j;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 279
    const-string v0, "taskClass"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 281
    if-nez v2, :cond_0

    move-object v0, v1

    .line 303
    :goto_0
    return-object v0

    .line 288
    :cond_0
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 290
    const-class v3, Lnet/gotev/uploadservice/j;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 291
    const-class v3, Lnet/gotev/uploadservice/j;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/gotev/uploadservice/j;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 292
    :try_start_1
    invoke-virtual {v0, p0, p1}, Lnet/gotev/uploadservice/j;->a(Lnet/gotev/uploadservice/UploadService;Landroid/content/Intent;)V

    .line 297
    :goto_1
    sget-object v1, Lnet/gotev/uploadservice/UploadService;->j:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Successfully created new task with class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/gotev/uploadservice/Logger;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 299
    :catch_0
    move-exception v1

    .line 300
    :goto_2
    sget-object v2, Lnet/gotev/uploadservice/UploadService;->j:Ljava/lang/String;

    const-string v3, "Error while instantiating new task"

    invoke-static {v2, v3, v1}, Lnet/gotev/uploadservice/Logger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 294
    :cond_1
    :try_start_2
    sget-object v0, Lnet/gotev/uploadservice/UploadService;->j:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not extend UploadTask!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lnet/gotev/uploadservice/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v1

    goto :goto_1

    .line 299
    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_2
.end method

.method protected declared-synchronized a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 333
    monitor-enter p0

    :try_start_0
    sget-object v0, Lnet/gotev/uploadservice/UploadService;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/gotev/uploadservice/j;

    .line 334
    sget-object v1, Lnet/gotev/uploadservice/UploadService;->n:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    sget-boolean v1, Lnet/gotev/uploadservice/UploadService;->c:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lnet/gotev/uploadservice/j;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    invoke-virtual {v0}, Lnet/gotev/uploadservice/UploadTaskParameters;->c()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnet/gotev/uploadservice/UploadService;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    sget-object v0, Lnet/gotev/uploadservice/UploadService;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now un-holded the foreground notification"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/gotev/uploadservice/Logger;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const/4 v0, 0x0

    sput-object v0, Lnet/gotev/uploadservice/UploadService;->p:Ljava/lang/String;

    .line 342
    :cond_0
    sget-boolean v0, Lnet/gotev/uploadservice/UploadService;->c:Z

    if-eqz v0, :cond_1

    sget-object v0, Lnet/gotev/uploadservice/UploadService;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    sget-object v0, Lnet/gotev/uploadservice/UploadService;->j:Ljava/lang/String;

    const-string v1, "All tasks completed, stopping foreground execution"

    invoke-static {v0, v1}, Lnet/gotev/uploadservice/Logger;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/gotev/uploadservice/UploadService;->stopForeground(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    :cond_1
    monitor-exit p0

    return-void

    .line 333
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized a(Ljava/lang/String;Landroid/app/Notification;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 312
    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lnet/gotev/uploadservice/UploadService;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 324
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 314
    :cond_1
    :try_start_1
    sget-object v1, Lnet/gotev/uploadservice/UploadService;->p:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 315
    sput-object p1, Lnet/gotev/uploadservice/UploadService;->p:Ljava/lang/String;

    .line 316
    sget-object v1, Lnet/gotev/uploadservice/UploadService;->j:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " now holds the foreground notification"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/gotev/uploadservice/Logger;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :cond_2
    sget-object v1, Lnet/gotev/uploadservice/UploadService;->p:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    const/16 v0, 0x4d2

    invoke-virtual {p0, v0, p2}, Lnet/gotev/uploadservice/UploadService;->startForeground(ILandroid/app/Notification;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    const/4 v0, 0x1

    goto :goto_0

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 8

    .prologue
    .line 181
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 183
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lnet/gotev/uploadservice/UploadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 184
    const/4 v1, 0x1

    sget-object v2, Lnet/gotev/uploadservice/UploadService;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lnet/gotev/uploadservice/UploadService;->k:Landroid/os/PowerManager$WakeLock;

    .line 185
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadService;->k:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 187
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadService;->k:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadService;->k:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 190
    :cond_0
    sget v0, Lnet/gotev/uploadservice/UploadService;->a:I

    if-gtz v0, :cond_1

    .line 191
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lnet/gotev/uploadservice/UploadService;->a:I

    .line 195
    :cond_1
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lnet/gotev/uploadservice/UploadService;->a:I

    sget v3, Lnet/gotev/uploadservice/UploadService;->a:I

    sget v0, Lnet/gotev/uploadservice/UploadService;->b:I

    int-to-long v4, v0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lnet/gotev/uploadservice/UploadService;->o:Ljava/util/concurrent/BlockingQueue;

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lnet/gotev/uploadservice/UploadService;->q:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 201
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 254
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 256
    invoke-static {}, Lnet/gotev/uploadservice/UploadService;->c()V

    .line 257
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadService;->q:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 259
    sget-boolean v0, Lnet/gotev/uploadservice/UploadService;->c:Z

    if-eqz v0, :cond_0

    .line 260
    sget-object v0, Lnet/gotev/uploadservice/UploadService;->j:Ljava/lang/String;

    const-string v1, "Stopping foreground execution"

    invoke-static {v0, v1}, Lnet/gotev/uploadservice/Logger;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/gotev/uploadservice/UploadService;->stopForeground(Z)V

    .line 264
    :cond_0
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadService;->k:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadService;->k:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 267
    :cond_1
    sget-object v0, Lnet/gotev/uploadservice/UploadService;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 268
    sget-object v0, Lnet/gotev/uploadservice/UploadService;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 270
    sget-object v0, Lnet/gotev/uploadservice/UploadService;->j:Ljava/lang/String;

    const-string v1, "UploadService destroyed"

    invoke-static {v0, v1}, Lnet/gotev/uploadservice/Logger;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 210
    if-eqz p1, :cond_0

    invoke-static {}, Lnet/gotev/uploadservice/UploadService;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 211
    :cond_0
    invoke-direct {p0}, Lnet/gotev/uploadservice/UploadService;->d()I

    move-result v0

    .line 240
    :goto_0
    return v0

    .line 214
    :cond_1
    sget-object v2, Lnet/gotev/uploadservice/UploadService;->j:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "Starting service with namespace: %s, upload pool size: %d, %ds idle thread keep alive time. Foreground execution is %s"

    const/4 v0, 0x4

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    sget-object v6, Lnet/gotev/uploadservice/UploadService;->d:Ljava/lang/String;

    aput-object v6, v5, v0

    sget v0, Lnet/gotev/uploadservice/UploadService;->a:I

    .line 216
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    const/4 v0, 0x2

    sget v6, Lnet/gotev/uploadservice/UploadService;->b:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v6, 0x3

    sget-boolean v0, Lnet/gotev/uploadservice/UploadService;->c:Z

    if-eqz v0, :cond_2

    const-string v0, "enabled"

    :goto_1
    aput-object v0, v5, v6

    .line 214
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lnet/gotev/uploadservice/Logger;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0, p1}, Lnet/gotev/uploadservice/UploadService;->a(Landroid/content/Intent;)Lnet/gotev/uploadservice/j;

    move-result-object v0

    .line 221
    if-nez v0, :cond_3

    .line 222
    invoke-direct {p0}, Lnet/gotev/uploadservice/UploadService;->d()I

    move-result v0

    goto :goto_0

    .line 216
    :cond_2
    const-string v0, "disabled"

    goto :goto_1

    .line 225
    :cond_3
    sget-object v2, Lnet/gotev/uploadservice/UploadService;->m:Ljava/util/Map;

    iget-object v3, v0, Lnet/gotev/uploadservice/j;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    invoke-virtual {v3}, Lnet/gotev/uploadservice/UploadTaskParameters;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 226
    sget-object v1, Lnet/gotev/uploadservice/UploadService;->j:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Preventing upload with id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lnet/gotev/uploadservice/j;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    invoke-virtual {v0}, Lnet/gotev/uploadservice/UploadTaskParameters;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to be uploaded twice! Please check your code and fix it!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lnet/gotev/uploadservice/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-direct {p0}, Lnet/gotev/uploadservice/UploadService;->d()I

    move-result v0

    goto :goto_0

    .line 233
    :cond_4
    iget v2, p0, Lnet/gotev/uploadservice/UploadService;->l:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lnet/gotev/uploadservice/UploadService;->l:I

    .line 234
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lnet/gotev/uploadservice/j;->a(J)Lnet/gotev/uploadservice/j;

    move-result-object v2

    iget v3, p0, Lnet/gotev/uploadservice/UploadService;->l:I

    add-int/lit16 v3, v3, 0x4d2

    .line 235
    invoke-virtual {v2, v3}, Lnet/gotev/uploadservice/j;->b(I)Lnet/gotev/uploadservice/j;

    .line 237
    sget-object v2, Lnet/gotev/uploadservice/UploadService;->m:Ljava/util/Map;

    iget-object v3, v0, Lnet/gotev/uploadservice/j;->d:Lnet/gotev/uploadservice/UploadTaskParameters;

    invoke-virtual {v3}, Lnet/gotev/uploadservice/UploadTaskParameters;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object v2, p0, Lnet/gotev/uploadservice/UploadService;->q:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    move v0, v1

    .line 240
    goto/16 :goto_0
.end method
