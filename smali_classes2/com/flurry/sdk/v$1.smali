.class final Lcom/flurry/sdk/v$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/kh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kh",
        "<",
        "Lcom/flurry/sdk/ls;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/v;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/v;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/flurry/sdk/v$1;->a:Lcom/flurry/sdk/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/kg;)V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v0, 0x0

    const/4 v8, 0x3

    .line 77
    .line 1080
    iget-object v1, p0, Lcom/flurry/sdk/v$1;->a:Lcom/flurry/sdk/v;

    .line 1531
    iget-wide v2, v1, Lcom/flurry/sdk/v;->l:J

    cmp-long v2, v2, v10

    if-lez v2, :cond_1

    .line 1532
    iget-wide v2, v1, Lcom/flurry/sdk/v;->m:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v1, Lcom/flurry/sdk/v;->i:J

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/flurry/sdk/v;->m:J

    .line 1533
    iget-wide v2, v1, Lcom/flurry/sdk/v;->m:J

    cmp-long v2, v2, v10

    if-gtz v2, :cond_1

    .line 1731
    invoke-static {}, Lcom/flurry/sdk/lw;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1732
    sget-object v2, Lcom/flurry/sdk/v;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Device is locked: banner will NOT rotate for adSpace: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2284
    iget-object v4, v1, Lcom/flurry/sdk/v;->c:Ljava/lang/String;

    .line 1732
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v2, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1534
    :goto_0
    if-eqz v0, :cond_0

    .line 1535
    sget-object v0, Lcom/flurry/sdk/v;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Rotating banner for adSpace: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4284
    iget-object v3, v1, Lcom/flurry/sdk/v;->c:Ljava/lang/String;

    .line 1535
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v0, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 4289
    iget-object v0, v1, Lcom/flurry/sdk/v;->e:Lcom/flurry/sdk/dv;

    .line 1536
    invoke-virtual {v1}, Lcom/flurry/sdk/v;->b()Lcom/flurry/sdk/dw;

    move-result-object v2

    invoke-virtual {v1}, Lcom/flurry/sdk/v;->j()Lcom/flurry/sdk/y;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/dv;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/dw;Lcom/flurry/sdk/y;)V

    .line 1539
    :cond_0
    iget-wide v2, v1, Lcom/flurry/sdk/v;->l:J

    iput-wide v2, v1, Lcom/flurry/sdk/v;->m:J

    .line 1082
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/v$1;->a:Lcom/flurry/sdk/v;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/v;->a(Lcom/flurry/sdk/v;J)J

    .line 77
    return-void

    .line 1736
    :cond_2
    iget-object v2, v1, Lcom/flurry/sdk/v;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    .line 1737
    sget-object v2, Lcom/flurry/sdk/v;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No banner holder: banner will NOT rotate for adSpace: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3284
    iget-object v4, v1, Lcom/flurry/sdk/v;->c:Ljava/lang/String;

    .line 1737
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v2, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1741
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method
