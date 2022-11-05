.class Lcom/adcolony/sdk/br;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adcolony/sdk/br;->a:J

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adcolony/sdk/br;->b:Z

    .line 20
    return-void
.end method

.method static synthetic a(Lcom/adcolony/sdk/br;J)J
    .locals 1

    .prologue
    .line 15
    iput-wide p1, p0, Lcom/adcolony/sdk/br;->a:J

    return-wide p1
.end method

.method private a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, "AdColonyPubServices"

    return-object v0
.end method

.method static synthetic a(Lcom/adcolony/sdk/br;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/adcolony/sdk/br;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/adcolony/sdk/br;Z)Z
    .locals 0

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/adcolony/sdk/br;->b:Z

    return p1
.end method


# virtual methods
.method a(Lcom/adcolony/sdk/bn$b;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 33
    const-string v0, "INVALID"

    .line 34
    sget-object v1, Lcom/adcolony/sdk/br$2;->a:[I

    invoke-virtual {p1}, Lcom/adcolony/sdk/bn$b;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 49
    :goto_0
    return-object v0

    .line 36
    :pswitch_0
    const-string v0, "ERROR"

    goto :goto_0

    .line 39
    :pswitch_1
    const-string v0, "WARNING"

    goto :goto_0

    .line 42
    :pswitch_2
    const-string v0, "NOTICE"

    goto :goto_0

    .line 45
    :pswitch_3
    const-string v0, "NONE"

    goto :goto_0

    .line 34
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method a(Ljava/lang/String;Lcom/adcolony/sdk/bn$b;ZLjava/util/Map;)V
    .locals 4
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
    .line 54
    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    .line 55
    const-string v0, "log"

    .line 56
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 57
    const-string v2, "msg"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v2, "severity"

    invoke-virtual {p0, p2}, Lcom/adcolony/sdk/br;->a(Lcom/adcolony/sdk/bn$b;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v2, "data"

    invoke-interface {v1, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v2

    .line 61
    invoke-virtual {v2}, Lcom/adcolony/sdk/bz;->aC()Lcom/adcolony/sdk/cf;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/adcolony/sdk/cf;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 62
    invoke-virtual {p0, p3}, Lcom/adcolony/sdk/br;->a(Z)V

    .line 64
    :cond_0
    return-void
.end method

.method a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
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
    .line 67
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->aC()Lcom/adcolony/sdk/cf;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/adcolony/sdk/cf;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 68
    return-void
.end method

.method declared-synchronized a(Z)V
    .locals 4

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->x()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 143
    :goto_0
    monitor-exit p0

    return-void

    .line 76
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/adcolony/sdk/br;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Send Logs.."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 78
    iget-wide v2, p0, Lcom/adcolony/sdk/br;->a:J

    sub-long/2addr v0, v2

    .line 79
    if-nez p1, :cond_1

    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/bz;->at()Lcom/adcolony/sdk/bm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/bm;->q()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/adcolony/sdk/br;->b:Z

    if-nez v0, :cond_2

    .line 82
    new-instance v0, Lcom/adcolony/sdk/br$1;

    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    iget-object v1, v1, Lcom/adcolony/sdk/bz;->u:Lcom/adcolony/sdk/bq;

    invoke-direct {v0, p0, v1}, Lcom/adcolony/sdk/br$1;-><init>(Lcom/adcolony/sdk/br;Lcom/adcolony/sdk/bq;)V

    .line 142
    :cond_2
    invoke-direct {p0}, Lcom/adcolony/sdk/br;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "not time to send logs yet."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/adcolony/sdk/br;->b:Z

    .line 147
    return-void
.end method
