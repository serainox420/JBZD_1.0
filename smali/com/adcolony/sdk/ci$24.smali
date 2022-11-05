.class Lcom/adcolony/sdk/ci$24;
.super Lcom/adcolony/sdk/bp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ci;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/ci;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ci;Lcom/adcolony/sdk/bq;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/adcolony/sdk/ci$24;->a:Lcom/adcolony/sdk/ci;

    invoke-direct {p0, p2}, Lcom/adcolony/sdk/bp;-><init>(Lcom/adcolony/sdk/bq;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 3

    .prologue
    .line 153
    monitor-enter p0

    .line 156
    :try_start_0
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->l()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adcolony/sdk/co;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_2

    .line 159
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/bz;->l()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adcolony/sdk/co;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    .line 160
    if-eqz v1, :cond_0

    sget-object v2, Lcom/adcolony/sdk/ci;->l:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    sget-object v2, Lcom/adcolony/sdk/ci;->l:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_0
    if-eqz v1, :cond_1

    sget-object v2, Lcom/adcolony/sdk/ci;->m:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 164
    sget-object v2, Lcom/adcolony/sdk/ci;->m:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_1
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/bz;->l()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/adcolony/sdk/co;->a(Ljava/util/Map;Ljava/lang/String;Landroid/content/Context;)V

    .line 170
    :cond_2
    invoke-virtual {p0}, Lcom/adcolony/sdk/ci$24;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    monitor-exit p0

    return-void

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
