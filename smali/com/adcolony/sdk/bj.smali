.class abstract Lcom/adcolony/sdk/bj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Lcom/adcolony/sdk/cp;


# instance fields
.field b:Lcom/adcolony/sdk/AdColonyPubServicesOverlayActivity;

.field c:Lcom/adcolony/sdk/bu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/adcolony/sdk/bj;->a:Lcom/adcolony/sdk/cp;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adcolony/sdk/bj;->b:Lcom/adcolony/sdk/AdColonyPubServicesOverlayActivity;

    .line 14
    new-instance v0, Lcom/adcolony/sdk/bu;

    invoke-direct {v0}, Lcom/adcolony/sdk/bu;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/bj;->c:Lcom/adcolony/sdk/bu;

    return-void
.end method

.method static synthetic a(Lcom/adcolony/sdk/bj;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/adcolony/sdk/bj;->f()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static declared-synchronized b()Lcom/adcolony/sdk/cp;
    .locals 2

    .prologue
    .line 19
    const-class v1, Lcom/adcolony/sdk/bj;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/adcolony/sdk/bj;->a:Lcom/adcolony/sdk/cp;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/adcolony/sdk/cp;

    invoke-direct {v0}, Lcom/adcolony/sdk/cp;-><init>()V

    sput-object v0, Lcom/adcolony/sdk/bj;->a:Lcom/adcolony/sdk/cp;

    .line 22
    :cond_0
    sget-object v0, Lcom/adcolony/sdk/bj;->a:Lcom/adcolony/sdk/cp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private f()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->am()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/adcolony/sdk/bj;->a(ILjava/util/List;Z)V

    .line 142
    return-void
.end method

.method a(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 113
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->ap()Lcom/adcolony/sdk/by;

    move-result-object v0

    new-instance v1, Lcom/adcolony/sdk/bj$3;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/adcolony/sdk/bj$3;-><init>(Lcom/adcolony/sdk/bj;Ljava/util/List;IZ)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/by;->a(Lcom/adcolony/sdk/bv;)V

    .line 138
    return-void
.end method

.method a(Lcom/adcolony/sdk/AdColonyPubServicesOverlayActivity;)V
    .locals 1

    .prologue
    .line 26
    iput-object p1, p0, Lcom/adcolony/sdk/bj;->b:Lcom/adcolony/sdk/AdColonyPubServicesOverlayActivity;

    .line 27
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->aB()Lcom/adcolony/sdk/bl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bl;->b()V

    .line 29
    if-nez p1, :cond_0

    .line 30
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->az()Lcom/adcolony/sdk/cn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/cn;->b()V

    .line 32
    :cond_0
    return-void
.end method

.method a(Ljava/lang/String;ZZ)V
    .locals 6

    .prologue
    .line 61
    invoke-static {}, Lcom/adcolony/sdk/co;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/adcolony/sdk/bj;->f()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/adcolony/sdk/bj;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    const/4 v4, -0x2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/adcolony/sdk/bj;->a(Ljava/lang/String;ZZILjava/lang/String;)V

    .line 67
    :cond_0
    return-void
.end method

.method a(Ljava/lang/String;ZZILjava/lang/String;)V
    .locals 8

    .prologue
    .line 71
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->D()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v7, p0, Lcom/adcolony/sdk/bj;->c:Lcom/adcolony/sdk/bu;

    new-instance v0, Lcom/adcolony/sdk/bj$2;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/adcolony/sdk/bj$2;-><init>(Lcom/adcolony/sdk/bj;Ljava/lang/String;ZZILjava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/adcolony/sdk/bu;->a(Lcom/adcolony/sdk/bv;)V

    goto :goto_0
.end method

.method abstract a()Z
.end method

.method c()Lcom/adcolony/sdk/AdColonyPubServicesOverlayActivity;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/adcolony/sdk/bj;->b:Lcom/adcolony/sdk/AdColonyPubServicesOverlayActivity;

    return-object v0
.end method

.method d()V
    .locals 2

    .prologue
    .line 44
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->ap()Lcom/adcolony/sdk/by;

    move-result-object v0

    new-instance v1, Lcom/adcolony/sdk/bj$1;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/bj$1;-><init>(Lcom/adcolony/sdk/bj;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/by;->a(Lcom/adcolony/sdk/bv;)V

    .line 51
    return-void
.end method

.method e()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-static {}, Lcom/adcolony/sdk/co;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/adcolony/sdk/bj;->f()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/adcolony/sdk/bj;->b:Lcom/adcolony/sdk/AdColonyPubServicesOverlayActivity;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 57
    :cond_0
    return v0
.end method
