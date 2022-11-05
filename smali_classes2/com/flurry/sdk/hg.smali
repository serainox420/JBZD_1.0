.class public final Lcom/flurry/sdk/hg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/hm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/hg$a;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String;

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/hm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 25
    const-class v0, Lcom/flurry/sdk/hg;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/hg;->a:Ljava/lang/String;

    .line 5054
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5055
    const-string v1, "FLURRY"

    new-instance v2, Lcom/flurry/sdk/hg$a;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/flurry/sdk/hg$a;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5056
    const-string v1, "THIRD_PARTY"

    new-instance v2, Lcom/flurry/sdk/bx;

    invoke-direct {v2}, Lcom/flurry/sdk/bx;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5057
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 30
    sput-object v0, Lcom/flurry/sdk/hg;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/flurry/sdk/r;)Lcom/flurry/sdk/hl;
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 34
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v0, v1

    .line 50
    :goto_0
    return-object v0

    .line 38
    :cond_1
    invoke-interface {p2}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    .line 2078
    iget-object v0, v0, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 3058
    iget-object v2, v0, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 3065
    if-eqz v2, :cond_6

    .line 3069
    iget-object v0, v2, Lcom/flurry/sdk/cs;->f:Ljava/util/List;

    .line 3070
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move-object v2, v1

    .line 39
    :goto_1
    if-nez v2, :cond_7

    move-object v0, v1

    .line 40
    goto :goto_0

    .line 3074
    :cond_3
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/cn;

    .line 3075
    if-eqz v0, :cond_6

    .line 3079
    iget v0, v0, Lcom/flurry/sdk/cn;->a:I

    .line 3081
    iget v2, v2, Lcom/flurry/sdk/cs;->h:I

    if-eq v2, v4, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    if-eq v0, v4, :cond_4

    if-ne v0, v5, :cond_5

    .line 3085
    :cond_4
    const-string v0, "FLURRY"

    move-object v2, v0

    goto :goto_1

    .line 3088
    :cond_5
    const/4 v2, 0x4

    if-ne v0, v2, :cond_6

    .line 3089
    const-string v0, "THIRD_PARTY"

    move-object v2, v0

    goto :goto_1

    :cond_6
    move-object v2, v1

    .line 3092
    goto :goto_1

    .line 4061
    :cond_7
    sget-object v0, Lcom/flurry/sdk/hg;->b:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/hm;

    .line 44
    if-nez v0, :cond_8

    .line 45
    sget-object v0, Lcom/flurry/sdk/hg;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot create ad takeover for type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/flurry/sdk/km;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 46
    goto :goto_0

    .line 49
    :cond_8
    sget-object v1, Lcom/flurry/sdk/hg;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Creating ad takeover for type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-interface {v0, p1, p2}, Lcom/flurry/sdk/hm;->a(Landroid/content/Context;Lcom/flurry/sdk/r;)Lcom/flurry/sdk/hl;

    move-result-object v0

    goto :goto_0
.end method
