.class public Lcom/apprupt/sdk/CvMediation;
.super Ljava/lang/Object;
.source "CvMediation.java"


# static fields
.field private static final f:Lcom/apprupt/sdk/Logger$log;

.field private static final g:Lcom/apprupt/sdk/Logger$log;

.field private static final h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/apprupt/sdk/mediation/AdWrapper;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lcom/apprupt/sdk/MediationConfig;

.field final b:Lcom/apprupt/sdk/Q$Task;

.field final c:Lcom/apprupt/sdk/Q$Task;

.field final d:Lcom/apprupt/sdk/Q$Task;

.field private final e:Lcom/apprupt/sdk/Logger$log;

.field private final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/apprupt/sdk/mediation/Adapter;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile k:Z

.field private l:Lcom/apprupt/sdk/Q;

.field private final m:Landroid/os/Handler;

.field private n:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "Mediation"

    invoke-static {v0}, Lcom/apprupt/sdk/Logger;->a(Ljava/lang/String;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    sput-object v0, Lcom/apprupt/sdk/CvMediation;->f:Lcom/apprupt/sdk/Logger$log;

    .line 22
    const-string v0, "Q"

    invoke-static {v0}, Lcom/apprupt/sdk/Logger;->a(Ljava/lang/String;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    sput-object v0, Lcom/apprupt/sdk/CvMediation;->g:Lcom/apprupt/sdk/Logger$log;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/apprupt/sdk/CvMediation;->h:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "Lifecycle.Mediation"

    invoke-static {v0}, Lcom/apprupt/sdk/Logger;->a(Ljava/lang/String;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    iput-object v0, p0, Lcom/apprupt/sdk/CvMediation;->e:Lcom/apprupt/sdk/Logger$log;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/apprupt/sdk/CvMediation;->i:Ljava/util/HashMap;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/apprupt/sdk/CvMediation;->j:Ljava/util/HashMap;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apprupt/sdk/CvMediation;->k:Z

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apprupt/sdk/CvMediation;->l:Lcom/apprupt/sdk/Q;

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/apprupt/sdk/CvMediation;->m:Landroid/os/Handler;

    .line 34
    new-instance v0, Lcom/apprupt/sdk/MediationConfig;

    invoke-direct {v0}, Lcom/apprupt/sdk/MediationConfig;-><init>()V

    iput-object v0, p0, Lcom/apprupt/sdk/CvMediation;->a:Lcom/apprupt/sdk/MediationConfig;

    .line 35
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/apprupt/sdk/CvMediation;->n:J

    .line 147
    new-instance v0, Lcom/apprupt/sdk/CvMediation$4;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/CvMediation$4;-><init>(Lcom/apprupt/sdk/CvMediation;)V

    iput-object v0, p0, Lcom/apprupt/sdk/CvMediation;->b:Lcom/apprupt/sdk/Q$Task;

    .line 168
    new-instance v0, Lcom/apprupt/sdk/CvMediation$5;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/CvMediation$5;-><init>(Lcom/apprupt/sdk/CvMediation;)V

    iput-object v0, p0, Lcom/apprupt/sdk/CvMediation;->c:Lcom/apprupt/sdk/Q$Task;

    .line 191
    new-instance v0, Lcom/apprupt/sdk/CvMediation$6;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/CvMediation$6;-><init>(Lcom/apprupt/sdk/CvMediation;)V

    iput-object v0, p0, Lcom/apprupt/sdk/CvMediation;->d:Lcom/apprupt/sdk/Q$Task;

    .line 39
    iget-object v0, p0, Lcom/apprupt/sdk/CvMediation;->j:Ljava/util/HashMap;

    const-string v1, "__default__"

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {}, Lcom/apprupt/sdk/mediation/Adapter$Info;->defaultOrder()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/apprupt/sdk/CvMediation;)J
    .locals 2

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/apprupt/sdk/CvMediation;->n:J

    return-wide v0
.end method

.method static synthetic a(Lcom/apprupt/sdk/CvMediation;J)J
    .locals 1

    .prologue
    .line 17
    iput-wide p1, p0, Lcom/apprupt/sdk/CvMediation;->n:J

    return-wide p1
.end method

.method private a(Landroid/content/Context;Lcom/apprupt/sdk/CvContentOptions;Lcom/apprupt/sdk/CvMediator$Completion;Lcom/apprupt/sdk/mediation/AdWrapper$Listener;Z[Ljava/lang/String;)Lcom/apprupt/sdk/CvMediator;
    .locals 6

    .prologue
    .line 287
    iget-object v0, p0, Lcom/apprupt/sdk/CvMediation;->e:Lcom/apprupt/sdk/Logger$log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "loadAd->checkConfig"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 288
    new-instance v0, Lcom/apprupt/sdk/CvMediator;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/apprupt/sdk/CvMediator;-><init>(Landroid/content/Context;Lcom/apprupt/sdk/CvContentOptions;Lcom/apprupt/sdk/CvMediator$Completion;Lcom/apprupt/sdk/mediation/AdWrapper$Listener;Z)V

    .line 289
    new-instance v1, Lcom/apprupt/sdk/CvMediation$9;

    invoke-direct {v1, p0, p2, p6, v0}, Lcom/apprupt/sdk/CvMediation$9;-><init>(Lcom/apprupt/sdk/CvMediation;Lcom/apprupt/sdk/CvContentOptions;[Ljava/lang/String;Lcom/apprupt/sdk/CvMediator;)V

    invoke-virtual {p0, v1}, Lcom/apprupt/sdk/CvMediation;->a(Ljava/lang/Runnable;)V

    .line 313
    return-object v0
.end method

.method static synthetic a()Lcom/apprupt/sdk/Logger$log;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/apprupt/sdk/CvMediation;->f:Lcom/apprupt/sdk/Logger$log;

    return-object v0
.end method

.method static synthetic a(Lcom/apprupt/sdk/CvMediation;Lcom/apprupt/sdk/Q;)Lcom/apprupt/sdk/Q;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/apprupt/sdk/CvMediation;->l:Lcom/apprupt/sdk/Q;

    return-object p1
.end method

.method static synthetic a(Lcom/apprupt/sdk/CvMediation;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/apprupt/sdk/CvMediation;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/apprupt/sdk/mediation/Adapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 207
    if-nez p2, :cond_2

    .line 208
    iget-object v0, p0, Lcom/apprupt/sdk/CvMediation;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apprupt/sdk/CvMediation;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 209
    iget-object v3, p0, Lcom/apprupt/sdk/CvMediation;->i:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 210
    iget-object v3, p0, Lcom/apprupt/sdk/CvMediation;->i:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/apprupt/sdk/CvMediation;->j:Ljava/util/HashMap;

    const-string v2, "__default__"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    .line 214
    :cond_2
    array-length v2, p2

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_4

    aget-object v3, p2, v0

    .line 215
    iget-object v4, p0, Lcom/apprupt/sdk/CvMediation;->i:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 216
    iget-object v4, p0, Lcom/apprupt/sdk/CvMediation;->i:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 220
    :cond_4
    return-object v1
.end method

.method static synthetic a(Lcom/apprupt/sdk/CvMediation;Lcom/apprupt/sdk/SimpleJSON;J)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/apprupt/sdk/CvMediation;->a(Lcom/apprupt/sdk/SimpleJSON;J)V

    return-void
.end method

.method private a(Lcom/apprupt/sdk/SimpleJSON;J)V
    .locals 4

    .prologue
    .line 60
    sget-object v0, Lcom/apprupt/sdk/CvMediation;->f:Lcom/apprupt/sdk/Logger$log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Configure mediation"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/apprupt/sdk/SimpleJSON;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lcom/apprupt/sdk/CvMediation;->m:Landroid/os/Handler;

    new-instance v1, Lcom/apprupt/sdk/CvMediation$2;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/apprupt/sdk/CvMediation$2;-><init>(Lcom/apprupt/sdk/CvMediation;JLcom/apprupt/sdk/SimpleJSON;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 84
    return-void
.end method

.method static synthetic b()Lcom/apprupt/sdk/Logger$log;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/apprupt/sdk/CvMediation;->g:Lcom/apprupt/sdk/Logger$log;

    return-object v0
.end method

.method static synthetic b(Lcom/apprupt/sdk/CvMediation;)Lcom/apprupt/sdk/Q;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/apprupt/sdk/CvMediation;->l:Lcom/apprupt/sdk/Q;

    return-object v0
.end method

.method private b(Landroid/app/Activity;)V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 94
    sget-object v0, Lcom/apprupt/sdk/CvMediation;->f:Lcom/apprupt/sdk/Logger$log;

    new-array v1, v11, [Ljava/lang/Object;

    const-string v3, "Searching for adapters"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->b([Ljava/lang/Object;)V

    .line 95
    invoke-static {}, Lcom/apprupt/sdk/mediation/Adapter$Info;->values()[Lcom/apprupt/sdk/mediation/Adapter$Info;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    .line 96
    invoke-virtual {v5}, Lcom/apprupt/sdk/mediation/Adapter$Info;->toClassName()Ljava/lang/String;

    move-result-object v6

    .line 98
    :try_start_0
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apprupt/sdk/mediation/Adapter;

    .line 100
    invoke-interface {v0, p1}, Lcom/apprupt/sdk/mediation/Adapter;->a(Landroid/app/Activity;)V

    .line 101
    invoke-interface {v0}, Lcom/apprupt/sdk/mediation/Adapter;->b()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 102
    sget-object v7, Lcom/apprupt/sdk/CvMediation;->f:Lcom/apprupt/sdk/Logger$log;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "Found active adapter:"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v6, v8, v9

    invoke-interface {v7, v8}, Lcom/apprupt/sdk/Logger$log;->b([Ljava/lang/Object;)V

    .line 103
    iget-object v7, p0, Lcom/apprupt/sdk/CvMediation;->i:Ljava/util/HashMap;

    invoke-virtual {v5}, Lcom/apprupt/sdk/mediation/Adapter$Info;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 105
    :cond_0
    sget-object v0, Lcom/apprupt/sdk/CvMediation;->f:Lcom/apprupt/sdk/Logger$log;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "Found adapter but it is inactive"

    aput-object v8, v5, v7

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-interface {v0, v5}, Lcom/apprupt/sdk/Logger$log;->b([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 107
    :catch_0
    move-exception v0

    .line 108
    sget-object v0, Lcom/apprupt/sdk/CvMediation;->f:Lcom/apprupt/sdk/Logger$log;

    new-array v5, v12, [Ljava/lang/Object;

    const-string v7, "Adapter not found:"

    aput-object v7, v5, v2

    aput-object v6, v5, v11

    invoke-interface {v0, v5}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    goto :goto_1

    .line 109
    :catch_1
    move-exception v0

    .line 110
    sget-object v5, Lcom/apprupt/sdk/CvMediation;->f:Lcom/apprupt/sdk/Logger$log;

    new-array v6, v2, [Ljava/lang/Object;

    invoke-interface {v5, v0, v6}, Lcom/apprupt/sdk/Logger$log;->c(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    .line 113
    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/apprupt/sdk/CvMediation;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/apprupt/sdk/CvMediation;->m:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/apprupt/sdk/CvMediation;->h:Ljava/util/HashMap;

    return-object v0
.end method

.method private d()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/apprupt/sdk/mediation/Adapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/apprupt/sdk/CvMediation;->i:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method static synthetic d(Lcom/apprupt/sdk/CvMediation;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/apprupt/sdk/CvMediation;->i:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic e(Lcom/apprupt/sdk/CvMediation;)Lcom/apprupt/sdk/Logger$log;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/apprupt/sdk/CvMediation;->e:Lcom/apprupt/sdk/Logger$log;

    return-object v0
.end method

.method static synthetic f(Lcom/apprupt/sdk/CvMediation;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/apprupt/sdk/CvMediation;->j:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic g(Lcom/apprupt/sdk/CvMediation;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/apprupt/sdk/CvMediation;->d()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/apprupt/sdk/CvContentOptions;Lcom/apprupt/sdk/CvContentManager$PreloaderListener;Z)Lcom/apprupt/sdk/CvMediator;
    .locals 6

    .prologue
    .line 243
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/apprupt/sdk/CvMediation;->a(Landroid/content/Context;Lcom/apprupt/sdk/CvContentOptions;Lcom/apprupt/sdk/CvContentManager$PreloaderListener;Z[Ljava/lang/String;)Lcom/apprupt/sdk/CvMediator;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/apprupt/sdk/CvContentOptions;Lcom/apprupt/sdk/CvContentManager$PreloaderListener;Z[Ljava/lang/String;)Lcom/apprupt/sdk/CvMediator;
    .locals 6

    .prologue
    .line 247
    new-instance v0, Lcom/apprupt/sdk/CvMediator;

    new-instance v3, Lcom/apprupt/sdk/CvMediation$7;

    invoke-direct {v3, p0, p3, p2}, Lcom/apprupt/sdk/CvMediation$7;-><init>(Lcom/apprupt/sdk/CvMediation;Lcom/apprupt/sdk/CvContentManager$PreloaderListener;Lcom/apprupt/sdk/CvContentOptions;)V

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/apprupt/sdk/CvMediator;-><init>(Landroid/content/Context;Lcom/apprupt/sdk/CvContentOptions;Lcom/apprupt/sdk/CvMediator$Completion;Lcom/apprupt/sdk/mediation/AdWrapper$Listener;Z)V

    .line 276
    new-instance v1, Lcom/apprupt/sdk/CvMediation$8;

    invoke-direct {v1, p0, v0, p5}, Lcom/apprupt/sdk/CvMediation$8;-><init>(Lcom/apprupt/sdk/CvMediation;Lcom/apprupt/sdk/CvMediator;[Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/apprupt/sdk/CvMediation;->a(Ljava/lang/Runnable;)V

    .line 283
    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/apprupt/sdk/CvContentOptions;Lcom/apprupt/sdk/CvMediator$Completion;)Lcom/apprupt/sdk/CvMediator;
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/apprupt/sdk/CvMediation;->a(Landroid/content/Context;Lcom/apprupt/sdk/CvContentOptions;Lcom/apprupt/sdk/CvMediator$Completion;[Ljava/lang/String;)Lcom/apprupt/sdk/CvMediator;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/apprupt/sdk/CvContentOptions;Lcom/apprupt/sdk/CvMediator$Completion;Lcom/apprupt/sdk/mediation/InlineAdWrapper$Listener;)Lcom/apprupt/sdk/CvMediator;
    .locals 6

    .prologue
    .line 224
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/apprupt/sdk/CvMediation;->a(Landroid/content/Context;Lcom/apprupt/sdk/CvContentOptions;Lcom/apprupt/sdk/CvMediator$Completion;Lcom/apprupt/sdk/mediation/InlineAdWrapper$Listener;[Ljava/lang/String;)Lcom/apprupt/sdk/CvMediator;

    move-result-object v0

    return-object v0
.end method

.method a(Landroid/content/Context;Lcom/apprupt/sdk/CvContentOptions;Lcom/apprupt/sdk/CvMediator$Completion;Lcom/apprupt/sdk/mediation/InlineAdWrapper$Listener;[Ljava/lang/String;)Lcom/apprupt/sdk/CvMediator;
    .locals 7

    .prologue
    .line 228
    iget-boolean v0, p2, Lcom/apprupt/sdk/CvContentOptions;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "Invalid arguments set (interstitial + inline listener"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/apprupt/sdk/CvMediation;->a(Landroid/content/Context;Lcom/apprupt/sdk/CvContentOptions;Lcom/apprupt/sdk/CvMediator$Completion;Lcom/apprupt/sdk/mediation/AdWrapper$Listener;Z[Ljava/lang/String;)Lcom/apprupt/sdk/CvMediator;

    move-result-object v0

    return-object v0
.end method

.method a(Landroid/content/Context;Lcom/apprupt/sdk/CvContentOptions;Lcom/apprupt/sdk/CvMediator$Completion;[Ljava/lang/String;)Lcom/apprupt/sdk/CvMediator;
    .locals 7

    .prologue
    .line 238
    iget-boolean v0, p2, Lcom/apprupt/sdk/CvContentOptions;->d:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "Invalid arguments set (inline + interstitial listener"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/apprupt/sdk/CvMediation;->a(Landroid/content/Context;Lcom/apprupt/sdk/CvContentOptions;Lcom/apprupt/sdk/CvMediator$Completion;Lcom/apprupt/sdk/mediation/AdWrapper$Listener;Z[Ljava/lang/String;)Lcom/apprupt/sdk/CvMediator;

    move-result-object v0

    return-object v0
.end method

.method a(Landroid/app/Activity;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 44
    iget-boolean v0, p0, Lcom/apprupt/sdk/CvMediation;->k:Z

    if-eqz v0, :cond_0

    .line 45
    sget-object v0, Lcom/apprupt/sdk/CvMediation;->f:Lcom/apprupt/sdk/Logger$log;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "Mediation already initialized, skipping"

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 51
    :goto_0
    sget-object v0, Lcom/apprupt/sdk/CvSDK;->b:Lcom/apprupt/sdk/CvConfig;

    new-instance v1, Lcom/apprupt/sdk/CvMediation$1;

    invoke-direct {v1, p0}, Lcom/apprupt/sdk/CvMediation$1;-><init>(Lcom/apprupt/sdk/CvMediation;)V

    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/CvConfig;->a(Lcom/apprupt/sdk/CvConfig$Listener;)V

    .line 57
    return-void

    .line 47
    :cond_0
    sget-object v0, Lcom/apprupt/sdk/CvMediation;->f:Lcom/apprupt/sdk/Logger$log;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "Initializing mediation module"

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->b([Ljava/lang/Object;)V

    .line 48
    invoke-direct {p0, p1}, Lcom/apprupt/sdk/CvMediation;->b(Landroid/app/Activity;)V

    .line 49
    iput-boolean v3, p0, Lcom/apprupt/sdk/CvMediation;->k:Z

    goto :goto_0
.end method

.method a(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/apprupt/sdk/CvMediation;->k:Z

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "CvSDK has not been initialized yet! Run CvSDK.initialize(Activity mainActivity) first."

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    sget-object v0, Lcom/apprupt/sdk/CvSDK;->b:Lcom/apprupt/sdk/CvConfig;

    new-instance v1, Lcom/apprupt/sdk/CvMediation$3;

    invoke-direct {v1, p0, p1}, Lcom/apprupt/sdk/CvMediation$3;-><init>(Lcom/apprupt/sdk/CvMediation;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/CvConfig;->a(Ljava/lang/Runnable;)V

    .line 139
    return-void
.end method
