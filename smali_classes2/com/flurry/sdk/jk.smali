.class public Lcom/flurry/sdk/jk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/kp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/jk;
    .locals 3

    .prologue
    .line 30
    const-class v1, Lcom/flurry/sdk/jk;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    const-class v2, Lcom/flurry/sdk/jk;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/jy;->a(Ljava/lang/Class;)Lcom/flurry/sdk/kp;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/jk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    const/4 v0, 0x0

    .line 78
    invoke-static {}, Lcom/flurry/sdk/jk;->h()Lcom/flurry/sdk/jx;

    move-result-object v1

    .line 79
    if-eqz v1, :cond_0

    .line 1133
    iget-wide v0, v1, Lcom/flurry/sdk/jx;->c:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 83
    :cond_0
    return-object v0
.end method

.method public static c()J
    .locals 3

    .prologue
    .line 87
    const-wide/16 v0, 0x0

    .line 89
    invoke-static {}, Lcom/flurry/sdk/jk;->h()Lcom/flurry/sdk/jx;

    move-result-object v2

    .line 90
    if-eqz v2, :cond_0

    .line 1137
    iget-wide v0, v2, Lcom/flurry/sdk/jx;->c:J

    .line 94
    :cond_0
    return-wide v0
.end method

.method public static d()J
    .locals 3

    .prologue
    .line 98
    const-wide/16 v0, 0x0

    .line 100
    invoke-static {}, Lcom/flurry/sdk/jk;->h()Lcom/flurry/sdk/jx;

    move-result-object v2

    .line 101
    if-eqz v2, :cond_0

    .line 1141
    iget-wide v0, v2, Lcom/flurry/sdk/jx;->d:J

    .line 105
    :cond_0
    return-wide v0
.end method

.method public static e()J
    .locals 3

    .prologue
    .line 109
    const-wide/16 v0, -0x1

    .line 111
    invoke-static {}, Lcom/flurry/sdk/jk;->h()Lcom/flurry/sdk/jx;

    move-result-object v2

    .line 112
    if-eqz v2, :cond_0

    .line 1145
    iget-wide v0, v2, Lcom/flurry/sdk/jx;->e:J

    .line 116
    :cond_0
    return-wide v0
.end method

.method public static f()J
    .locals 3

    .prologue
    .line 120
    const-wide/16 v0, 0x0

    .line 122
    invoke-static {}, Lcom/flurry/sdk/jk;->h()Lcom/flurry/sdk/jx;

    move-result-object v2

    .line 123
    if-eqz v2, :cond_0

    .line 124
    invoke-virtual {v2}, Lcom/flurry/sdk/jx;->c()J

    move-result-wide v0

    .line 127
    :cond_0
    return-wide v0
.end method

.method public static g()Lcom/flurry/sdk/jr$a;
    .locals 1

    .prologue
    .line 191
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/jr;->b()Lcom/flurry/sdk/jr$a;

    move-result-object v0

    return-object v0
.end method

.method public static h()Lcom/flurry/sdk/jx;
    .locals 2

    .prologue
    .line 195
    invoke-static {}, Lcom/flurry/sdk/lm;->a()Lcom/flurry/sdk/lm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/lm;->b()Lcom/flurry/sdk/lk;

    move-result-object v0

    .line 1199
    if-nez v0, :cond_0

    .line 1200
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1203
    :cond_0
    const-class v1, Lcom/flurry/sdk/jx;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/lk;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/jx;

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/flurry/sdk/jx;

    invoke-static {v0}, Lcom/flurry/sdk/lk;->a(Ljava/lang/Class;)V

    .line 42
    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    .line 43
    invoke-static {}, Lcom/flurry/sdk/lt;->a()Lcom/flurry/sdk/lt;

    .line 44
    invoke-static {}, Lcom/flurry/sdk/lp;->a()Lcom/flurry/sdk/lp;

    .line 45
    invoke-static {}, Lcom/flurry/sdk/ka;->a()Lcom/flurry/sdk/ka;

    .line 46
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    .line 47
    invoke-static {}, Lcom/flurry/sdk/jl;->a()Lcom/flurry/sdk/jl;

    .line 48
    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    .line 49
    invoke-static {}, Lcom/flurry/sdk/jp;->a()Lcom/flurry/sdk/jp;

    .line 50
    invoke-static {}, Lcom/flurry/sdk/jl;->a()Lcom/flurry/sdk/jl;

    .line 51
    invoke-static {}, Lcom/flurry/sdk/ju;->a()Lcom/flurry/sdk/ju;

    .line 52
    invoke-static {}, Lcom/flurry/sdk/jo;->a()Lcom/flurry/sdk/jo;

    .line 53
    invoke-static {}, Lcom/flurry/sdk/jw;->a()Lcom/flurry/sdk/jw;

    .line 54
    return-void
.end method
