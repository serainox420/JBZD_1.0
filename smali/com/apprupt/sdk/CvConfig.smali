.class public Lcom/apprupt/sdk/CvConfig;
.super Ljava/lang/Object;
.source "CvConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apprupt/sdk/CvConfig$Listener;,
        Lcom/apprupt/sdk/CvConfig$PropertiesProvider;
    }
.end annotation


# static fields
.field private static final j:Lcom/apprupt/sdk/Logger$log;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Lcom/apprupt/sdk/Q$Task;

.field final c:Lcom/apprupt/sdk/Q$Task;

.field final d:Lcom/apprupt/sdk/Q$Task;

.field final e:Lcom/apprupt/sdk/Q$Task;

.field final f:Lcom/apprupt/sdk/Q$Task;

.field final g:Lcom/apprupt/sdk/Q$Task;

.field final h:Lcom/apprupt/sdk/Q$SuccessHandler;

.field private final i:Lcom/apprupt/sdk/Logger$log;

.field private final k:Landroid/os/Handler;

.field private final l:Lcom/apprupt/sdk/SerialExecutor;

.field private final m:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/apprupt/sdk/CvConfig$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/apprupt/sdk/CvConfig$PropertiesProvider;",
            ">;"
        }
    .end annotation
.end field

.field private volatile p:Lcom/apprupt/sdk/Q;

.field private q:Landroid/content/Context;

.field private volatile r:J

.field private volatile s:J

.field private volatile t:I

.field private volatile u:Lcom/apprupt/sdk/SimpleJSON;

.field private volatile v:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "Q"

    invoke-static {v0}, Lcom/apprupt/sdk/Logger;->a(Ljava/lang/String;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    sput-object v0, Lcom/apprupt/sdk/CvConfig;->j:Lcom/apprupt/sdk/Logger$log;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "CvConfig"

    invoke-static {v0}, Lcom/apprupt/sdk/Logger;->a(Ljava/lang/String;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    iput-object v0, p0, Lcom/apprupt/sdk/CvConfig;->i:Lcom/apprupt/sdk/Logger$log;

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/apprupt/sdk/CvConfig;->k:Landroid/os/Handler;

    .line 37
    new-instance v0, Lcom/apprupt/sdk/SerialExecutor;

    invoke-direct {v0}, Lcom/apprupt/sdk/SerialExecutor;-><init>()V

    iput-object v0, p0, Lcom/apprupt/sdk/CvConfig;->l:Lcom/apprupt/sdk/SerialExecutor;

    .line 38
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/apprupt/sdk/CvConfig;->m:Ljava/util/Queue;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apprupt/sdk/CvConfig;->n:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apprupt/sdk/CvConfig;->o:Ljava/util/List;

    .line 42
    iput-object v2, p0, Lcom/apprupt/sdk/CvConfig;->p:Lcom/apprupt/sdk/Q;

    .line 43
    iput-object v2, p0, Lcom/apprupt/sdk/CvConfig;->q:Landroid/content/Context;

    .line 44
    iput-wide v4, p0, Lcom/apprupt/sdk/CvConfig;->r:J

    .line 45
    iput-wide v4, p0, Lcom/apprupt/sdk/CvConfig;->s:J

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/apprupt/sdk/CvConfig;->t:I

    .line 47
    new-instance v0, Lcom/apprupt/sdk/SimpleJSON;

    invoke-direct {v0}, Lcom/apprupt/sdk/SimpleJSON;-><init>()V

    iput-object v0, p0, Lcom/apprupt/sdk/CvConfig;->u:Lcom/apprupt/sdk/SimpleJSON;

    .line 48
    iput-object v2, p0, Lcom/apprupt/sdk/CvConfig;->v:Ljava/lang/String;

    .line 169
    new-instance v0, Lcom/apprupt/sdk/CvConfig$7;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/CvConfig$7;-><init>(Lcom/apprupt/sdk/CvConfig;)V

    iput-object v0, p0, Lcom/apprupt/sdk/CvConfig;->b:Lcom/apprupt/sdk/Q$Task;

    .line 203
    new-instance v0, Lcom/apprupt/sdk/CvConfig$8;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/CvConfig$8;-><init>(Lcom/apprupt/sdk/CvConfig;)V

    iput-object v0, p0, Lcom/apprupt/sdk/CvConfig;->c:Lcom/apprupt/sdk/Q$Task;

    .line 214
    new-instance v0, Lcom/apprupt/sdk/CvConfig$9;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/CvConfig$9;-><init>(Lcom/apprupt/sdk/CvConfig;)V

    iput-object v0, p0, Lcom/apprupt/sdk/CvConfig;->d:Lcom/apprupt/sdk/Q$Task;

    .line 229
    new-instance v0, Lcom/apprupt/sdk/CvConfig$10;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/CvConfig$10;-><init>(Lcom/apprupt/sdk/CvConfig;)V

    iput-object v0, p0, Lcom/apprupt/sdk/CvConfig;->e:Lcom/apprupt/sdk/Q$Task;

    .line 250
    new-instance v0, Lcom/apprupt/sdk/CvConfig$11;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/CvConfig$11;-><init>(Lcom/apprupt/sdk/CvConfig;)V

    iput-object v0, p0, Lcom/apprupt/sdk/CvConfig;->f:Lcom/apprupt/sdk/Q$Task;

    .line 265
    new-instance v0, Lcom/apprupt/sdk/CvConfig$12;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/CvConfig$12;-><init>(Lcom/apprupt/sdk/CvConfig;)V

    iput-object v0, p0, Lcom/apprupt/sdk/CvConfig;->g:Lcom/apprupt/sdk/Q$Task;

    .line 288
    new-instance v0, Lcom/apprupt/sdk/CvConfig$14;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/CvConfig$14;-><init>(Lcom/apprupt/sdk/CvConfig;)V

    iput-object v0, p0, Lcom/apprupt/sdk/CvConfig;->h:Lcom/apprupt/sdk/Q$SuccessHandler;

    .line 53
    iput-object p1, p0, Lcom/apprupt/sdk/CvConfig;->a:Ljava/lang/String;

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/apprupt/sdk/CvConfig;J)J
    .locals 1

    .prologue
    .line 15
    iput-wide p1, p0, Lcom/apprupt/sdk/CvConfig;->s:J

    return-wide p1
.end method

.method static synthetic a(Lcom/apprupt/sdk/CvConfig;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/apprupt/sdk/CvConfig;->q:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic a(Lcom/apprupt/sdk/CvConfig;)Lcom/apprupt/sdk/Logger$log;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig;->i:Lcom/apprupt/sdk/Logger$log;

    return-object v0
.end method

.method static synthetic a(Lcom/apprupt/sdk/CvConfig;Lcom/apprupt/sdk/Q;)Lcom/apprupt/sdk/Q;
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/apprupt/sdk/CvConfig;->p:Lcom/apprupt/sdk/Q;

    return-object p1
.end method

.method static synthetic a(Lcom/apprupt/sdk/CvConfig;Lcom/apprupt/sdk/SimpleJSON;)Lcom/apprupt/sdk/SimpleJSON;
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/apprupt/sdk/CvConfig;->u:Lcom/apprupt/sdk/SimpleJSON;

    return-object p1
.end method

.method static synthetic a(Lcom/apprupt/sdk/CvConfig;Lcom/apprupt/sdk/CvConfig$Listener;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/apprupt/sdk/CvConfig;->b(Lcom/apprupt/sdk/CvConfig$Listener;)V

    return-void
.end method

.method static synthetic b(Lcom/apprupt/sdk/CvConfig;J)J
    .locals 1

    .prologue
    .line 15
    iput-wide p1, p0, Lcom/apprupt/sdk/CvConfig;->r:J

    return-wide p1
.end method

.method static synthetic b(Lcom/apprupt/sdk/CvConfig;)Ljava/util/List;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig;->n:Ljava/util/List;

    return-object v0
.end method

.method private b(Lcom/apprupt/sdk/CvConfig$Listener;)V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig;->k:Landroid/os/Handler;

    new-instance v1, Lcom/apprupt/sdk/CvConfig$13;

    invoke-direct {v1, p0, p1}, Lcom/apprupt/sdk/CvConfig$13;-><init>(Lcom/apprupt/sdk/CvConfig;Lcom/apprupt/sdk/CvConfig$Listener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 286
    return-void
.end method

.method static synthetic c(Lcom/apprupt/sdk/CvConfig;)I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/apprupt/sdk/CvConfig;->t:I

    return v0
.end method

.method static synthetic d()Lcom/apprupt/sdk/Logger$log;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/apprupt/sdk/CvConfig;->j:Lcom/apprupt/sdk/Logger$log;

    return-object v0
.end method

.method static synthetic d(Lcom/apprupt/sdk/CvConfig;)Lcom/apprupt/sdk/Q;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig;->p:Lcom/apprupt/sdk/Q;

    return-object v0
.end method

.method static synthetic e(Lcom/apprupt/sdk/CvConfig;)J
    .locals 2

    .prologue
    .line 15
    iget-wide v0, p0, Lcom/apprupt/sdk/CvConfig;->s:J

    return-wide v0
.end method

.method private declared-synchronized e()V
    .locals 5

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig;->i:Lcom/apprupt/sdk/Logger$log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating q..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/apprupt/sdk/CvConfig;->p:Lcom/apprupt/sdk/Q;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 123
    new-instance v0, Lcom/apprupt/sdk/Q;

    invoke-direct {v0}, Lcom/apprupt/sdk/Q;-><init>()V

    iput-object v0, p0, Lcom/apprupt/sdk/CvConfig;->p:Lcom/apprupt/sdk/Q;

    .line 124
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig;->i:Lcom/apprupt/sdk/Logger$log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Adding steps:"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 125
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig;->i:Lcom/apprupt/sdk/Logger$log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, " - prepare params"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig;->p:Lcom/apprupt/sdk/Q;

    iget-object v1, p0, Lcom/apprupt/sdk/CvConfig;->b:Lcom/apprupt/sdk/Q$Task;

    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/Q;->b(Lcom/apprupt/sdk/Q$Task;)Lcom/apprupt/sdk/Q;

    .line 127
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig;->i:Lcom/apprupt/sdk/Logger$log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, " - request config"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig;->p:Lcom/apprupt/sdk/Q;

    iget-object v1, p0, Lcom/apprupt/sdk/CvConfig;->c:Lcom/apprupt/sdk/Q$Task;

    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/Q;->b(Lcom/apprupt/sdk/Q$Task;)Lcom/apprupt/sdk/Q;

    .line 129
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig;->i:Lcom/apprupt/sdk/Logger$log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, " - decode data"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 130
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig;->p:Lcom/apprupt/sdk/Q;

    iget-object v1, p0, Lcom/apprupt/sdk/CvConfig;->d:Lcom/apprupt/sdk/Q$Task;

    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/Q;->b(Lcom/apprupt/sdk/Q$Task;)Lcom/apprupt/sdk/Q;

    .line 131
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig;->i:Lcom/apprupt/sdk/Logger$log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, " - parse data"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 132
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig;->p:Lcom/apprupt/sdk/Q;

    iget-object v1, p0, Lcom/apprupt/sdk/CvConfig;->e:Lcom/apprupt/sdk/Q$Task;

    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/Q;->b(Lcom/apprupt/sdk/Q$Task;)Lcom/apprupt/sdk/Q;

    .line 133
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig;->i:Lcom/apprupt/sdk/Logger$log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, " - save data to files"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 134
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig;->p:Lcom/apprupt/sdk/Q;

    iget-object v1, p0, Lcom/apprupt/sdk/CvConfig;->f:Lcom/apprupt/sdk/Q$Task;

    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/Q;->b(Lcom/apprupt/sdk/Q$Task;)Lcom/apprupt/sdk/Q;

    .line 135
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig;->i:Lcom/apprupt/sdk/Logger$log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Add error handler"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig;->p:Lcom/apprupt/sdk/Q;

    new-instance v1, Lcom/apprupt/sdk/CvConfig$5;

    invoke-direct {v1, p0}, Lcom/apprupt/sdk/CvConfig$5;-><init>(Lcom/apprupt/sdk/CvConfig;)V

    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/Q;->a(Lcom/apprupt/sdk/Q$FailureHandler;)Lcom/apprupt/sdk/Q;

    .line 152
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig;->i:Lcom/apprupt/sdk/Logger$log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Add success handler"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 153
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig;->p:Lcom/apprupt/sdk/Q;

    new-instance v1, Lcom/apprupt/sdk/CvConfig$6;

    invoke-direct {v1, p0}, Lcom/apprupt/sdk/CvConfig$6;-><init>(Lcom/apprupt/sdk/CvConfig;)V

    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/Q;->a(Lcom/apprupt/sdk/Q$SuccessHandler;)Lcom/apprupt/sdk/Q;

    .line 162
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig;->i:Lcom/apprupt/sdk/Logger$log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Loading configuration"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    monitor-exit p0

    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic f(Lcom/apprupt/sdk/CvConfig;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig;->k:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g(Lcom/apprupt/sdk/CvConfig;)Ljava/util/Queue;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig;->m:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic h(Lcom/apprupt/sdk/CvConfig;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig;->q:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic i(Lcom/apprupt/sdk/CvConfig;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/apprupt/sdk/CvConfig;->e()V

    return-void
.end method

.method static synthetic j(Lcom/apprupt/sdk/CvConfig;)J
    .locals 2

    .prologue
    .line 15
    iget-wide v0, p0, Lcom/apprupt/sdk/CvConfig;->r:J

    return-wide v0
.end method

.method static synthetic k(Lcom/apprupt/sdk/CvConfig;)Ljava/util/List;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig;->o:Ljava/util/List;

    return-object v0
.end method

.method static synthetic l(Lcom/apprupt/sdk/CvConfig;)Lcom/apprupt/sdk/SerialExecutor;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig;->l:Lcom/apprupt/sdk/SerialExecutor;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/apprupt/sdk/SimpleJSON;
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig;->u:Lcom/apprupt/sdk/SimpleJSON;

    if-nez v0, :cond_0

    new-instance v0, Lcom/apprupt/sdk/SimpleJSON;

    invoke-direct {v0}, Lcom/apprupt/sdk/SimpleJSON;-><init>()V

    .line 320
    :goto_0
    return-object v0

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig;->u:Lcom/apprupt/sdk/SimpleJSON;

    invoke-virtual {v0, p1}, Lcom/apprupt/sdk/SimpleJSON;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig;->u:Lcom/apprupt/sdk/SimpleJSON;

    invoke-virtual {v0, p1}, Lcom/apprupt/sdk/SimpleJSON;->e(Ljava/lang/String;)Lcom/apprupt/sdk/SimpleJSON;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig;->u:Lcom/apprupt/sdk/SimpleJSON;

    new-instance v1, Lcom/apprupt/sdk/SimpleJSON;

    invoke-direct {v1}, Lcom/apprupt/sdk/SimpleJSON;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/SimpleJSON;

    .line 320
    :cond_2
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig;->u:Lcom/apprupt/sdk/SimpleJSON;

    invoke-virtual {v0, p1}, Lcom/apprupt/sdk/SimpleJSON;->e(Ljava/lang/String;)Lcom/apprupt/sdk/SimpleJSON;

    move-result-object v0

    goto :goto_0
.end method

.method a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 166
    const-string v0, "com.apprupt.config-%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/apprupt/sdk/CvConfig;->q:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 57
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig;->i:Lcom/apprupt/sdk/Logger$log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Initializing config..."

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig;->l:Lcom/apprupt/sdk/SerialExecutor;

    new-instance v1, Lcom/apprupt/sdk/CvConfig$1;

    invoke-direct {v1, p0, p1}, Lcom/apprupt/sdk/CvConfig$1;-><init>(Lcom/apprupt/sdk/CvConfig;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/SerialExecutor;->execute(Ljava/lang/Runnable;)V

    .line 66
    return-void
.end method

.method a(Lcom/apprupt/sdk/CvConfig$Listener;)V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig;->l:Lcom/apprupt/sdk/SerialExecutor;

    new-instance v1, Lcom/apprupt/sdk/CvConfig$2;

    invoke-direct {v1, p0, p1}, Lcom/apprupt/sdk/CvConfig$2;-><init>(Lcom/apprupt/sdk/CvConfig;Lcom/apprupt/sdk/CvConfig$Listener;)V

    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/SerialExecutor;->execute(Ljava/lang/Runnable;)V

    .line 86
    return-void
.end method

.method a(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 102
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/apprupt/sdk/CvConfig$4;

    invoke-direct {v1, p0, p1}, Lcom/apprupt/sdk/CvConfig$4;-><init>(Lcom/apprupt/sdk/CvConfig;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 117
    return-void
.end method

.method public b()J
    .locals 2

    .prologue
    .line 313
    iget-wide v0, p0, Lcom/apprupt/sdk/CvConfig;->r:J

    return-wide v0
.end method

.method c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig;->v:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig;->q:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 325
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig;->v:Ljava/lang/String;

    goto :goto_0
.end method
