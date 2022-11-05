.class Lcom/adcolony/sdk/bz;
.super Lcom/adcolony/sdk/bg;
.source "SourceFile"


# static fields
.field private static ap:Lcom/adcolony/sdk/bz;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/adcolony/sdk/bg;-><init>()V

    .line 17
    invoke-virtual {p0}, Lcom/adcolony/sdk/bz;->f()V

    .line 18
    return-void
.end method

.method static declared-synchronized aK()Lcom/adcolony/sdk/bz;
    .locals 2

    .prologue
    .line 10
    const-class v1, Lcom/adcolony/sdk/bz;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/adcolony/sdk/bz;->ap:Lcom/adcolony/sdk/bz;

    if-nez v0, :cond_0

    .line 11
    new-instance v0, Lcom/adcolony/sdk/bz;

    invoke-direct {v0}, Lcom/adcolony/sdk/bz;-><init>()V

    sput-object v0, Lcom/adcolony/sdk/bz;->ap:Lcom/adcolony/sdk/bz;

    .line 13
    :cond_0
    sget-object v0, Lcom/adcolony/sdk/bz;->ap:Lcom/adcolony/sdk/bz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 10
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const-string v0, "AdColonyPubServices"

    return-object v0
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method a(Ljava/util/Map;)V
    .locals 0
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
    .line 38
    return-void
.end method

.method b()Ljava/util/ArrayList;
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
    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Lcom/adcolony/sdk/co;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adcolony/sdk/bz;->am()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    :try_start_0
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->ay()Lcom/adcolony/sdk/ci;

    move-result-object v0

    .line 69
    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/ci;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    const-string v1, "YvolverImpl.sendCommand"

    invoke-virtual {p0, v0, v1}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method c()V
    .locals 2

    .prologue
    .line 42
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    iget-object v0, v0, Lcom/adcolony/sdk/bz;->c:Lcom/adcolony/sdk/by;

    new-instance v1, Lcom/adcolony/sdk/bz$1;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/bz$1;-><init>(Lcom/adcolony/sdk/bz;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/by;->a(Lcom/adcolony/sdk/bv;)V

    .line 50
    return-void
.end method

.method d()I
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    iget-object v0, v0, Lcom/adcolony/sdk/bz;->p:Lcom/adcolony/sdk/ci;

    iget-object v0, v0, Lcom/adcolony/sdk/ci;->I:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    .line 55
    return v0
.end method

.method e()Z
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    iget-boolean v0, v0, Lcom/adcolony/sdk/bz;->y:Z

    return v0
.end method
