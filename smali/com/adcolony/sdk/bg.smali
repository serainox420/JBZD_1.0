.class abstract Lcom/adcolony/sdk/bg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adcolony/sdk/bg$a;
    }
.end annotation


# static fields
.field private static final ap:Ljava/lang/String; = "sentTokenToServer"

.field private static final aq:Ljava/lang/String; = "push_device_token"

.field private static final ar:Ljava/lang/String; = "registered_push_app_version"


# instance fields
.field A:Z

.field B:Z

.field C:Z

.field D:Z

.field E:Z

.field F:I

.field G:I

.field H:I

.field I:I

.field J:I

.field K:I

.field L:I

.field M:J

.field N:Ljava/lang/String;

.field O:Ljava/lang/String;

.field P:Ljava/lang/String;

.field Q:Ljava/lang/String;

.field R:Ljava/lang/String;

.field S:Ljava/lang/String;

.field final T:Ljava/lang/String;

.field U:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field V:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field W:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field X:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field Y:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field Z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field a:Lcom/adcolony/sdk/by;

.field aa:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field ab:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field ac:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field ad:Landroid/app/Activity;

.field ae:Landroid/content/Context;

.field af:Landroid/content/SharedPreferences;

.field ag:Landroid/content/SharedPreferences$Editor;

.field ah:Lcom/adcolony/sdk/bo;

.field ai:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

.field aj:Lcom/adcolony/sdk/AdColonyPubServicesVIPInformation;

.field ak:Lcom/adcolony/sdk/AdColonyPubServicesConReceiver;

.field al:Lcom/adcolony/sdk/bd;

.field am:Ljava/lang/Thread$UncaughtExceptionHandler;

.field an:Landroid/os/Handler;

.field ao:Landroid/os/HandlerThread;

.field private as:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private at:Lcom/adcolony/sdk/bu;

.field b:Lcom/adcolony/sdk/by;

.field c:Lcom/adcolony/sdk/by;

.field d:Lcom/adcolony/sdk/by;

.field e:Lcom/adcolony/sdk/by;

.field f:Landroid/os/HandlerThread;

.field g:Landroid/os/HandlerThread;

.field h:Landroid/os/HandlerThread;

.field i:Landroid/os/HandlerThread;

.field j:Lcom/adcolony/sdk/cd;

.field k:Lcom/adcolony/sdk/ch;

.field l:Lcom/adcolony/sdk/be;

.field m:Lcom/adcolony/sdk/bm;

.field n:Lcom/adcolony/sdk/ck;

.field o:Lcom/adcolony/sdk/cf;

.field p:Lcom/adcolony/sdk/ci;

.field q:Lcom/adcolony/sdk/cn;

.field r:Lcom/adcolony/sdk/br;

.field s:Lcom/adcolony/sdk/cj;

.field t:Lcom/adcolony/sdk/bl;

.field u:Lcom/adcolony/sdk/bq;

.field v:Lcom/adcolony/sdk/YvolverDeepLinkManager;

.field w:Z

.field x:Z

.field y:Z

.field z:Z


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/adcolony/sdk/cd;

    invoke-direct {v0}, Lcom/adcolony/sdk/cd;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/bg;->j:Lcom/adcolony/sdk/cd;

    .line 75
    new-instance v0, Lcom/adcolony/sdk/bq;

    iget-object v1, p0, Lcom/adcolony/sdk/bg;->j:Lcom/adcolony/sdk/cd;

    invoke-direct {v0, v1}, Lcom/adcolony/sdk/bq;-><init>(Lcom/adcolony/sdk/cd;)V

    iput-object v0, p0, Lcom/adcolony/sdk/bg;->u:Lcom/adcolony/sdk/bq;

    .line 81
    iput-boolean v2, p0, Lcom/adcolony/sdk/bg;->y:Z

    .line 82
    iput-boolean v2, p0, Lcom/adcolony/sdk/bg;->z:Z

    .line 83
    iput-boolean v2, p0, Lcom/adcolony/sdk/bg;->A:Z

    .line 84
    iput-boolean v2, p0, Lcom/adcolony/sdk/bg;->B:Z

    .line 85
    iput-boolean v2, p0, Lcom/adcolony/sdk/bg;->C:Z

    .line 86
    iput-boolean v2, p0, Lcom/adcolony/sdk/bg;->D:Z

    .line 87
    iput-boolean v2, p0, Lcom/adcolony/sdk/bg;->E:Z

    .line 88
    iput v4, p0, Lcom/adcolony/sdk/bg;->F:I

    .line 89
    iput v2, p0, Lcom/adcolony/sdk/bg;->G:I

    .line 90
    iput v2, p0, Lcom/adcolony/sdk/bg;->H:I

    .line 91
    iput v4, p0, Lcom/adcolony/sdk/bg;->I:I

    .line 92
    const/4 v0, 0x2

    iput v0, p0, Lcom/adcolony/sdk/bg;->J:I

    .line 93
    const/4 v0, 0x3

    iput v0, p0, Lcom/adcolony/sdk/bg;->K:I

    .line 94
    const/4 v0, 0x4

    iput v0, p0, Lcom/adcolony/sdk/bg;->L:I

    .line 95
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adcolony/sdk/bg;->M:J

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lcom/adcolony/sdk/bg;->O:Ljava/lang/String;

    .line 101
    sget-object v0, Lcom/adcolony/sdk/bn;->aB:Ljava/lang/String;

    iput-object v0, p0, Lcom/adcolony/sdk/bg;->S:Ljava/lang/String;

    .line 102
    const-string v0, "miscPrefs"

    iput-object v0, p0, Lcom/adcolony/sdk/bg;->T:Ljava/lang/String;

    .line 110
    iput-object v3, p0, Lcom/adcolony/sdk/bg;->aa:Ljava/util/Map;

    .line 111
    iput-object v3, p0, Lcom/adcolony/sdk/bg;->ab:Ljava/util/Map;

    .line 114
    iput-object v3, p0, Lcom/adcolony/sdk/bg;->ad:Landroid/app/Activity;

    .line 115
    iput-object v3, p0, Lcom/adcolony/sdk/bg;->ae:Landroid/content/Context;

    .line 119
    iput-object v3, p0, Lcom/adcolony/sdk/bg;->ah:Lcom/adcolony/sdk/bo;

    .line 123
    iput-object v3, p0, Lcom/adcolony/sdk/bg;->al:Lcom/adcolony/sdk/bd;

    .line 129
    new-instance v0, Lcom/adcolony/sdk/bg$a;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/bg$a;-><init>(Lcom/adcolony/sdk/bg;)V

    iput-object v0, p0, Lcom/adcolony/sdk/bg;->as:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 130
    new-instance v0, Lcom/adcolony/sdk/bu;

    invoke-direct {v0}, Lcom/adcolony/sdk/bu;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/bg;->at:Lcom/adcolony/sdk/bu;

    return-void
.end method

.method static a(Landroid/content/Context;)I
    .locals 4

    .prologue
    .line 2065
    .line 2066
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 2067
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2068
    :catch_0
    move-exception v0

    .line 2069
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get package name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic a(Lcom/adcolony/sdk/bg;Lcom/adcolony/sdk/bp;Ljava/util/Map;)Lcom/adcolony/sdk/bp;
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/adcolony/sdk/bg;->a(Lcom/adcolony/sdk/bp;Ljava/util/Map;)Lcom/adcolony/sdk/bp;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/adcolony/sdk/bg;Lcom/adcolony/sdk/bp;Ljava/util/Map;Ljava/lang/String;)Lcom/adcolony/sdk/bp;
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/adcolony/sdk/bg;->a(Lcom/adcolony/sdk/bp;Ljava/util/Map;Ljava/lang/String;)Lcom/adcolony/sdk/bp;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/adcolony/sdk/bp;Ljava/util/Map;)Lcom/adcolony/sdk/bp;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adcolony/sdk/bp;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/adcolony/sdk/bp;"
        }
    .end annotation

    .prologue
    .line 422
    .line 423
    invoke-virtual {p0, p2}, Lcom/adcolony/sdk/bg;->e(Ljava/util/Map;)I

    move-result v0

    .line 425
    invoke-virtual {p0, p2}, Lcom/adcolony/sdk/bg;->d(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 426
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lcom/adcolony/sdk/bg;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 428
    new-instance v2, Lcom/adcolony/sdk/bg$23;

    iget-object v3, p0, Lcom/adcolony/sdk/bg;->u:Lcom/adcolony/sdk/bq;

    invoke-direct {v2, p0, v3, v1, v0}, Lcom/adcolony/sdk/bg$23;-><init>(Lcom/adcolony/sdk/bg;Lcom/adcolony/sdk/bq;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private a(Lcom/adcolony/sdk/bp;Ljava/util/Map;Ljava/lang/String;)Lcom/adcolony/sdk/bp;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adcolony/sdk/bp;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/adcolony/sdk/bp;"
        }
    .end annotation

    .prologue
    .line 454
    new-instance v0, Lcom/adcolony/sdk/bg$29;

    iget-object v2, p0, Lcom/adcolony/sdk/bg;->u:Lcom/adcolony/sdk/bq;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/adcolony/sdk/bg$29;-><init>(Lcom/adcolony/sdk/bg;Lcom/adcolony/sdk/bq;Lcom/adcolony/sdk/bp;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method static synthetic a(Lcom/adcolony/sdk/bg;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/bg;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/adcolony/sdk/bg;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/adcolony/sdk/bg;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/adcolony/sdk/bg;Z)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/bg;->f(Z)V

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 806
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->at:Lcom/adcolony/sdk/bu;

    new-instance v1, Lcom/adcolony/sdk/bg$8;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/adcolony/sdk/bg$8;-><init>(Lcom/adcolony/sdk/bg;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bu;->a(Lcom/adcolony/sdk/bv;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 860
    monitor-exit p0

    return-void

    .line 806
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private aK()Ljava/lang/String;
    .locals 3

    .prologue
    .line 406
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->S:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bg;->S:Ljava/lang/String;

    sget-object v1, Lcom/adcolony/sdk/bn;->aB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/adcolony/sdk/bg;->S:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/api/public/app/config"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/bg;->S:Ljava/lang/String;

    .line 409
    :cond_0
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "devUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adcolony/sdk/bg;->S:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 410
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->S:Ljava/lang/String;

    return-object v0
.end method

.method private b(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 330
    sget-object v0, Lcom/adcolony/sdk/bn;->ax:Ljava/lang/String;

    .line 332
    iget v1, p0, Lcom/adcolony/sdk/bg;->H:I

    if-ne p1, v1, :cond_1

    .line 333
    sget-object v0, Lcom/adcolony/sdk/bn;->ax:Ljava/lang/String;

    .line 343
    :cond_0
    :goto_0
    return-object v0

    .line 334
    :cond_1
    iget v1, p0, Lcom/adcolony/sdk/bg;->I:I

    if-ne p1, v1, :cond_2

    .line 335
    sget-object v0, Lcom/adcolony/sdk/bn;->ay:Ljava/lang/String;

    goto :goto_0

    .line 336
    :cond_2
    iget v1, p0, Lcom/adcolony/sdk/bg;->J:I

    if-ne p1, v1, :cond_3

    .line 337
    sget-object v0, Lcom/adcolony/sdk/bn;->az:Ljava/lang/String;

    goto :goto_0

    .line 338
    :cond_3
    iget v1, p0, Lcom/adcolony/sdk/bg;->K:I

    if-ne p1, v1, :cond_4

    .line 339
    sget-object v0, Lcom/adcolony/sdk/bn;->aA:Ljava/lang/String;

    goto :goto_0

    .line 340
    :cond_4
    iget v1, p0, Lcom/adcolony/sdk/bg;->L:I

    if-ne p1, v1, :cond_0

    .line 341
    sget-object v0, Lcom/adcolony/sdk/bn;->aB:Ljava/lang/String;

    goto :goto_0
.end method

.method private b(Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;)V
    .locals 1

    .prologue
    .line 2179
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/bz;->a(Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;)V

    .line 2180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adcolony/sdk/bg;->A:Z

    .line 2181
    return-void
.end method

.method static synthetic b(Lcom/adcolony/sdk/bg;Lcom/adcolony/sdk/bp;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/adcolony/sdk/bg;->b(Lcom/adcolony/sdk/bp;Ljava/util/Map;)V

    return-void
.end method

.method private b(Lcom/adcolony/sdk/bp;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adcolony/sdk/bp;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 863
    invoke-virtual {p1}, Lcom/adcolony/sdk/bp;->j()Lcom/adcolony/sdk/bp;

    move-result-object v0

    .line 864
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "startYvolverCleanup was called"

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 867
    invoke-virtual {p0, p2}, Lcom/adcolony/sdk/bg;->d(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adcolony/sdk/bg;->N:Ljava/lang/String;

    .line 869
    invoke-virtual {p0, p2}, Lcom/adcolony/sdk/bg;->e(Ljava/util/Map;)I

    move-result v1

    iput v1, p0, Lcom/adcolony/sdk/bg;->G:I

    .line 871
    invoke-virtual {v0}, Lcom/adcolony/sdk/bp;->g()Z

    move-result v1

    if-nez v1, :cond_3

    .line 872
    invoke-direct {p0, v4}, Lcom/adcolony/sdk/bg;->f(Z)V

    .line 874
    invoke-virtual {v0}, Lcom/adcolony/sdk/bp;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 875
    invoke-virtual {v0}, Lcom/adcolony/sdk/bp;->c()Lcom/adcolony/sdk/bs;

    move-result-object v0

    .line 876
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initialization failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->s:Lcom/adcolony/sdk/cj;

    invoke-virtual {v0}, Lcom/adcolony/sdk/cj;->f()V

    .line 885
    :cond_0
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->t()Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    move-result-object v0

    sget-object v1, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;->SERVICE_CONNECTING:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    if-ne v0, v1, :cond_1

    .line 886
    sget-object v0, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;->SERVICE_UNAVAILABLE:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/bg;->a(Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;)V

    .line 889
    :cond_1
    invoke-virtual {p1}, Lcom/adcolony/sdk/bp;->d()V

    .line 899
    :goto_1
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->r:Lcom/adcolony/sdk/br;

    invoke-virtual {v0, v4}, Lcom/adcolony/sdk/br;->b(Z)V

    .line 900
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->p:Lcom/adcolony/sdk/ci;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ci;->c()V

    .line 901
    return-void

    .line 876
    :cond_2
    invoke-virtual {v0}, Lcom/adcolony/sdk/bs;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 891
    :cond_3
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Initialization succeeded"

    invoke-static {v0, v1, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 892
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->t()Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    move-result-object v0

    sget-object v1, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;->SERVICE_CONNECTING:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    if-ne v0, v1, :cond_4

    .line 893
    sget-object v0, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;->SERVICE_AVAILABLE:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/bg;->a(Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;)V

    .line 896
    :cond_4
    invoke-virtual {p1}, Lcom/adcolony/sdk/bp;->b()V

    goto :goto_1
.end method

.method private c(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 414
    iget v0, p0, Lcom/adcolony/sdk/bg;->L:I

    if-ne p1, v0, :cond_0

    .line 415
    invoke-direct {p0}, Lcom/adcolony/sdk/bg;->aK()Ljava/lang/String;

    move-result-object v0

    .line 417
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/bg;->b(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private f(Z)V
    .locals 1

    .prologue
    .line 256
    if-eqz p1, :cond_0

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adcolony/sdk/bg;->Q:Ljava/lang/String;

    .line 259
    :cond_0
    return-void
.end method

.method private u(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 226
    if-nez p1, :cond_0

    move-object v0, v1

    .line 252
    :goto_0
    return-object v0

    .line 228
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    const-string v0, ""

    goto :goto_0

    .line 232
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 233
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 234
    shr-int/lit8 v0, v3, 0x1

    aget-char v4, v2, v0

    .line 235
    shr-int/lit8 v0, v3, 0x1

    :goto_1
    add-int/lit8 v5, v3, -0x1

    if-ge v0, v5, :cond_2

    .line 236
    add-int/lit8 v5, v0, 0x1

    aget-char v5, v2, v5

    aput-char v5, v2, v0

    .line 235
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 239
    :cond_2
    new-instance v0, Ljava/lang/String;

    const/4 v5, 0x0

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v5, v3}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    .line 242
    invoke-static {v4}, Lcom/adcolony/sdk/co;->a(C)I

    move-result v2

    .line 244
    invoke-static {v0}, Lcom/adcolony/sdk/cl;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 245
    if-ltz v2, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 246
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/adcolony/sdk/co;->e(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/adcolony/sdk/cb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_3
    move-object v0, v1

    .line 252
    goto :goto_0
.end method


# virtual methods
.method A()Ljava/lang/String;
    .locals 1

    .prologue
    .line 947
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method B()I
    .locals 1

    .prologue
    .line 956
    iget v0, p0, Lcom/adcolony/sdk/bg;->G:I

    return v0
.end method

.method C()V
    .locals 4

    .prologue
    .line 1009
    invoke-static {}, Lcom/adcolony/sdk/co;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->am()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1011
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->n:Lcom/adcolony/sdk/ck;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/adcolony/sdk/ck;->a(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1016
    :cond_0
    :goto_0
    return-void

    .line 1012
    :catch_0
    move-exception v0

    .line 1013
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    const-string v2, "YvolverBaseImpl.refreshStats"

    invoke-virtual {v1, v0, v2}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method D()Z
    .locals 1

    .prologue
    .line 1127
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->w()Z

    move-result v0

    return v0
.end method

.method E()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1142
    invoke-static {}, Lcom/adcolony/sdk/co;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->am()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1143
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->V:Ljava/util/ArrayList;

    .line 1145
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method F()V
    .locals 1

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->ah:Lcom/adcolony/sdk/bo;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bo;->r()V

    .line 1154
    const-string v0, "ResetDeviceId"

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/bg;->f(Ljava/lang/String;)V

    .line 1155
    return-void
.end method

.method G()V
    .locals 1

    .prologue
    .line 1158
    invoke-static {}, Lcom/adcolony/sdk/cp;->b()Lcom/adcolony/sdk/cp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/cp;->d()V

    .line 1159
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->ah:Lcom/adcolony/sdk/bo;

    if-eqz v0, :cond_0

    .line 1160
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->ah:Lcom/adcolony/sdk/bo;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bo;->q()V

    .line 1162
    :cond_0
    const-string v0, "ResetDeviceId"

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/bg;->f(Ljava/lang/String;)V

    .line 1163
    return-void
.end method

.method H()V
    .locals 2

    .prologue
    .line 1178
    invoke-static {}, Lcom/adcolony/sdk/co;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->am()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1179
    new-instance v0, Lcom/adcolony/sdk/bg$10;

    iget-object v1, p0, Lcom/adcolony/sdk/bg;->u:Lcom/adcolony/sdk/bq;

    invoke-direct {v0, p0, v1}, Lcom/adcolony/sdk/bg$10;-><init>(Lcom/adcolony/sdk/bg;Lcom/adcolony/sdk/bq;)V

    .line 1191
    :cond_0
    return-void
.end method

.method I()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1215
    .line 1216
    :try_start_0
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1217
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1218
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1221
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 1218
    goto :goto_0

    .line 1220
    :catch_0
    move-exception v0

    move v0, v1

    .line 1221
    goto :goto_0
.end method

.method J()V
    .locals 2

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->at:Lcom/adcolony/sdk/bu;

    new-instance v1, Lcom/adcolony/sdk/bg$13;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/bg$13;-><init>(Lcom/adcolony/sdk/bg;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bu;->a(Lcom/adcolony/sdk/bv;)V

    .line 1260
    return-void
.end method

.method K()V
    .locals 1

    .prologue
    .line 1336
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->n:Lcom/adcolony/sdk/ck;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ck;->d()V

    .line 1337
    return-void
.end method

.method L()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1362
    invoke-static {}, Lcom/adcolony/sdk/co;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->am()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1364
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->n:Lcom/adcolony/sdk/ck;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ck;->b()Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1369
    :goto_0
    return-object v0

    .line 1365
    :catch_0
    move-exception v0

    .line 1366
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    const-string v2, "YvolverBaseImpl.getStats"

    invoke-virtual {v1, v0, v2}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1369
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method M()V
    .locals 3

    .prologue
    .line 1410
    invoke-static {}, Lcom/adcolony/sdk/co;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->am()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1412
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->n:Lcom/adcolony/sdk/ck;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ck;->g()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1417
    :cond_0
    :goto_0
    return-void

    .line 1413
    :catch_0
    move-exception v0

    .line 1414
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    const-string v2, "YvolverBaseImpl.markStartRound"

    invoke-virtual {v1, v0, v2}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method N()V
    .locals 3

    .prologue
    .line 1420
    invoke-static {}, Lcom/adcolony/sdk/co;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->am()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1422
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->n:Lcom/adcolony/sdk/ck;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ck;->h()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1427
    :cond_0
    :goto_0
    return-void

    .line 1423
    :catch_0
    move-exception v0

    .line 1424
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    const-string v2, "YvolverBaseImpl.markEndRound"

    invoke-virtual {v1, v0, v2}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method O()V
    .locals 2

    .prologue
    .line 1430
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->at:Lcom/adcolony/sdk/bu;

    new-instance v1, Lcom/adcolony/sdk/bg$14;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/bg$14;-><init>(Lcom/adcolony/sdk/bg;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bu;->a(Lcom/adcolony/sdk/bv;)V

    .line 1443
    return-void
.end method

.method P()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1446
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->l()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1447
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->l()Landroid/content/Context;

    move-result-object v1

    const-string v2, "miscPrefs"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/bg;->af:Landroid/content/SharedPreferences;

    .line 1448
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->af:Landroid/content/SharedPreferences;

    const-string v1, "enabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1451
    :cond_0
    return v0
.end method

.method Q()I
    .locals 4

    .prologue
    const/16 v0, 0xf

    .line 1456
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->l()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1457
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->l()Landroid/content/Context;

    move-result-object v1

    const-string v2, "miscPrefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/adcolony/sdk/bg;->af:Landroid/content/SharedPreferences;

    .line 1458
    iget-object v1, p0, Lcom/adcolony/sdk/bg;->af:Landroid/content/SharedPreferences;

    const-string v2, "xPos"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1461
    :cond_0
    return v0
.end method

.method R()I
    .locals 4

    .prologue
    const/16 v0, 0xf

    .line 1466
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->l()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1467
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->l()Landroid/content/Context;

    move-result-object v1

    const-string v2, "miscPrefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/adcolony/sdk/bg;->af:Landroid/content/SharedPreferences;

    .line 1468
    iget-object v1, p0, Lcom/adcolony/sdk/bg;->af:Landroid/content/SharedPreferences;

    const-string v2, "yPos"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1471
    :cond_0
    return v0
.end method

.method S()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1487
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->l()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1488
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->l()Landroid/content/Context;

    move-result-object v1

    const-string v2, "miscPrefs"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/adcolony/sdk/bg;->af:Landroid/content/SharedPreferences;

    .line 1489
    iget-object v1, p0, Lcom/adcolony/sdk/bg;->af:Landroid/content/SharedPreferences;

    const-string v2, "lastMessageId"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1492
    :cond_0
    return v0
.end method

.method T()V
    .locals 2

    .prologue
    .line 1498
    new-instance v0, Lcom/adcolony/sdk/bg$15;

    iget-object v1, p0, Lcom/adcolony/sdk/bg;->u:Lcom/adcolony/sdk/bq;

    invoke-direct {v0, p0, v1}, Lcom/adcolony/sdk/bg$15;-><init>(Lcom/adcolony/sdk/bg;Lcom/adcolony/sdk/bq;)V

    .line 1510
    return-void
.end method

.method U()V
    .locals 1

    .prologue
    .line 1542
    const-string v0, ".facebook.com"

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/bg;->q(Ljava/lang/String;)V

    .line 1543
    const-string v0, "https://.facebook.com"

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/bg;->q(Ljava/lang/String;)V

    .line 1544
    return-void
.end method

.method V()V
    .locals 2

    .prologue
    .line 1554
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->at:Lcom/adcolony/sdk/bu;

    new-instance v1, Lcom/adcolony/sdk/bg$17;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/bg$17;-><init>(Lcom/adcolony/sdk/bg;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bu;->a(Lcom/adcolony/sdk/bv;)V

    .line 1565
    return-void
.end method

.method W()V
    .locals 2

    .prologue
    .line 1568
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->at:Lcom/adcolony/sdk/bu;

    new-instance v1, Lcom/adcolony/sdk/bg$18;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/bg$18;-><init>(Lcom/adcolony/sdk/bg;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bu;->a(Lcom/adcolony/sdk/bv;)V

    .line 1578
    return-void
.end method

.method X()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1581
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->Z:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1582
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/bg;->Z:Ljava/util/Map;

    .line 1584
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->ab:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 1585
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/bg;->ab:Ljava/util/Map;

    .line 1586
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->ab:Ljava/util/Map;

    const-string v1, "can_show_in_app_purchase_page"

    .line 1587
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->e()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1586
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1589
    :cond_1
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->Z:Ljava/util/Map;

    iget-object v1, p0, Lcom/adcolony/sdk/bg;->ab:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1590
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->W:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adcolony/sdk/bg;->W:Ljava/util/ArrayList;

    .line 1591
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1592
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->Z:Ljava/util/Map;

    const-string v1, "unsupported_digital_item_product_ids"

    iget-object v2, p0, Lcom/adcolony/sdk/bg;->W:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1596
    :cond_2
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->Z:Ljava/util/Map;

    const-string v1, "contentScale"

    invoke-static {}, Lcom/adcolony/sdk/co;->a()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1597
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->Z:Ljava/util/Map;

    const-string v1, "densityDPI"

    invoke-static {}, Lcom/adcolony/sdk/co;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1598
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->Z:Ljava/util/Map;

    const-string v1, "screenHeight"

    invoke-static {}, Lcom/adcolony/sdk/co;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1599
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->Z:Ljava/util/Map;

    const-string v1, "screenWidth"

    invoke-static {}, Lcom/adcolony/sdk/co;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1601
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->Z:Ljava/util/Map;

    return-object v0
.end method

.method Y()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1605
    invoke-static {}, Lcom/adcolony/sdk/co;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->am()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1607
    :try_start_0
    iget-object v1, p0, Lcom/adcolony/sdk/bg;->X:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/bg;->X:Ljava/util/ArrayList;

    .line 1608
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1609
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->X:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1617
    :cond_0
    :goto_0
    return-object v0

    .line 1612
    :catch_0
    move-exception v1

    .line 1613
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v2

    const-string v3, "YvolverBaseImpl.getSupportedDigitalItemProductIds"

    .line 1614
    invoke-virtual {v2, v1, v3}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method declared-synchronized Z()Lcom/adcolony/sdk/AdColonyPubServicesVIPInformation;
    .locals 3

    .prologue
    .line 1621
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/adcolony/sdk/co;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->am()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1623
    :try_start_1
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->aj:Lcom/adcolony/sdk/AdColonyPubServicesVIPInformation;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1628
    :goto_0
    monitor-exit p0

    return-object v0

    .line 1624
    :catch_0
    move-exception v0

    .line 1625
    :try_start_2
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    const-string v2, "YvolverBaseImpl.getUserVipStatus"

    invoke-virtual {v1, v0, v2}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1628
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1621
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method abstract a()Ljava/lang/String;
.end method

.method a(I)V
    .locals 3

    .prologue
    .line 1476
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->l()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1477
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->l()Landroid/content/Context;

    move-result-object v0

    const-string v1, "miscPrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/bg;->af:Landroid/content/SharedPreferences;

    .line 1478
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->af:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/bg;->ag:Landroid/content/SharedPreferences$Editor;

    .line 1480
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->ag:Landroid/content/SharedPreferences$Editor;

    const-string v1, "lastMessageId"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1482
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->ag:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1484
    :cond_0
    return-void
.end method

.method a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    .prologue
    .line 698
    iget-object v7, p0, Lcom/adcolony/sdk/bg;->at:Lcom/adcolony/sdk/bu;

    new-instance v0, Lcom/adcolony/sdk/bg$5;

    move-object v1, p0

    move v2, p1

    move-object v3, p3

    move-object v4, p2

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/adcolony/sdk/bg$5;-><init>(Lcom/adcolony/sdk/bg;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/adcolony/sdk/bu;->a(Lcom/adcolony/sdk/bv;)V

    .line 712
    return-void
.end method

.method a(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .prologue
    .line 680
    iget-object v6, p0, Lcom/adcolony/sdk/bg;->at:Lcom/adcolony/sdk/bu;

    new-instance v0, Lcom/adcolony/sdk/bg$4;

    move-object v1, p0

    move v2, p1

    move-object v3, p3

    move-object v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/adcolony/sdk/bg$4;-><init>(Lcom/adcolony/sdk/bg;ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Lcom/adcolony/sdk/bu;->a(Lcom/adcolony/sdk/bv;)V

    .line 693
    return-void
.end method

.method a(J)V
    .locals 1

    .prologue
    .line 2342
    iput-wide p1, p0, Lcom/adcolony/sdk/bg;->M:J

    .line 2343
    return-void
.end method

.method a(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/adcolony/sdk/bg;->ad:Landroid/app/Activity;

    .line 271
    return-void
.end method

.method a(Landroid/app/Activity;Z)V
    .locals 2

    .prologue
    .line 1763
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->d:Lcom/adcolony/sdk/by;

    new-instance v1, Lcom/adcolony/sdk/bg$21;

    invoke-direct {v1, p0, p1, p2}, Lcom/adcolony/sdk/bg$21;-><init>(Lcom/adcolony/sdk/bg;Landroid/app/Activity;Z)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/by;->a(Lcom/adcolony/sdk/bv;)V

    .line 1793
    return-void
.end method

.method declared-synchronized a(Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;)V
    .locals 2

    .prologue
    .line 722
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->at:Lcom/adcolony/sdk/bu;

    new-instance v1, Lcom/adcolony/sdk/bg$6;

    invoke-direct {v1, p0, p1}, Lcom/adcolony/sdk/bg$6;-><init>(Lcom/adcolony/sdk/bg;Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bu;->a(Lcom/adcolony/sdk/bv;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 752
    monitor-exit p0

    return-void

    .line 722
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Lcom/adcolony/sdk/AdColonyPubServicesCallbacks;)V
    .locals 3

    .prologue
    .line 596
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/adcolony/sdk/co;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->am()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 598
    :try_start_1
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->t:Lcom/adcolony/sdk/bl;

    iget-object v0, v0, Lcom/adcolony/sdk/bl;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 607
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 601
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->t:Lcom/adcolony/sdk/bl;

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/bl;->a(Lcom/adcolony/sdk/AdColonyPubServicesCallbacks;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 602
    :catch_0
    move-exception v0

    .line 603
    :try_start_3
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    const-string v2, "YvolverBaseImpl.addYvolverListener"

    .line 604
    invoke-virtual {v1, v0, v2}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 596
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Lcom/adcolony/sdk/bn$a;Ljava/lang/String;ZLcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;)V
    .locals 4

    .prologue
    .line 2141
    if-nez p2, :cond_0

    .line 2142
    const-string p2, ""

    .line 2144
    :cond_0
    new-instance v0, Lcom/adcolony/sdk/bs;

    invoke-direct {v0, p1, p2}, Lcom/adcolony/sdk/bs;-><init>(Lcom/adcolony/sdk/bn$a;Ljava/lang/String;)V

    .line 2146
    const-string v1, "Disabling AdColonyPubServices due to error or exception: "

    .line 2147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SDK error; code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adcolony/sdk/bn$a;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2149
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v1, v0, p3, v3}, Lcom/adcolony/sdk/cb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;ZZ)V

    .line 2151
    invoke-direct {p0, p4}, Lcom/adcolony/sdk/bg;->b(Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;)V

    .line 2152
    return-void
.end method

.method a(Lcom/adcolony/sdk/bs;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 2171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SDK exception; message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adcolony/sdk/bs;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2173
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, p1, p3, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;ZZ)V

    .line 2175
    sget-object v0, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;->SERVICE_UNAVAILABLE:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    invoke-direct {p0, v0}, Lcom/adcolony/sdk/bg;->b(Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;)V

    .line 2176
    return-void
.end method

.method declared-synchronized a(Lcom/adcolony/sdk/bw;)V
    .locals 4

    .prologue
    .line 580
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->m:Lcom/adcolony/sdk/j;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->m:Lcom/adcolony/sdk/j;

    iget-boolean v0, v0, Lcom/adcolony/sdk/j;->b:Z

    if-nez v0, :cond_0

    .line 582
    new-instance v0, Lcom/adcolony/sdk/bg$33;

    invoke-direct {v0, p0, p1}, Lcom/adcolony/sdk/bg$33;-><init>(Lcom/adcolony/sdk/bg;Lcom/adcolony/sdk/bw;)V

    .line 591
    iget-object v1, p0, Lcom/adcolony/sdk/bg;->d:Lcom/adcolony/sdk/by;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lcom/adcolony/sdk/by;->a(Lcom/adcolony/sdk/bv;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 593
    :cond_0
    monitor-exit p0

    return-void

    .line 580
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Ljava/lang/Exception;Lcom/adcolony/sdk/bn$a;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 2164
    new-instance v0, Lcom/adcolony/sdk/bs;

    invoke-direct {v0, p1, p2, p3}, Lcom/adcolony/sdk/bs;-><init>(Ljava/lang/Exception;Lcom/adcolony/sdk/bn$a;Ljava/lang/String;)V

    .line 2166
    invoke-virtual {p0, v0, p3, p4}, Lcom/adcolony/sdk/bg;->a(Lcom/adcolony/sdk/bs;Ljava/lang/String;Z)V

    .line 2167
    return-void
.end method

.method a(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 2188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "An error occurred in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2189
    new-instance v1, Lcom/adcolony/sdk/bs;

    invoke-direct {v1, p1, v0}, Lcom/adcolony/sdk/bs;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 2191
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v0, v1, v3}, Lcom/adcolony/sdk/cb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Z)V

    .line 2192
    return-void
.end method

.method a(Ljava/lang/Exception;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 2156
    new-instance v0, Lcom/adcolony/sdk/bs;

    invoke-direct {v0, p1, p2}, Lcom/adcolony/sdk/bs;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 2158
    invoke-virtual {p0, v0, p2, p3}, Lcom/adcolony/sdk/bg;->a(Lcom/adcolony/sdk/bs;Ljava/lang/String;Z)V

    .line 2159
    return-void
.end method

.method a(Ljava/lang/Exception;Z)V
    .locals 2

    .prologue
    .line 2201
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->at:Lcom/adcolony/sdk/bu;

    new-instance v1, Lcom/adcolony/sdk/bg$28;

    invoke-direct {v1, p0, p1, p2}, Lcom/adcolony/sdk/bg$28;-><init>(Lcom/adcolony/sdk/bg;Ljava/lang/Exception;Z)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bu;->a(Lcom/adcolony/sdk/bv;)V

    .line 2260
    return-void
.end method

.method abstract a(Ljava/lang/String;)V
.end method

.method a(Ljava/lang/String;Lcom/adcolony/sdk/bn$b;ZLjava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/adcolony/sdk/bn$b;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 670
    new-instance v0, Lcom/adcolony/sdk/bg$3;

    iget-object v2, p0, Lcom/adcolony/sdk/bg;->u:Lcom/adcolony/sdk/bq;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/adcolony/sdk/bg$3;-><init>(Lcom/adcolony/sdk/bg;Lcom/adcolony/sdk/bq;Ljava/lang/String;Lcom/adcolony/sdk/bn$b;ZLjava/util/Map;)V

    .line 676
    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 8

    .prologue
    .line 1265
    invoke-static {}, Lcom/adcolony/sdk/co;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->am()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1267
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->p:Lcom/adcolony/sdk/ci;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/adcolony/sdk/ci;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1277
    :goto_0
    return-void

    .line 1270
    :catch_0
    move-exception v0

    .line 1271
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    const-string v2, "YvolverBaseImpl.grantRewardFromInAppPurchaseGoogle"

    .line 1272
    invoke-virtual {v1, v0, v2}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    .line 1275
    :cond_0
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unable to grant reward from IAP due to uninitialization or previous error"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 1281
    invoke-static {}, Lcom/adcolony/sdk/co;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->am()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1283
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->p:Lcom/adcolony/sdk/ci;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/adcolony/sdk/ci;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1290
    :cond_0
    :goto_0
    return-void

    .line 1285
    :catch_0
    move-exception v0

    .line 1286
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    const-string v2, "YvolverBaseImpl.grantRewardFromInAppPurchaseAmazon"

    .line 1287
    invoke-virtual {v1, v0, v2}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 644
    new-instance v0, Lcom/adcolony/sdk/bg$34;

    iget-object v1, p0, Lcom/adcolony/sdk/bg;->u:Lcom/adcolony/sdk/bq;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/adcolony/sdk/bg$34;-><init>(Lcom/adcolony/sdk/bg;Lcom/adcolony/sdk/bq;Ljava/lang/String;Ljava/util/Map;)V

    .line 650
    return-void
.end method

.method a(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 366
    if-nez p1, :cond_1

    .line 367
    const-string v0, "IN-APP-MSG-QUEUE"

    const-string v1, "handleNotifications params==null"

    invoke-static {v0, v1, v4}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 377
    :cond_0
    return-void

    .line 369
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 370
    const-string v1, "IN-APP-MSG-QUEUE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleNotifications: notifications.size()=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 371
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 372
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 373
    check-cast v0, Ljava/util/Map;

    .line 374
    iget-object v2, p0, Lcom/adcolony/sdk/bg;->q:Lcom/adcolony/sdk/cn;

    invoke-virtual {v2, v0}, Lcom/adcolony/sdk/cn;->a(Ljava/util/Map;)V

    .line 371
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method a(Ljava/util/EnumSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adcolony/sdk/AdColonyPubServices$NotificationType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1301
    sget-object v0, Lcom/adcolony/sdk/AdColonyPubServices$NotificationType;->TOAST:Lcom/adcolony/sdk/AdColonyPubServices$NotificationType;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/bg;->b(Z)V

    .line 1302
    sget-object v0, Lcom/adcolony/sdk/AdColonyPubServices$NotificationType;->MODAL:Lcom/adcolony/sdk/AdColonyPubServices$NotificationType;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/bg;->c(Z)V

    .line 1303
    return-void
.end method

.method abstract a(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method a(Z)V
    .locals 1

    .prologue
    .line 960
    invoke-static {}, Lcom/adcolony/sdk/co;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->am()Z

    move-result v0

    if-nez v0, :cond_0

    .line 961
    iput-boolean p1, p0, Lcom/adcolony/sdk/bg;->y:Z

    .line 963
    :cond_0
    return-void
.end method

.method a(Landroid/content/Intent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1985
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/bg;->b(Landroid/content/Intent;)Z

    move-result v1

    .line 1986
    if-nez v1, :cond_0

    .line 1987
    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/bg;->c(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1993
    :cond_0
    :goto_0
    return v0

    .line 1991
    :catch_0
    move-exception v1

    .line 1992
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v2

    const-string v3, "YvolverBaseImpl.handleRemoteIntent"

    invoke-virtual {v2, v1, v3}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1294
    .line 1295
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->p:Lcom/adcolony/sdk/ci;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/adcolony/sdk/ci;->a(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)Z

    move-result v0

    .line 1297
    return v0
.end method

.method a(Ljava/lang/String;J)Z
    .locals 4

    .prologue
    .line 1373
    invoke-static {}, Lcom/adcolony/sdk/co;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->am()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1375
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->n:Lcom/adcolony/sdk/ck;

    invoke-virtual {v0, p1, p2, p3}, Lcom/adcolony/sdk/ck;->c(Ljava/lang/String;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1380
    :goto_0
    return v0

    .line 1376
    :catch_0
    move-exception v0

    .line 1377
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    const-string v2, "YvolverBaseImpl.setStat"

    invoke-virtual {v1, v0, v2}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1380
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized a(Ljava/util/Map;Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1664
    monitor-enter p0

    .line 1666
    if-nez p1, :cond_0

    .line 1695
    :goto_0
    monitor-exit p0

    return v2

    .line 1670
    :cond_0
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1671
    invoke-interface {v3, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1673
    const-string v0, "signature"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1674
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "signature"

    aput-object v6, v4, v5

    .line 1676
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->g()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3, v4}, Lcom/adcolony/sdk/co;->a(Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1679
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1680
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1681
    new-instance v0, Lcom/adcolony/sdk/AdColonyPubServicesVIPInformation;

    invoke-direct {v0, v3}, Lcom/adcolony/sdk/AdColonyPubServicesVIPInformation;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/adcolony/sdk/bg;->aj:Lcom/adcolony/sdk/AdColonyPubServicesVIPInformation;

    .line 1682
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    .line 1683
    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->aB()Lcom/adcolony/sdk/bl;

    move-result-object v0

    .line 1684
    invoke-virtual {v0}, Lcom/adcolony/sdk/bl;->d()V

    move v0, v1

    :goto_1
    move v2, v0

    .line 1692
    goto :goto_0

    .line 1687
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid signature for VIP user info, got: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", expected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1689
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v1, v0, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1690
    sget-object v1, Lcom/adcolony/sdk/bn$b;->b:Lcom/adcolony/sdk/bn$b;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/adcolony/sdk/bg;->a(Ljava/lang/String;Lcom/adcolony/sdk/bn$b;ZLjava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    goto :goto_1

    .line 1693
    :catch_0
    move-exception v0

    .line 1694
    :try_start_1
    const-string v1, "Caught exception when handling VIP"

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v3}, Lcom/adcolony/sdk/bg;->a(Ljava/lang/Exception;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1664
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 1020
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    move v0, v2

    .line 1042
    :goto_0
    return v0

    .line 1025
    :cond_1
    const-string v0, "payload_signature"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "payload_signature"

    .line 1026
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1027
    const-string v0, "payload_signature"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1028
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1029
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "payload_signature"

    aput-object v4, v3, v2

    .line 1031
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->g()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1, v3}, Lcom/adcolony/sdk/co;->a(Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1034
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1035
    if-nez v1, :cond_2

    .line 1036
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", Invalid signature for payload "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", got: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", expected:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1037
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InvalidPayloadSignature->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", got: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", expected: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/adcolony/sdk/bn$b;->b:Lcom/adcolony/sdk/bn$b;

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v3, v2, v4}, Lcom/adcolony/sdk/bg;->a(Ljava/lang/String;Lcom/adcolony/sdk/bn$b;ZLjava/util/Map;)V

    :cond_2
    move v0, v1

    goto/16 :goto_0

    :cond_3
    move v0, v2

    goto/16 :goto_0
.end method

.method aA()Lcom/adcolony/sdk/cj;
    .locals 1

    .prologue
    .line 2315
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->s:Lcom/adcolony/sdk/cj;

    return-object v0
.end method

.method aB()Lcom/adcolony/sdk/bl;
    .locals 1

    .prologue
    .line 2319
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->t:Lcom/adcolony/sdk/bl;

    if-nez v0, :cond_0

    .line 2320
    new-instance v0, Lcom/adcolony/sdk/bl;

    invoke-direct {v0}, Lcom/adcolony/sdk/bl;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/bg;->t:Lcom/adcolony/sdk/bl;

    .line 2322
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->t:Lcom/adcolony/sdk/bl;

    return-object v0
.end method

.method aC()Lcom/adcolony/sdk/cf;
    .locals 1

    .prologue
    .line 2326
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->o:Lcom/adcolony/sdk/cf;

    return-object v0
.end method

.method aD()Lcom/adcolony/sdk/YvolverDeepLinkManager;
    .locals 1

    .prologue
    .line 2330
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->v:Lcom/adcolony/sdk/YvolverDeepLinkManager;

    return-object v0
.end method

.method aE()J
    .locals 2

    .prologue
    .line 2338
    iget-wide v0, p0, Lcom/adcolony/sdk/bg;->M:J

    return-wide v0
.end method

.method aF()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2346
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->aa:Ljava/util/Map;

    return-object v0
.end method

.method aG()I
    .locals 1

    .prologue
    .line 2350
    iget v0, p0, Lcom/adcolony/sdk/bg;->F:I

    return v0
.end method

.method aH()V
    .locals 1

    .prologue
    .line 2353
    iget v0, p0, Lcom/adcolony/sdk/bg;->F:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adcolony/sdk/bg;->F:I

    .line 2354
    return-void
.end method

.method aI()Lcom/adcolony/sdk/ch;
    .locals 1

    .prologue
    .line 2357
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->k:Lcom/adcolony/sdk/ch;

    return-object v0
.end method

.method aJ()I
    .locals 1

    .prologue
    .line 2361
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->al:Lcom/adcolony/sdk/bd;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bd;->a()I

    move-result v0

    return v0
.end method

.method declared-synchronized aa()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1632
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/adcolony/sdk/co;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->am()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1634
    :try_start_1
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->ac:Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1639
    :goto_0
    monitor-exit p0

    return-object v0

    .line 1635
    :catch_0
    move-exception v0

    .line 1636
    :try_start_2
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    const-string v2, "YvolverBaseImpl.getExperiments"

    invoke-virtual {v1, v0, v2}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1639
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1632
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method ab()V
    .locals 2

    .prologue
    .line 1819
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->at:Lcom/adcolony/sdk/bu;

    new-instance v1, Lcom/adcolony/sdk/bg$24;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/bg$24;-><init>(Lcom/adcolony/sdk/bg;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bu;->a(Lcom/adcolony/sdk/bv;)V

    .line 1830
    return-void
.end method

.method ac()Z
    .locals 3

    .prologue
    .line 1833
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->ad()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bg;->q:Lcom/adcolony/sdk/cn;

    invoke-virtual {v0}, Lcom/adcolony/sdk/cn;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1834
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleOnBackPressed was called"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1835
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->q:Lcom/adcolony/sdk/cn;

    sget-object v1, Lcom/adcolony/sdk/cm$a;->j:Lcom/adcolony/sdk/cm$a;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/cn;->a(Lcom/adcolony/sdk/cm$a;)V

    .line 1837
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method ad()Z
    .locals 1

    .prologue
    .line 1841
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->q:Lcom/adcolony/sdk/cn;

    invoke-virtual {v0}, Lcom/adcolony/sdk/cn;->j()Z

    move-result v0

    return v0
.end method

.method ae()V
    .locals 1

    .prologue
    .line 1857
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->af()V

    .line 1858
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->k:Lcom/adcolony/sdk/ch;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ch;->a()V

    .line 1859
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->ah:Lcom/adcolony/sdk/bo;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bo;->p()V

    .line 1860
    const-string v0, "NewPushToken"

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/bg;->f(Ljava/lang/String;)V

    .line 1861
    return-void
.end method

.method af()V
    .locals 3

    .prologue
    .line 1906
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->af:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 1907
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unregistering push-token"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1908
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->af:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/bg;->ag:Landroid/content/SharedPreferences$Editor;

    .line 1909
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->ag:Landroid/content/SharedPreferences$Editor;

    const-string v1, "push_device_token"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1910
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->ag:Landroid/content/SharedPreferences$Editor;

    const-string v1, "sentTokenToServer"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1911
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->ag:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1913
    :cond_0
    return-void
.end method

.method ag()V
    .locals 1

    .prologue
    .line 1919
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->k:Lcom/adcolony/sdk/ch;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ch;->g()V

    .line 1920
    return-void
.end method

.method ah()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1928
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->k:Lcom/adcolony/sdk/ch;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ch;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method ai()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1933
    :try_start_0
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "miscPrefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/adcolony/sdk/bg;->af:Landroid/content/SharedPreferences;

    .line 1934
    iget-object v1, p0, Lcom/adcolony/sdk/bg;->af:Landroid/content/SharedPreferences;

    const-string v2, "push_device_token"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1937
    :goto_0
    return-object v0

    .line 1936
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method aj()I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 1943
    :try_start_0
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "miscPrefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/adcolony/sdk/bg;->af:Landroid/content/SharedPreferences;

    .line 1944
    iget-object v1, p0, Lcom/adcolony/sdk/bg;->af:Landroid/content/SharedPreferences;

    const-string v2, "registered_push_app_version"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1946
    :goto_0
    return v0

    .line 1945
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method ak()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1955
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->k:Lcom/adcolony/sdk/ch;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ch;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method al()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 1963
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->k:Lcom/adcolony/sdk/ch;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ch;->e()I

    move-result v0

    .line 1964
    if-ne v0, v3, :cond_0

    .line 1965
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1966
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->l()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1967
    const/16 v2, 0x80

    .line 1968
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1969
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 1970
    if-ne v0, v3, :cond_0

    .line 1971
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "AdColony could not retrieve default notification icon."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1974
    :cond_0
    return v0
.end method

.method am()Z
    .locals 2

    .prologue
    .line 2131
    iget-boolean v0, p0, Lcom/adcolony/sdk/bg;->A:Z

    if-eqz v0, :cond_0

    .line 2132
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdColonyPubServices previously encountered an exception. Ignoring AdColonyPubServices API calls"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2134
    :cond_0
    iget-boolean v0, p0, Lcom/adcolony/sdk/bg;->A:Z

    return v0
.end method

.method an()V
    .locals 1

    .prologue
    .line 2184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adcolony/sdk/bg;->A:Z

    .line 2185
    return-void
.end method

.method ao()Lcom/adcolony/sdk/by;
    .locals 1

    .prologue
    .line 2264
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->b:Lcom/adcolony/sdk/by;

    return-object v0
.end method

.method ap()Lcom/adcolony/sdk/by;
    .locals 1

    .prologue
    .line 2268
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->d:Lcom/adcolony/sdk/by;

    return-object v0
.end method

.method aq()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2272
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->Y:Ljava/util/Map;

    return-object v0
.end method

.method ar()Lcom/adcolony/sdk/bo;
    .locals 1

    .prologue
    .line 2276
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->ah:Lcom/adcolony/sdk/bo;

    return-object v0
.end method

.method as()Lcom/adcolony/sdk/be;
    .locals 1

    .prologue
    .line 2280
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->l:Lcom/adcolony/sdk/be;

    return-object v0
.end method

.method at()Lcom/adcolony/sdk/bm;
    .locals 1

    .prologue
    .line 2284
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->m:Lcom/adcolony/sdk/bm;

    if-nez v0, :cond_0

    .line 2285
    new-instance v0, Lcom/adcolony/sdk/bm;

    invoke-direct {v0}, Lcom/adcolony/sdk/bm;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/bg;->m:Lcom/adcolony/sdk/bm;

    .line 2287
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->m:Lcom/adcolony/sdk/bm;

    return-object v0
.end method

.method au()Z
    .locals 1

    .prologue
    .line 2291
    iget-boolean v0, p0, Lcom/adcolony/sdk/bg;->w:Z

    return v0
.end method

.method av()Lcom/adcolony/sdk/ck;
    .locals 1

    .prologue
    .line 2295
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->n:Lcom/adcolony/sdk/ck;

    return-object v0
.end method

.method aw()Lcom/adcolony/sdk/by;
    .locals 1

    .prologue
    .line 2299
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->c:Lcom/adcolony/sdk/by;

    return-object v0
.end method

.method ax()Lcom/adcolony/sdk/br;
    .locals 1

    .prologue
    .line 2303
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->r:Lcom/adcolony/sdk/br;

    return-object v0
.end method

.method ay()Lcom/adcolony/sdk/ci;
    .locals 1

    .prologue
    .line 2307
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->p:Lcom/adcolony/sdk/ci;

    return-object v0
.end method

.method az()Lcom/adcolony/sdk/cn;
    .locals 1

    .prologue
    .line 2311
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->q:Lcom/adcolony/sdk/cn;

    return-object v0
.end method

.method abstract b()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method declared-synchronized b(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 283
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->at:Lcom/adcolony/sdk/bu;

    new-instance v1, Lcom/adcolony/sdk/bg$1;

    invoke-direct {v1, p0, p1}, Lcom/adcolony/sdk/bg$1;-><init>(Lcom/adcolony/sdk/bg;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bu;->a(Lcom/adcolony/sdk/bv;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    monitor-exit p0

    return-void

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(Lcom/adcolony/sdk/AdColonyPubServicesCallbacks;)V
    .locals 1

    .prologue
    .line 610
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->t:Lcom/adcolony/sdk/bl;

    iget-object v0, v0, Lcom/adcolony/sdk/bl;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 611
    monitor-exit p0

    return-void

    .line 610
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2195
    new-instance v0, Lcom/adcolony/sdk/bs;

    invoke-direct {v0, p1, p2}, Lcom/adcolony/sdk/bs;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 2196
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, p2, v0, v2}, Lcom/adcolony/sdk/cb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Z)V

    .line 2197
    return-void
.end method

.method abstract b(Ljava/lang/String;)V
.end method

.method b(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 653
    new-instance v0, Lcom/adcolony/sdk/bg$2;

    iget-object v1, p0, Lcom/adcolony/sdk/bg;->u:Lcom/adcolony/sdk/bq;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/adcolony/sdk/bg$2;-><init>(Lcom/adcolony/sdk/bg;Lcom/adcolony/sdk/bq;Ljava/lang/String;Ljava/util/Map;)V

    .line 665
    return-void
.end method

.method declared-synchronized b(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 516
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Yvolver configure called."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 517
    new-instance v0, Lcom/adcolony/sdk/bg$30;

    iget-object v1, p0, Lcom/adcolony/sdk/bg;->u:Lcom/adcolony/sdk/bq;

    invoke-direct {v0, p0, v1, p1}, Lcom/adcolony/sdk/bg$30;-><init>(Lcom/adcolony/sdk/bg;Lcom/adcolony/sdk/bq;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    monitor-exit p0

    return-void

    .line 516
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->at:Lcom/adcolony/sdk/bu;

    new-instance v1, Lcom/adcolony/sdk/bg$9;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/adcolony/sdk/bg$9;-><init>(Lcom/adcolony/sdk/bg;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bu;->a(Lcom/adcolony/sdk/bv;)V

    .line 1124
    return-void
.end method

.method b(Z)V
    .locals 3

    .prologue
    .line 1306
    invoke-static {}, Lcom/adcolony/sdk/co;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->am()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1308
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->q:Lcom/adcolony/sdk/cn;

    iget-object v0, v0, Lcom/adcolony/sdk/cn;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    .line 1309
    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    .line 1310
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->q:Lcom/adcolony/sdk/cn;

    invoke-virtual {v0}, Lcom/adcolony/sdk/cn;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1316
    :cond_0
    :goto_0
    return-void

    .line 1312
    :catch_0
    move-exception v0

    .line 1313
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    const-string v2, "YvolverBaseImpl.allowToasts"

    invoke-virtual {v1, v0, v2}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method b(Landroid/content/Intent;)Z
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2005
    .line 2006
    :try_start_0
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->a()Ljava/lang/String;

    move-result-object v0

    const-string v3, "handleDeepLink()"

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2007
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2009
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->a()Ljava/lang/String;

    move-result-object v0

    const-string v3, "handleDeepLink() isDeepLink"

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2010
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 2011
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v3, "adc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2013
    invoke-virtual {v5}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    move-object v4, v0

    .line 2014
    :goto_0
    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    move-object v3, v0

    .line 2015
    :goto_1
    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, ""

    .line 2016
    :goto_2
    const-string v6, ""

    .line 2017
    const/4 v7, 0x0

    .line 2018
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 2019
    const-string v9, "url"

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2020
    const-string v9, "decoded_parms"

    invoke-interface {v8, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2021
    const-string v4, "host"

    invoke-interface {v8, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2022
    const-string v3, "path"

    invoke-interface {v8, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2023
    const-string v0, "source_application"

    invoke-interface {v8, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2024
    const-string v0, "callback"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v8, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2025
    const-string v0, "application_open_url"

    invoke-virtual {p0, v0, v8}, Lcom/adcolony/sdk/bg;->a(Ljava/lang/String;Ljava/util/Map;)V

    move v3, v1

    .line 2028
    :goto_3
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2029
    invoke-virtual {v5}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v0

    .line 2030
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2031
    invoke-virtual {v5, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2032
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 2033
    invoke-interface {v4, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 2043
    :catch_0
    move-exception v0

    move v0, v2

    .line 2044
    :goto_5
    return v0

    .line 2013
    :cond_1
    invoke-virtual {v5}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    .line 2014
    :cond_2
    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_1

    .line 2015
    :cond_3
    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 2036
    :cond_4
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->a()Ljava/lang/String;

    move-result-object v0

    const-string v6, "handleDeepLink() callingOnReceiveDeepLink"

    const/4 v7, 0x1

    invoke-static {v0, v6, v7}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2037
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->v:Lcom/adcolony/sdk/YvolverDeepLinkManager;

    invoke-virtual {v0, v5, v4, v3}, Lcom/adcolony/sdk/YvolverDeepLinkManager;->a(Landroid/net/Uri;Ljava/util/Map;Z)V

    move v0, v1

    .line 2038
    goto :goto_5

    .line 2040
    :cond_5
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleDeepLink !deeplink"

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 2041
    goto :goto_5

    :cond_6
    move v3, v2

    goto :goto_3
.end method

.method b(Ljava/lang/String;J)Z
    .locals 4

    .prologue
    .line 1384
    invoke-static {}, Lcom/adcolony/sdk/co;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->am()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1386
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->n:Lcom/adcolony/sdk/ck;

    invoke-virtual {v0, p1, p2, p3}, Lcom/adcolony/sdk/ck;->b(Ljava/lang/String;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1391
    :goto_0
    return v0

    .line 1387
    :catch_0
    move-exception v0

    .line 1388
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    const-string v2, "YvolverBaseImpl.incrementStat"

    invoke-virtual {v1, v0, v2}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1391
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 380
    if-nez p1, :cond_1

    .line 402
    :cond_0
    :goto_0
    return v2

    .line 384
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 385
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 386
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 387
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 389
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    new-instance v0, Lcom/adcolony/sdk/bg$12;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/bg$12;-><init>(Lcom/adcolony/sdk/bg;)V

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 396
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->V:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adcolony/sdk/bg;->V:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 397
    :cond_3
    iput-object v4, p0, Lcom/adcolony/sdk/bg;->V:Ljava/util/ArrayList;

    .line 398
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " nonConsumables="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adcolony/sdk/bg;->V:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_4
    move v2, v3

    .line 400
    goto :goto_0
.end method

.method c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/bg;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method abstract c()V
.end method

.method c(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 1742
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->d:Lcom/adcolony/sdk/by;

    new-instance v1, Lcom/adcolony/sdk/bg$20;

    invoke-direct {v1, p0, p1}, Lcom/adcolony/sdk/bg$20;-><init>(Lcom/adcolony/sdk/bg;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/by;->a(Lcom/adcolony/sdk/bv;)V

    .line 1760
    return-void
.end method

.method c(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1149
    iput-object p1, p0, Lcom/adcolony/sdk/bg;->V:Ljava/util/ArrayList;

    .line 1150
    return-void
.end method

.method declared-synchronized c(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 532
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Yvolver setInitParams called"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 533
    new-instance v0, Lcom/adcolony/sdk/bg$31;

    iget-object v1, p0, Lcom/adcolony/sdk/bg;->u:Lcom/adcolony/sdk/bq;

    invoke-direct {v0, p0, v1, p1}, Lcom/adcolony/sdk/bg$31;-><init>(Lcom/adcolony/sdk/bg;Lcom/adcolony/sdk/bq;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    monitor-exit p0

    return-void

    .line 532
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method c(Z)V
    .locals 3

    .prologue
    .line 1319
    invoke-static {}, Lcom/adcolony/sdk/co;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->am()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1321
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->q:Lcom/adcolony/sdk/cn;

    iget-object v0, v0, Lcom/adcolony/sdk/cn;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    .line 1322
    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    .line 1323
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->q:Lcom/adcolony/sdk/cn;

    invoke-virtual {v0}, Lcom/adcolony/sdk/cn;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1329
    :cond_0
    :goto_0
    return-void

    .line 1325
    :catch_0
    move-exception v0

    .line 1326
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    const-string v2, "YvolverBaseImpl.allowModals"

    invoke-virtual {v1, v0, v2}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method c(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 2054
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->k:Lcom/adcolony/sdk/ch;

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/ch;->a(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method c(Ljava/lang/String;J)Z
    .locals 4

    .prologue
    .line 1395
    invoke-static {}, Lcom/adcolony/sdk/co;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->am()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1397
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->n:Lcom/adcolony/sdk/ck;

    invoke-virtual {v0, p1, p2, p3}, Lcom/adcolony/sdk/ck;->a(Ljava/lang/String;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1402
    :goto_0
    return v0

    .line 1398
    :catch_0
    move-exception v0

    .line 1399
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    const-string v2, "YvolverBaseImpl.decrementStat"

    invoke-virtual {v1, v0, v2}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1402
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract d()I
.end method

.method d(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 771
    const-string v0, "apiKey"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method d(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1816
    return-void
.end method

.method d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 568
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    new-instance v0, Lcom/adcolony/sdk/bg$32;

    iget-object v1, p0, Lcom/adcolony/sdk/bg;->u:Lcom/adcolony/sdk/bq;

    invoke-direct {v0, p0, v1, p1}, Lcom/adcolony/sdk/bg$32;-><init>(Lcom/adcolony/sdk/bg;Lcom/adcolony/sdk/bq;Ljava/lang/String;)V

    .line 577
    :cond_0
    return-void
.end method

.method d(Z)V
    .locals 2

    .prologue
    .line 1716
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->d:Lcom/adcolony/sdk/by;

    new-instance v1, Lcom/adcolony/sdk/bg$19;

    invoke-direct {v1, p0, p1}, Lcom/adcolony/sdk/bg$19;-><init>(Lcom/adcolony/sdk/bg;Z)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/by;->a(Lcom/adcolony/sdk/bv;)V

    .line 1739
    return-void
.end method

.method d(Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1700
    const/4 v1, 0x1

    .line 1702
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1703
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1704
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1705
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1706
    iput-object v2, p0, Lcom/adcolony/sdk/bg;->X:Ljava/util/ArrayList;

    goto :goto_0

    .line 1709
    :cond_0
    return v1
.end method

.method e(Ljava/util/Map;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 775
    const-string v0, "productionMode"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method e(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 622
    if-eqz p1, :cond_1

    .line 623
    const-string v1, "3.0.7"

    .line 624
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Android"

    aput-object v3, v2, v0

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Model/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/adcolony/sdk/bg;->ah:Lcom/adcolony/sdk/bo;

    invoke-virtual {v5}, Lcom/adcolony/sdk/bo;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OS/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/adcolony/sdk/bg;->ah:Lcom/adcolony/sdk/bo;

    .line 625
    invoke-virtual {v5}, Lcom/adcolony/sdk/bo;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "App/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/adcolony/sdk/bg;->ah:Lcom/adcolony/sdk/bo;

    invoke-virtual {v5}, Lcom/adcolony/sdk/bo;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 626
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 627
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 628
    array-length v5, v2

    :goto_0
    if-ge v0, v5, :cond_0

    aget-object v6, v2, v0

    .line 629
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    const-string v6, "; "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 633
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/adcolony/sdk/bg;->ah:Lcom/adcolony/sdk/bo;

    invoke-virtual {v2}, Lcom/adcolony/sdk/bo;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 634
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/bg;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 636
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Yvolver/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 639
    :goto_1
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method e(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2334
    iput-object p1, p0, Lcom/adcolony/sdk/bg;->U:Ljava/util/ArrayList;

    .line 2335
    return-void
.end method

.method e(Z)V
    .locals 2

    .prologue
    .line 1796
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->d:Lcom/adcolony/sdk/by;

    new-instance v1, Lcom/adcolony/sdk/bg$22;

    invoke-direct {v1, p0, p1}, Lcom/adcolony/sdk/bg$22;-><init>(Lcom/adcolony/sdk/bg;Z)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/by;->a(Lcom/adcolony/sdk/bv;)V

    .line 1812
    return-void
.end method

.method abstract e()Z
.end method

.method f(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 779
    const-string v0, "configEndpoint"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method f()V
    .locals 3

    .prologue
    .line 145
    const/4 v0, 0x0

    const-string v1, "Using v3.0.7"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/bg;->Y:Ljava/util/Map;

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/bg;->Z:Ljava/util/Map;

    .line 149
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->b()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/bg;->U:Ljava/util/ArrayList;

    .line 151
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->j:Lcom/adcolony/sdk/cd;

    iget-object v1, p0, Lcom/adcolony/sdk/bg;->u:Lcom/adcolony/sdk/bq;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/cd;->a(Lcom/adcolony/sdk/cc;)V

    .line 153
    new-instance v0, Lcom/adcolony/sdk/be;

    invoke-direct {v0}, Lcom/adcolony/sdk/be;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/bg;->l:Lcom/adcolony/sdk/be;

    .line 154
    new-instance v0, Lcom/adcolony/sdk/by;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adcolony/sdk/by;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/adcolony/sdk/bg;->d:Lcom/adcolony/sdk/by;

    .line 156
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/bg;->am:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 157
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->as:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 159
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "_dbThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adcolony/sdk/bg;->f:Landroid/os/HandlerThread;

    .line 160
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 161
    new-instance v0, Lcom/adcolony/sdk/by;

    iget-object v1, p0, Lcom/adcolony/sdk/bg;->f:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adcolony/sdk/by;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/adcolony/sdk/bg;->a:Lcom/adcolony/sdk/by;

    .line 163
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "_netThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adcolony/sdk/bg;->g:Landroid/os/HandlerThread;

    .line 164
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 165
    new-instance v0, Lcom/adcolony/sdk/by;

    iget-object v1, p0, Lcom/adcolony/sdk/bg;->g:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adcolony/sdk/by;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/adcolony/sdk/bg;->b:Lcom/adcolony/sdk/by;

    .line 167
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "_statsThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adcolony/sdk/bg;->h:Landroid/os/HandlerThread;

    .line 168
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->h:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 169
    new-instance v0, Lcom/adcolony/sdk/by;

    iget-object v1, p0, Lcom/adcolony/sdk/bg;->h:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adcolony/sdk/by;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/adcolony/sdk/bg;->c:Lcom/adcolony/sdk/by;

    .line 171
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "_deviceHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adcolony/sdk/bg;->i:Landroid/os/HandlerThread;

    .line 172
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 173
    new-instance v0, Lcom/adcolony/sdk/by;

    iget-object v1, p0, Lcom/adcolony/sdk/bg;->i:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adcolony/sdk/by;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/adcolony/sdk/bg;->e:Lcom/adcolony/sdk/by;

    .line 175
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "adIdThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adcolony/sdk/bg;->ao:Landroid/os/HandlerThread;

    .line 176
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->ao:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 177
    new-instance v0, Lcom/adcolony/sdk/by;

    iget-object v1, p0, Lcom/adcolony/sdk/bg;->ao:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adcolony/sdk/by;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/adcolony/sdk/bg;->an:Landroid/os/Handler;

    .line 179
    new-instance v0, Lcom/adcolony/sdk/bm;

    invoke-direct {v0}, Lcom/adcolony/sdk/bm;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/bg;->m:Lcom/adcolony/sdk/bm;

    .line 180
    new-instance v0, Lcom/adcolony/sdk/ck;

    invoke-direct {v0}, Lcom/adcolony/sdk/ck;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/bg;->n:Lcom/adcolony/sdk/ck;

    .line 181
    new-instance v0, Lcom/adcolony/sdk/cf;

    invoke-direct {v0}, Lcom/adcolony/sdk/cf;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/bg;->o:Lcom/adcolony/sdk/cf;

    .line 182
    new-instance v0, Lcom/adcolony/sdk/ci;

    invoke-direct {v0}, Lcom/adcolony/sdk/ci;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/bg;->p:Lcom/adcolony/sdk/ci;

    .line 183
    new-instance v0, Lcom/adcolony/sdk/cn;

    invoke-direct {v0}, Lcom/adcolony/sdk/cn;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/bg;->q:Lcom/adcolony/sdk/cn;

    .line 184
    new-instance v0, Lcom/adcolony/sdk/br;

    invoke-direct {v0}, Lcom/adcolony/sdk/br;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/bg;->r:Lcom/adcolony/sdk/br;

    .line 185
    new-instance v0, Lcom/adcolony/sdk/cj;

    invoke-direct {v0}, Lcom/adcolony/sdk/cj;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/bg;->s:Lcom/adcolony/sdk/cj;

    .line 186
    new-instance v0, Lcom/adcolony/sdk/bl;

    invoke-direct {v0}, Lcom/adcolony/sdk/bl;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/bg;->t:Lcom/adcolony/sdk/bl;

    .line 187
    new-instance v0, Lcom/adcolony/sdk/ch;

    invoke-direct {v0}, Lcom/adcolony/sdk/ch;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/bg;->k:Lcom/adcolony/sdk/ch;

    .line 188
    new-instance v0, Lcom/adcolony/sdk/YvolverDeepLinkManager;

    invoke-direct {v0}, Lcom/adcolony/sdk/YvolverDeepLinkManager;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/bg;->v:Lcom/adcolony/sdk/YvolverDeepLinkManager;

    .line 189
    new-instance v0, Lcom/adcolony/sdk/bd;

    invoke-direct {v0}, Lcom/adcolony/sdk/bd;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/bg;->al:Lcom/adcolony/sdk/bd;

    .line 191
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->s:Lcom/adcolony/sdk/cj;

    invoke-virtual {v0}, Lcom/adcolony/sdk/cj;->b()V

    .line 192
    return-void
.end method

.method declared-synchronized f(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 786
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "startYvolver called"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 787
    new-instance v0, Lcom/adcolony/sdk/bg$7;

    iget-object v1, p0, Lcom/adcolony/sdk/bg;->u:Lcom/adcolony/sdk/bq;

    invoke-direct {v0, p0, v1, p1}, Lcom/adcolony/sdk/bg$7;-><init>(Lcom/adcolony/sdk/bg;Lcom/adcolony/sdk/bq;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 802
    monitor-exit p0

    return-void

    .line 786
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->Q:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->Q:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/bg;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 951
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->A()Ljava/lang/String;

    move-result-object v0

    .line 952
    invoke-static {p1, v0}, Lcom/adcolony/sdk/co;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method g(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 1131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1133
    if-eqz p1, :cond_0

    .line 1134
    const-string v1, "source_id"

    const-string v2, "sourceId"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1137
    :cond_0
    const-string v1, "show_dev_iap"

    invoke-virtual {p0, v1, v0}, Lcom/adcolony/sdk/bg;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1138
    invoke-static {}, Lcom/adcolony/sdk/cp;->b()Lcom/adcolony/sdk/cp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/cp;->d()V

    .line 1139
    return-void
.end method

.method h()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->U:Ljava/util/ArrayList;

    return-object v0
.end method

.method declared-synchronized h(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 966
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->P:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_1

    .line 985
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 970
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/adcolony/sdk/co;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->am()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 972
    :try_start_2
    iput-object p1, p0, Lcom/adcolony/sdk/bg;->P:Ljava/lang/String;

    .line 974
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Setting session token: "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 976
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->P:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/bg;->a(Ljava/lang/String;)V

    .line 978
    iget-boolean v0, p0, Lcom/adcolony/sdk/bg;->x:Z

    if-eqz v0, :cond_0

    .line 979
    const-string v0, "SetSessionToken"

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/bg;->f(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 981
    :catch_0
    move-exception v0

    .line 982
    :try_start_3
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    const-string v2, "YvolverBaseImpl.setSessionToken"

    invoke-virtual {v1, v0, v2}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 966
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method h(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1657
    iput-object p1, p0, Lcom/adcolony/sdk/bg;->ac:Ljava/util/Map;

    .line 1658
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->ac:Ljava/util/Map;

    const-string v1, "ex.bin"

    .line 1659
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/bz;->l()Landroid/content/Context;

    move-result-object v2

    .line 1658
    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/co;->a(Ljava/util/Map;Ljava/lang/String;Landroid/content/Context;)V

    .line 1660
    return-void
.end method

.method i(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 989
    invoke-static {}, Lcom/adcolony/sdk/co;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->am()Z

    move-result v0

    if-nez v0, :cond_0

    .line 991
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->R:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 992
    iput-object p1, p0, Lcom/adcolony/sdk/bg;->R:Ljava/lang/String;

    .line 994
    iget-boolean v0, p0, Lcom/adcolony/sdk/bg;->x:Z

    if-eqz v0, :cond_0

    .line 995
    const-string v0, "SetDeviceToken"

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/bg;->f(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1002
    :cond_0
    :goto_0
    return-void

    .line 998
    :catch_0
    move-exception v0

    .line 999
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    const-string v2, "YvolverBaseImpl.setDeviceToken"

    invoke-virtual {v1, v0, v2}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method i(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2078
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->ap()Lcom/adcolony/sdk/by;

    move-result-object v0

    new-instance v1, Lcom/adcolony/sdk/bg$26;

    invoke-direct {v1, p0, p1}, Lcom/adcolony/sdk/bg$26;-><init>(Lcom/adcolony/sdk/bg;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/by;->a(Lcom/adcolony/sdk/bv;)V

    .line 2116
    return-void
.end method

.method i()Z
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->ai:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    sget-object v1, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;->SERVICE_INVISIBLE:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method j()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1005
    iput-object p1, p0, Lcom/adcolony/sdk/bg;->O:Ljava/lang/String;

    .line 1006
    return-void
.end method

.method j(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2119
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->ap()Lcom/adcolony/sdk/by;

    move-result-object v0

    new-instance v1, Lcom/adcolony/sdk/bg$27;

    invoke-direct {v1, p0, p1}, Lcom/adcolony/sdk/bg$27;-><init>(Lcom/adcolony/sdk/bg;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/by;->a(Lcom/adcolony/sdk/bv;)V

    .line 2128
    return-void
.end method

.method k()Landroid/content/Context;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method k(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1166
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->r()Ljava/lang/String;

    move-result-object v0

    .line 1167
    iget-object v1, p0, Lcom/adcolony/sdk/bg;->m:Lcom/adcolony/sdk/bm;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/bg;->ah:Lcom/adcolony/sdk/bo;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/adcolony/sdk/bg;->m:Lcom/adcolony/sdk/bm;

    const-string v3, "catalog"

    invoke-virtual {v2, v3}, Lcom/adcolony/sdk/bm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?device_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adcolony/sdk/bg;->ah:Lcom/adcolony/sdk/bo;

    .line 1169
    invoke-virtual {v2}, Lcom/adcolony/sdk/bo;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&consumer_key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&sdk_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "3.0.7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1172
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method l()Landroid/content/Context;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->ae:Landroid/content/Context;

    return-object v0
.end method

.method l(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->at:Lcom/adcolony/sdk/bu;

    new-instance v1, Lcom/adcolony/sdk/bg$11;

    invoke-direct {v1, p0, p1}, Lcom/adcolony/sdk/bg$11;-><init>(Lcom/adcolony/sdk/bg;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bu;->a(Lcom/adcolony/sdk/bv;)V

    .line 1211
    return-void
.end method

.method m(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1332
    iput-object p1, p0, Lcom/adcolony/sdk/bg;->Q:Ljava/lang/String;

    .line 1333
    return-void
.end method

.method m()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 325
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "should Send "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->i()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v1}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 326
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->i()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 325
    goto :goto_0

    :cond_1
    move v1, v2

    .line 326
    goto :goto_1
.end method

.method n(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1340
    invoke-static {}, Lcom/adcolony/sdk/co;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->am()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1342
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->n:Lcom/adcolony/sdk/ck;

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/ck;->b(Ljava/lang/String;)Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1347
    :goto_0
    return-object v0

    .line 1343
    :catch_0
    move-exception v0

    .line 1344
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    const-string v2, "YvolverBaseImpl.getStat"

    invoke-virtual {v1, v0, v2}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1347
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method n()V
    .locals 1

    .prologue
    .line 347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adcolony/sdk/bg;->z:Z

    .line 349
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->q:Lcom/adcolony/sdk/cn;

    invoke-virtual {v0}, Lcom/adcolony/sdk/cn;->j()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bg;->q:Lcom/adcolony/sdk/cn;

    invoke-virtual {v0}, Lcom/adcolony/sdk/cn;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->q:Lcom/adcolony/sdk/cn;

    invoke-virtual {v0}, Lcom/adcolony/sdk/cn;->e()V

    .line 353
    :cond_1
    return-void
.end method

.method o(Ljava/lang/String;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1351
    invoke-static {}, Lcom/adcolony/sdk/co;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->am()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1353
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->n:Lcom/adcolony/sdk/ck;

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/ck;->a(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 1358
    :goto_0
    return-wide v0

    .line 1354
    :catch_0
    move-exception v0

    .line 1355
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    const-string v2, "YvolverBaseImpl.getStatValueLong"

    invoke-virtual {v1, v0, v2}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1358
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method o()V
    .locals 1

    .prologue
    .line 356
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adcolony/sdk/bg;->z:Z

    .line 358
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->q:Lcom/adcolony/sdk/cn;

    invoke-virtual {v0}, Lcom/adcolony/sdk/cn;->g()V

    .line 359
    return-void
.end method

.method p()Z
    .locals 1

    .prologue
    .line 362
    iget-boolean v0, p0, Lcom/adcolony/sdk/bg;->z:Z

    return v0
.end method

.method p(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1406
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->n:Lcom/adcolony/sdk/ck;

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/ck;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method q(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1520
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->at:Lcom/adcolony/sdk/bu;

    new-instance v1, Lcom/adcolony/sdk/bg$16;

    invoke-direct {v1, p0, p1}, Lcom/adcolony/sdk/bg$16;-><init>(Lcom/adcolony/sdk/bg;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bu;->a(Lcom/adcolony/sdk/bv;)V

    .line 1539
    return-void
.end method

.method declared-synchronized q()Z
    .locals 1

    .prologue
    .line 448
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/adcolony/sdk/bg;->C:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method r(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1643
    invoke-static {}, Lcom/adcolony/sdk/co;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->am()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1645
    :try_start_0
    iget-object v1, p0, Lcom/adcolony/sdk/bg;->ac:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/bg;->ac:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1646
    iget-object v1, p0, Lcom/adcolony/sdk/bg;->ac:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1653
    :cond_0
    :goto_0
    return-object v0

    .line 1649
    :catch_0
    move-exception v1

    .line 1650
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v2

    const-string v3, "YvolverBaseImpl.getExperimentValue"

    invoke-virtual {v2, v1, v3}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method declared-synchronized r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 614
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->N:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 618
    const-string v0, "3.0.7"

    return-object v0
.end method

.method s(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1850
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->k:Lcom/adcolony/sdk/ch;

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/ch;->a(Ljava/lang/String;)V

    .line 1851
    return-void
.end method

.method t()Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->ai:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    if-nez v0, :cond_0

    .line 716
    sget-object v0, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;->SERVICE_UNAVAILABLE:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    .line 718
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->ai:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    goto :goto_0
.end method

.method t(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1868
    if-nez p1, :cond_0

    .line 1899
    :goto_0
    return-void

    .line 1871
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->at:Lcom/adcolony/sdk/bu;

    new-instance v1, Lcom/adcolony/sdk/bg$25;

    invoke-direct {v1, p0, p1}, Lcom/adcolony/sdk/bg$25;-><init>(Lcom/adcolony/sdk/bg;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bu;->a(Lcom/adcolony/sdk/bv;)V

    goto :goto_0
.end method

.method u()V
    .locals 1

    .prologue
    .line 755
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 756
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->c()V

    .line 759
    :cond_0
    sget-object v0, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;->SERVICE_UNAVAILABLE:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/bg;->a(Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;)V

    .line 760
    return-void
.end method

.method v()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 763
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 764
    const-string v1, "apiKey"

    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->r()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    const-string v1, "productionMode"

    iget v2, p0, Lcom/adcolony/sdk/bg;->G:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    const-string v1, "configEndpoint"

    iget v2, p0, Lcom/adcolony/sdk/bg;->G:I

    invoke-direct {p0, v2}, Lcom/adcolony/sdk/bg;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    return-object v0
.end method

.method w()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 904
    invoke-static {}, Lcom/adcolony/sdk/co;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->am()Z

    move-result v1

    if-nez v1, :cond_0

    .line 905
    iget-object v1, p0, Lcom/adcolony/sdk/bg;->ai:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    sget-object v2, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;->SERVICE_AVAILABLE:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 907
    :cond_0
    return v0
.end method

.method x()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 911
    invoke-static {}, Lcom/adcolony/sdk/co;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->am()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/adcolony/sdk/co;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 912
    iget-object v1, p0, Lcom/adcolony/sdk/bg;->ai:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    sget-object v2, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;->SERVICE_AVAILABLE:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/bg;->ai:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    sget-object v2, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;->SERVICE_INVISIBLE:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 915
    :cond_1
    return v0
.end method

.method y()Z
    .locals 1

    .prologue
    .line 919
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->z()Z

    move-result v0

    return v0
.end method

.method z()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 923
    .line 924
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->t()Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    move-result-object v3

    .line 925
    sget-object v0, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;->SERVICE_BANNED:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    if-eq v3, v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bg;->Q:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_0
    move v0, v2

    .line 930
    :goto_0
    iget-object v4, p0, Lcom/adcolony/sdk/bg;->m:Lcom/adcolony/sdk/bm;

    invoke-virtual {v4}, Lcom/adcolony/sdk/bm;->D()I

    move-result v4

    .line 931
    iget-object v5, p0, Lcom/adcolony/sdk/bg;->n:Lcom/adcolony/sdk/ck;

    invoke-virtual {v5}, Lcom/adcolony/sdk/ck;->a()I

    move-result v5

    .line 932
    if-lt v5, v4, :cond_1

    .line 933
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 934
    const-string v6, "limit"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    const-string v4, "current_amount"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    iget-object v4, p0, Lcom/adcolony/sdk/bg;->o:Lcom/adcolony/sdk/cf;

    const-string v6, "overflow_stat"

    invoke-virtual {v4, v6, v0}, Lcom/adcolony/sdk/cf;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 939
    iget-object v0, p0, Lcom/adcolony/sdk/bg;->n:Lcom/adcolony/sdk/ck;

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v6, v7}, Lcom/adcolony/sdk/ck;->a(J)V

    .line 942
    :goto_1
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "shouldQueueStatCommand(): availability: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", apiSecret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/adcolony/sdk/bg;->Q:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", returning: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", num stats: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 943
    return v2

    :cond_1
    move v2, v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method
