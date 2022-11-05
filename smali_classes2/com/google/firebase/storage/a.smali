.class public Lcom/google/firebase/storage/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/storage/a$a;
    }
.end annotation


# static fields
.field public static a:Lcom/google/firebase/storage/a;

.field private static b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static d:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static f:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static h:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v12, 0x3

    const/4 v11, 0x2

    const-wide/16 v4, 0x5

    const/16 v10, 0x80

    const/4 v9, 0x1

    new-instance v0, Lcom/google/firebase/storage/a;

    invoke-direct {v0}, Lcom/google/firebase/storage/a;-><init>()V

    sput-object v0, Lcom/google/firebase/storage/a;->a:Lcom/google/firebase/storage/a;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/google/firebase/storage/a;->b:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x5

    const/4 v3, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/google/firebase/storage/a;->b:Ljava/util/concurrent/BlockingQueue;

    new-instance v8, Lcom/google/firebase/storage/a$a;

    const-string v0, "Command-"

    invoke-direct {v8, v0}, Lcom/google/firebase/storage/a$a;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/google/firebase/storage/a;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/google/firebase/storage/a;->d:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/google/firebase/storage/a;->d:Ljava/util/concurrent/BlockingQueue;

    new-instance v8, Lcom/google/firebase/storage/a$a;

    const-string v0, "Upload-"

    invoke-direct {v8, v0}, Lcom/google/firebase/storage/a$a;-><init>(Ljava/lang/String;)V

    move v2, v11

    move v3, v11

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/google/firebase/storage/a;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/google/firebase/storage/a;->f:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/google/firebase/storage/a;->f:Ljava/util/concurrent/BlockingQueue;

    new-instance v8, Lcom/google/firebase/storage/a$a;

    const-string v0, "Download-"

    invoke-direct {v8, v0}, Lcom/google/firebase/storage/a$a;-><init>(Ljava/lang/String;)V

    move v2, v12

    move v3, v12

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/google/firebase/storage/a;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/google/firebase/storage/a;->h:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/google/firebase/storage/a;->h:Ljava/util/concurrent/BlockingQueue;

    new-instance v8, Lcom/google/firebase/storage/a$a;

    const-string v0, "Callbacks-"

    invoke-direct {v8, v0}, Lcom/google/firebase/storage/a$a;-><init>(Ljava/lang/String;)V

    move v2, v9

    move v3, v9

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/google/firebase/storage/a;->i:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v0, Lcom/google/firebase/storage/a;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    sget-object v0, Lcom/google/firebase/storage/a;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    sget-object v0, Lcom/google/firebase/storage/a;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    sget-object v0, Lcom/google/firebase/storage/a;->i:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/firebase/storage/a;
    .locals 1

    sget-object v0, Lcom/google/firebase/storage/a;->a:Lcom/google/firebase/storage/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcom/google/firebase/storage/a;->i:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
