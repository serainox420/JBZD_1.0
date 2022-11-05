.class public Lcom/loopme/common/EventManager;
.super Ljava/lang/Object;
.source "EventManager.java"


# static fields
.field private static final EVENT_TYPE:Ljava/lang/String; = "et"

.field private static final ID:Ljava/lang/String; = "id"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final R:Ljava/lang/String; = "r"

.field private static final URL:Ljava/lang/String; = "loopme.me/api/v2/events"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/loopme/common/EventManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loopme/common/EventManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/loopme/common/EventManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private build(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 25
    const-string v0, "loopme.me/api/v2/events"

    .line 26
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 28
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 29
    const-string v0, "https"

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 31
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 32
    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-nez v4, :cond_0

    .line 33
    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 39
    :cond_1
    const-string v0, "et"

    const-string v1, "SDK_FEEDBACK"

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "r"

    const-string v3, "1"

    .line 40
    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "id"

    .line 41
    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 44
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public trackSdkEvent(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 48
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 49
    invoke-direct {p0, p1}, Lcom/loopme/common/EventManager;->build(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    new-instance v2, Lcom/loopme/common/EventManager$1;

    invoke-direct {v2, p0, v1}, Lcom/loopme/common/EventManager$1;-><init>(Lcom/loopme/common/EventManager;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 75
    return-void
.end method
