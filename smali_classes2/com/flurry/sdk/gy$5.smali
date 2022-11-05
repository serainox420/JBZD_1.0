.class final Lcom/flurry/sdk/gy$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ks$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/gy;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/ks$a",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/flurry/sdk/gy;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gy;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1133
    iput-object p1, p0, Lcom/flurry/sdk/gy$5;->b:Lcom/flurry/sdk/gy;

    iput-object p2, p0, Lcom/flurry/sdk/gy$5;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/ks;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 1133
    check-cast p2, Ljava/lang/String;

    .line 2220
    iget v0, p1, Lcom/flurry/sdk/ku;->p:I

    .line 2137
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/flurry/sdk/gy$5;->b:Lcom/flurry/sdk/gy;

    invoke-static {v2}, Lcom/flurry/sdk/gy;->d(Lcom/flurry/sdk/gy;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Prerender: HTTP status code is:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " for url: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/flurry/sdk/gy$5;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 2140
    invoke-virtual {p1}, Lcom/flurry/sdk/ks;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2141
    iget-object v0, p0, Lcom/flurry/sdk/gy$5;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/flurry/sdk/mc;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2143
    iget-object v1, p0, Lcom/flurry/sdk/gy$5;->b:Lcom/flurry/sdk/gy;

    invoke-virtual {v1}, Lcom/flurry/sdk/gy;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v1

    sget-object v2, Lcom/flurry/sdk/bc;->f:Lcom/flurry/sdk/bc;

    .line 3079
    iget-object v2, v2, Lcom/flurry/sdk/bc;->ag:Ljava/lang/String;

    .line 2143
    invoke-virtual {v1, v2}, Lcom/flurry/sdk/au;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2144
    iget-object v1, p0, Lcom/flurry/sdk/gy$5;->b:Lcom/flurry/sdk/gy;

    sget-object v2, Lcom/flurry/sdk/bc;->f:Lcom/flurry/sdk/bc;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/sdk/gy$5;->b:Lcom/flurry/sdk/gy;

    invoke-virtual {v4}, Lcom/flurry/sdk/gy;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/flurry/sdk/gy;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;Lcom/flurry/sdk/au;I)V

    .line 2145
    iget-object v1, p0, Lcom/flurry/sdk/gy$5;->b:Lcom/flurry/sdk/gy;

    invoke-virtual {v1}, Lcom/flurry/sdk/gy;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v1

    sget-object v2, Lcom/flurry/sdk/bc;->f:Lcom/flurry/sdk/bc;

    .line 4079
    iget-object v2, v2, Lcom/flurry/sdk/bc;->ag:Ljava/lang/String;

    .line 2145
    invoke-virtual {v1, v2}, Lcom/flurry/sdk/au;->b(Ljava/lang/String;)V

    .line 2148
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v1

    new-instance v2, Lcom/flurry/sdk/gy$5$1;

    invoke-direct {v2, p0, v0, p2}, Lcom/flurry/sdk/gy$5$1;-><init>(Lcom/flurry/sdk/gy$5;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/jy;->a(Ljava/lang/Runnable;)V

    .line 2157
    :goto_0
    return-void

    .line 2158
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/gy$5$2;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/gy$5$2;-><init>(Lcom/flurry/sdk/gy$5;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
