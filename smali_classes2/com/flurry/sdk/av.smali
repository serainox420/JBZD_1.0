.class public final Lcom/flurry/sdk/av;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/flurry/sdk/fr;

.field b:Lcom/flurry/sdk/gp;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/flurry/sdk/bc;->h:Lcom/flurry/sdk/bc;

    .line 1079
    iget-object v2, v2, Lcom/flurry/sdk/bc;->ag:Ljava/lang/String;

    .line 25
    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/flurry/sdk/bc;->f:Lcom/flurry/sdk/bc;

    .line 2079
    iget-object v2, v2, Lcom/flurry/sdk/bc;->ag:Ljava/lang/String;

    .line 25
    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/flurry/sdk/bc;->W:Lcom/flurry/sdk/bc;

    .line 3079
    iget-object v2, v2, Lcom/flurry/sdk/bc;->ag:Ljava/lang/String;

    .line 25
    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/av;->d:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/av;->e:Ljava/util/Map;

    .line 29
    iget-object v0, p0, Lcom/flurry/sdk/av;->e:Ljava/util/Map;

    sget-object v1, Lcom/flurry/sdk/bc;->v:Lcom/flurry/sdk/bc;

    .line 4079
    iget-object v1, v1, Lcom/flurry/sdk/bc;->ag:Ljava/lang/String;

    .line 29
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lcom/flurry/sdk/av;->e:Ljava/util/Map;

    sget-object v1, Lcom/flurry/sdk/bc;->f:Lcom/flurry/sdk/bc;

    .line 5079
    iget-object v1, v1, Lcom/flurry/sdk/bc;->ag:Ljava/lang/String;

    .line 30
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lcom/flurry/sdk/av;->e:Ljava/util/Map;

    sget-object v1, Lcom/flurry/sdk/bc;->g:Lcom/flurry/sdk/bc;

    .line 6079
    iget-object v1, v1, Lcom/flurry/sdk/bc;->ag:Ljava/lang/String;

    .line 31
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/av;->f:Ljava/util/List;

    .line 38
    new-instance v0, Lcom/flurry/sdk/gp;

    invoke-direct {v0}, Lcom/flurry/sdk/gp;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/av;->b:Lcom/flurry/sdk/gp;

    .line 39
    return-void
.end method
