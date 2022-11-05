.class public Lcom/facebook/ads/internal/c/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/c/b$b;,
        Lcom/facebook/ads/internal/c/b$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/os/Handler;

.field private final c:Ljava/util/concurrent/ExecutorService;

.field private final d:Lcom/facebook/ads/internal/c/c;

.field private final e:Lcom/facebook/ads/internal/c/d;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/c/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/c/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/c/b;->b:Landroid/os/Handler;

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/c/b;->c:Ljava/util/concurrent/ExecutorService;

    invoke-static {p1}, Lcom/facebook/ads/internal/c/c;->a(Landroid/content/Context;)Lcom/facebook/ads/internal/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/c/b;->d:Lcom/facebook/ads/internal/c/c;

    invoke-static {p1}, Lcom/facebook/ads/internal/c/d;->a(Landroid/content/Context;)Lcom/facebook/ads/internal/c/d;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/c/b;->e:Lcom/facebook/ads/internal/c/d;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/c/b;->f:Ljava/util/List;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/c/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/c/b;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/c/b;->c:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/c/b;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/c/b;->b:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/c/b;)Lcom/facebook/ads/internal/c/c;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/c/b;->d:Lcom/facebook/ads/internal/c/c;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/ads/internal/c/b;)Lcom/facebook/ads/internal/c/d;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/c/b;->e:Lcom/facebook/ads/internal/c/d;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/ads/internal/c/a;)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/facebook/ads/internal/c/b;->f:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/c/b;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/facebook/ads/internal/c/b$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/facebook/ads/internal/c/b$1;-><init>(Lcom/facebook/ads/internal/c/b;Ljava/util/ArrayList;Lcom/facebook/ads/internal/c/a;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    iget-object v0, p0, Lcom/facebook/ads/internal/c/b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/c/b;->f:Ljava/util/List;

    new-instance v1, Lcom/facebook/ads/internal/c/b$a;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/internal/c/b$a;-><init>(Lcom/facebook/ads/internal/c/b;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/c/b;->f:Ljava/util/List;

    new-instance v1, Lcom/facebook/ads/internal/c/b$b;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/internal/c/b$b;-><init>(Lcom/facebook/ads/internal/c/b;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/c/b;->e:Lcom/facebook/ads/internal/c/d;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/c/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
