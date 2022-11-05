.class public Lcom/flurry/sdk/bj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/bl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/flurry/sdk/bj;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/bj;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/flurry/sdk/r;)V
    .locals 3

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-interface {p1}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/bj;->a:Ljava/lang/String;

    const-string v2, "AdController is null. Cannot create response."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 38
    :goto_0
    return-void

    .line 32
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/flurry/sdk/bj;->b:I

    .line 1302
    iget-object v1, v0, Lcom/flurry/sdk/au;->c:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/flurry/sdk/bj;->c:Ljava/lang/String;

    .line 1306
    iget-object v1, v0, Lcom/flurry/sdk/au;->d:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/flurry/sdk/bj;->d:Ljava/lang/String;

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/flurry/sdk/bj;->e:Ljava/util/List;

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/flurry/sdk/bj;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/au;)V

    goto :goto_0
.end method

.method private a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/au;)V
    .locals 5

    .prologue
    .line 42
    iget-object v0, p0, Lcom/flurry/sdk/bj;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1310
    iget-object v0, p2, Lcom/flurry/sdk/au;->a:Lcom/flurry/sdk/kd;

    invoke-virtual {v0}, Lcom/flurry/sdk/kd;->c()Ljava/util/Set;

    move-result-object v0

    .line 45
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1314
    iget-object v2, p2, Lcom/flurry/sdk/au;->a:Lcom/flurry/sdk/kd;

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/kd;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 47
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 48
    iget-object v3, p0, Lcom/flurry/sdk/bj;->e:Ljava/util/List;

    new-instance v4, Lcom/flurry/sdk/bl;

    invoke-direct {v4, v0, v2, p1}, Lcom/flurry/sdk/bl;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/flurry/sdk/r;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 51
    :cond_1
    return-void
.end method
