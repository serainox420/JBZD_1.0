.class public Lcom/flurry/sdk/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/ba;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/flurry/sdk/ba;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Lcom/flurry/sdk/kh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kh",
            "<",
            "Lcom/flurry/sdk/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/flurry/sdk/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    .line 40
    new-instance v0, Lcom/flurry/sdk/h$1;

    invoke-direct {v0}, Lcom/flurry/sdk/h$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/h;->c:Ljava/util/Map;

    .line 50
    new-instance v0, Lcom/flurry/sdk/h$2;

    invoke-direct {v0}, Lcom/flurry/sdk/h$2;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/h;->d:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lcom/flurry/sdk/h$3;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/h$3;-><init>(Lcom/flurry/sdk/h;)V

    iput-object v0, p0, Lcom/flurry/sdk/h;->b:Lcom/flurry/sdk/kh;

    .line 64
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Lcom/flurry/sdk/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 258
    const/4 v0, 0x3

    const-string v1, "VerifyPackageLog"

    const-string v2, "onStartPrerender() Ready to pre-render."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 50110
    iget-object v0, p0, Lcom/flurry/sdk/b;->d:Lcom/flurry/sdk/r;

    .line 259
    invoke-interface {v0}, Lcom/flurry/sdk/r;->i()Lcom/flurry/sdk/dv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dv;->e()V

    .line 260
    return-void
.end method

.method private static a(Lcom/flurry/sdk/b;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/b;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 235
    const/4 v1, 0x0

    .line 236
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/a;

    .line 50108
    iget-object v0, v0, Lcom/flurry/sdk/a;->a:Lcom/flurry/sdk/ba;

    .line 237
    sget-object v3, Lcom/flurry/sdk/ba;->f:Lcom/flurry/sdk/ba;

    invoke-virtual {v0, v3}, Lcom/flurry/sdk/ba;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/b;->b:Ljava/util/Map;

    sget-object v3, Lcom/flurry/sdk/bc;->d:Lcom/flurry/sdk/bc;

    .line 50109
    iget-object v3, v3, Lcom/flurry/sdk/bc;->ag:Ljava/lang/String;

    .line 237
    invoke-interface {v0, v3}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    const/4 v0, 0x1

    .line 243
    :goto_0
    if-nez v0, :cond_1

    .line 244
    const/4 v0, 0x3

    const-string v1, "VerifyPackageLog"

    const-string v2, "onPackageVerified() no nextAdUnit or different originator, ready to fire PRE-RENDER. "

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-static {p0}, Lcom/flurry/sdk/h;->a(Lcom/flurry/sdk/b;)V

    .line 247
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static a(Lcom/flurry/sdk/c;)V
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v13, 0x3

    .line 86
    iget-object v6, p0, Lcom/flurry/sdk/c;->a:Lcom/flurry/sdk/b;

    .line 87
    iget-object v0, v6, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bc;

    .line 1079
    iget-object v2, v0, Lcom/flurry/sdk/bc;->ag:Ljava/lang/String;

    .line 2043
    iget-object v0, v6, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/au;

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->d()Lcom/flurry/sdk/cn;

    move-result-object v0

    .line 2518
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2519
    iget-object v0, v0, Lcom/flurry/sdk/cn;->e:Ljava/util/List;

    .line 2520
    iget-object v1, v6, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bc;

    .line 3079
    iget-object v4, v1, Lcom/flurry/sdk/bc;->ag:Ljava/lang/String;

    .line 2523
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/cv;

    .line 2524
    iget-object v1, v0, Lcom/flurry/sdk/cv;->a:Ljava/lang/String;

    .line 2525
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2527
    iget-object v0, v0, Lcom/flurry/sdk/cv;->b:Ljava/util/List;

    .line 2528
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2529
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 2530
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    .line 2532
    const/4 v1, -0x1

    if-eq v11, v1, :cond_2

    .line 2534
    invoke-virtual {v0, v5, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2535
    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2537
    const-string v11, "%{eventParams}"

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2538
    const-string v11, "%{eventParams}"

    const-string v12, ""

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2539
    iget-object v11, v6, Lcom/flurry/sdk/b;->b:Ljava/util/Map;

    invoke-interface {v10, v11}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2542
    :cond_1
    invoke-static {v0}, Lcom/flurry/sdk/ly;->h(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    move-object v0, v1

    .line 2546
    :cond_2
    invoke-static {v0}, Lcom/flurry/sdk/a;->b(Ljava/lang/String;)Lcom/flurry/sdk/ba;

    move-result-object v0

    .line 2547
    new-instance v1, Lcom/flurry/sdk/a;

    invoke-direct {v1, v0, v10, v6}, Lcom/flurry/sdk/a;-><init>(Lcom/flurry/sdk/ba;Ljava/util/Map;Lcom/flurry/sdk/b;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 90
    :cond_3
    sget-object v0, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Ad EventType:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " for adUnit:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4039
    iget-object v4, v6, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/au;

    .line 5078
    iget-object v4, v4, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 6054
    iget v4, v4, Lcom/flurry/sdk/ay;->a:I

    .line 90
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/flurry/sdk/f;->a()Lcom/flurry/sdk/f;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/f;->a(Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    invoke-static {}, Lcom/flurry/sdk/i;->b()Lcom/flurry/sdk/bi;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/flurry/sdk/bi;->a(Lcom/flurry/sdk/b;)V

    .line 99
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 100
    sget-object v0, Lcom/flurry/sdk/h;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 101
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, v6, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bc;

    .line 6079
    iget-object v4, v4, Lcom/flurry/sdk/bc;->ag:Ljava/lang/String;

    .line 101
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 102
    new-instance v1, Lcom/flurry/sdk/a;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ba;

    iget-object v4, v6, Lcom/flurry/sdk/b;->b:Ljava/util/Map;

    invoke-direct {v1, v0, v4, v6}, Lcom/flurry/sdk/a;-><init>(Lcom/flurry/sdk/ba;Ljava/util/Map;Lcom/flurry/sdk/b;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 107
    :cond_5
    sget-object v0, Lcom/flurry/sdk/h$4;->a:[I

    iget-object v1, v6, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bc;

    invoke-virtual {v1}, Lcom/flurry/sdk/bc;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 224
    sget-object v0, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Event not handled: { "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v6, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bc;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for adSpace: {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 50107
    iget-object v2, v6, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/au;

    .line 226
    invoke-virtual {v2}, Lcom/flurry/sdk/au;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 224
    invoke-static {v13, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_6
    :goto_2
    invoke-static {p0, v7}, Lcom/flurry/sdk/h;->a(Lcom/flurry/sdk/c;Ljava/util/List;)V

    .line 232
    return-void

    .line 6486
    :pswitch_0
    iget-object v0, v6, Lcom/flurry/sdk/b;->b:Ljava/util/Map;

    const-string v1, "binding_3rd_party"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6489
    if-eqz v0, :cond_10

    move v1, v3

    .line 6493
    :goto_3
    invoke-virtual {v6}, Lcom/flurry/sdk/b;->a()Lcom/flurry/sdk/cs;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/cs;->f:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/cn;

    iget v0, v0, Lcom/flurry/sdk/cn;->a:I

    if-ne v0, v14, :cond_7

    move v1, v3

    .line 6384
    :cond_7
    iget-object v0, v6, Lcom/flurry/sdk/b;->b:Ljava/util/Map;

    const-string v2, "preRender"

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    if-eq v1, v3, :cond_9

    .line 7421
    sget-object v0, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Firing onRenderFailed, adObject="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8035
    iget-object v2, v6, Lcom/flurry/sdk/b;->d:Lcom/flurry/sdk/r;

    .line 7421
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 7423
    new-instance v0, Lcom/flurry/sdk/d;

    invoke-direct {v0}, Lcom/flurry/sdk/d;-><init>()V

    .line 9035
    iget-object v1, v6, Lcom/flurry/sdk/b;->d:Lcom/flurry/sdk/r;

    .line 7424
    iput-object v1, v0, Lcom/flurry/sdk/d;->a:Lcom/flurry/sdk/r;

    .line 7425
    sget-object v1, Lcom/flurry/sdk/d$a;->d:Lcom/flurry/sdk/d$a;

    iput-object v1, v0, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    .line 7426
    invoke-virtual {v0}, Lcom/flurry/sdk/d;->b()V

    .line 9039
    :goto_4
    iget-object v0, v6, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/au;

    .line 6389
    iget-object v1, v6, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bc;

    .line 9079
    iget-object v1, v1, Lcom/flurry/sdk/bc;->ag:Ljava/lang/String;

    .line 10043
    iget-object v2, v6, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/au;

    invoke-virtual {v2}, Lcom/flurry/sdk/au;->d()Lcom/flurry/sdk/cn;

    move-result-object v2

    .line 6389
    iget-object v2, v2, Lcom/flurry/sdk/cn;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/fs;->b(Lcom/flurry/sdk/au;Ljava/lang/String;Ljava/lang/String;)V

    .line 11039
    iget-object v0, v6, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/au;

    .line 6390
    invoke-virtual {v0}, Lcom/flurry/sdk/au;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 6391
    invoke-static {}, Lcom/flurry/sdk/h;->b()V

    .line 6393
    :cond_8
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    .line 11251
    iget-object v0, v0, Lcom/flurry/sdk/i;->i:Lcom/flurry/sdk/ab;

    .line 12039
    iget-object v1, v6, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/au;

    .line 6393
    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ab;->c(Lcom/flurry/sdk/au;)V

    .line 6394
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    .line 12251
    iget-object v0, v0, Lcom/flurry/sdk/i;->i:Lcom/flurry/sdk/ab;

    .line 13035
    iget-object v0, v6, Lcom/flurry/sdk/b;->d:Lcom/flurry/sdk/r;

    .line 6394
    invoke-static {v0}, Lcom/flurry/sdk/ab;->a(Lcom/flurry/sdk/r;)V

    .line 6395
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    .line 13251
    iget-object v0, v0, Lcom/flurry/sdk/i;->i:Lcom/flurry/sdk/ab;

    .line 6395
    invoke-virtual {v0}, Lcom/flurry/sdk/ab;->d()V

    goto/16 :goto_2

    .line 6387
    :cond_9
    invoke-static {v6, v7}, Lcom/flurry/sdk/h;->b(Lcom/flurry/sdk/b;Ljava/util/List;)V

    goto :goto_4

    .line 14039
    :pswitch_1
    iget-object v0, v6, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/au;

    .line 13263
    invoke-virtual {v0}, Lcom/flurry/sdk/au;->f()Lcom/flurry/sdk/gp;

    move-result-object v0

    .line 14054
    iget-boolean v1, v0, Lcom/flurry/sdk/gp;->b:Z

    .line 13264
    if-nez v1, :cond_6

    .line 15039
    iget-object v1, v6, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/au;

    .line 13265
    iget-object v2, v6, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bc;

    .line 15079
    iget-object v2, v2, Lcom/flurry/sdk/bc;->ag:Ljava/lang/String;

    .line 16043
    iget-object v4, v6, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/au;

    invoke-virtual {v4}, Lcom/flurry/sdk/au;->d()Lcom/flurry/sdk/cn;

    move-result-object v4

    .line 13265
    iget-object v4, v4, Lcom/flurry/sdk/cn;->f:Ljava/lang/String;

    invoke-static {v1, v2, v4}, Lcom/flurry/sdk/fs;->d(Lcom/flurry/sdk/au;Ljava/lang/String;Ljava/lang/String;)V

    .line 16058
    iput-boolean v3, v0, Lcom/flurry/sdk/gp;->b:Z

    .line 17039
    iget-object v1, v6, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/au;

    .line 13267
    invoke-virtual {v1, v0}, Lcom/flurry/sdk/au;->a(Lcom/flurry/sdk/gp;)V

    goto/16 :goto_2

    .line 18039
    :pswitch_2
    iget-object v0, v6, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/au;

    .line 17272
    iget-object v1, v6, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bc;

    .line 18079
    iget-object v1, v1, Lcom/flurry/sdk/bc;->ag:Ljava/lang/String;

    .line 19043
    iget-object v2, v6, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/au;

    invoke-virtual {v2}, Lcom/flurry/sdk/au;->d()Lcom/flurry/sdk/cn;

    move-result-object v2

    .line 17272
    iget-object v2, v2, Lcom/flurry/sdk/cn;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/fs;->e(Lcom/flurry/sdk/au;Ljava/lang/String;Ljava/lang/String;)V

    .line 20039
    iget-object v0, v6, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/au;

    .line 17273
    invoke-virtual {v0}, Lcom/flurry/sdk/au;->f()Lcom/flurry/sdk/gp;

    move-result-object v0

    .line 20042
    iput-boolean v3, v0, Lcom/flurry/sdk/gp;->c:Z

    .line 21039
    iget-object v1, v6, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/au;

    .line 17275
    invoke-virtual {v1, v0}, Lcom/flurry/sdk/au;->a(Lcom/flurry/sdk/gp;)V

    goto/16 :goto_2

    .line 22039
    :pswitch_3
    iget-object v0, v6, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/au;

    .line 21279
    iget-object v1, v6, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bc;

    .line 22079
    iget-object v1, v1, Lcom/flurry/sdk/bc;->ag:Ljava/lang/String;

    .line 23043
    iget-object v2, v6, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/au;

    invoke-virtual {v2}, Lcom/flurry/sdk/au;->d()Lcom/flurry/sdk/cn;

    move-result-object v2

    .line 21279
    iget-object v2, v2, Lcom/flurry/sdk/cn;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/fs;->f(Lcom/flurry/sdk/au;Ljava/lang/String;Ljava/lang/String;)V

    .line 24039
    iget-object v0, v6, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/au;

    .line 21280
    invoke-virtual {v0}, Lcom/flurry/sdk/au;->f()Lcom/flurry/sdk/gp;

    move-result-object v0

    .line 24066
    iput-boolean v3, v0, Lcom/flurry/sdk/gp;->d:Z

    .line 25039
    iget-object v1, v6, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/au;

    .line 21282
    invoke-virtual {v1, v0}, Lcom/flurry/sdk/au;->a(Lcom/flurry/sdk/gp;)V

    goto/16 :goto_2

    .line 26039
    :pswitch_4
    iget-object v0, v6, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/au;

    .line 25286
    iget-object v1, v6, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bc;

    .line 26079
    iget-object v1, v1, Lcom/flurry/sdk/bc;->ag:Ljava/lang/String;

    .line 27043
    iget-object v2, v6, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/au;

    invoke-virtual {v2}, Lcom/flurry/sdk/au;->d()Lcom/flurry/sdk/cn;

    move-result-object v2

    .line 25286
    iget-object v2, v2, Lcom/flurry/sdk/cn;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/fs;->g(Lcom/flurry/sdk/au;Ljava/lang/String;Ljava/lang/String;)V

    .line 28039
    iget-object v0, v6, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/au;

    .line 25287
    invoke-virtual {v0}, Lcom/flurry/sdk/au;->f()Lcom/flurry/sdk/gp;

    move-result-object v0

    .line 28074
    iput-boolean v3, v0, Lcom/flurry/sdk/gp;->e:Z

    .line 29039
    iget-object v1, v6, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/au;

    .line 25289
    invoke-virtual {v1, v0}, Lcom/flurry/sdk/au;->a(Lcom/flurry/sdk/gp;)V

    goto/16 :goto_2

    .line 30039
    :pswitch_5
    iget-object v0, v6, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/au;

    .line 29293
    iget-object v1, v6, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bc;

    .line 30079
    iget-object v1, v1, Lcom/flurry/sdk/bc;->ag:Ljava/lang/String;

    .line 31043
    iget-object v2, v6, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/au;

    invoke-virtual {v2}, Lcom/flurry/sdk/au;->d()Lcom/flurry/sdk/cn;

    move-result-object v2

    .line 29293
    iget-object v2, v2, Lcom/flurry/sdk/cn;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/fs;->h(Lcom/flurry/sdk/au;Ljava/lang/String;Ljava/lang/String;)V

    .line 32039
    iget-object v0, v6, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/au;

    .line 29294
    invoke-virtual {v0}, Lcom/flurry/sdk/au;->f()Lcom/flurry/sdk/gp;

    move-result-object v0

    .line 32082
    iput-boolean v3, v0, Lcom/flurry/sdk/gp;->f:Z

    .line 33039
    iget-object v1, v6, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/au;

    .line 29296
    invoke-virtual {v1, v0}, Lcom/flurry/sdk/au;->a(Lcom/flurry/sdk/gp;)V

    goto/16 :goto_2

    .line 34039
    :pswitch_6
    iget-object v0, v6, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/au;

    .line 33300
    iget-object v1, v6, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bc;

    .line 34079
    iget-object v1, v1, Lcom/flurry/sdk/bc;->ag:Ljava/lang/String;

    .line 35043
    iget-object v2, v6, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/au;

    invoke-virtual {v2}, Lcom/flurry/sdk/au;->d()Lcom/flurry/sdk/cn;

    move-result-object v2

    .line 33300
    iget-object v2, v2, Lcom/flurry/sdk/cn;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/fs;->i(Lcom/flurry/sdk/au;Ljava/lang/String;Ljava/lang/String;)V

    .line 33302
    iget-object v0, v6, Lcom/flurry/sdk/b;->b:Ljava/util/Map;

    const-string v1, "doNotRemoveAssets"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 33303
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 33304
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    .line 35251
    iget-object v0, v0, Lcom/flurry/sdk/i;->i:Lcom/flurry/sdk/ab;

    .line 36035
    iget-object v0, v6, Lcom/flurry/sdk/b;->d:Lcom/flurry/sdk/r;

    .line 33304
    invoke-static {v0}, Lcom/flurry/sdk/ab;->a(Lcom/flurry/sdk/r;)V

    .line 33305
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    .line 36251
    iget-object v0, v0, Lcom/flurry/sdk/i;->i:Lcom/flurry/sdk/ab;

    .line 33305
    invoke-virtual {v0}, Lcom/flurry/sdk/ab;->d()V

    .line 33308
    :cond_a
    sget-object v0, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initLayout onVideoCompleted "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37031
    iget-object v2, v6, Lcom/flurry/sdk/b;->c:Landroid/content/Context;

    .line 33308
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 33309
    invoke-virtual {v6}, Lcom/flurry/sdk/b;->a()Lcom/flurry/sdk/cs;

    move-result-object v0

    iget-boolean v0, v0, Lcom/flurry/sdk/cs;->q:Z

    if-eqz v0, :cond_b

    .line 33310
    sget-object v0, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    const-string v1, "Ad unit is rewardable, onVideoCompleted listener will fire"

    invoke-static {v13, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 33312
    sget-object v0, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Firing onVideoCompleted, adObject="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37035
    iget-object v2, v6, Lcom/flurry/sdk/b;->d:Lcom/flurry/sdk/r;

    .line 33312
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 33314
    new-instance v0, Lcom/flurry/sdk/d;

    invoke-direct {v0}, Lcom/flurry/sdk/d;-><init>()V

    .line 38035
    iget-object v1, v6, Lcom/flurry/sdk/b;->d:Lcom/flurry/sdk/r;

    .line 33315
    iput-object v1, v0, Lcom/flurry/sdk/d;->a:Lcom/flurry/sdk/r;

    .line 33316
    sget-object v1, Lcom/flurry/sdk/d$a;->k:Lcom/flurry/sdk/d$a;

    iput-object v1, v0, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    .line 33317
    invoke-virtual {v0}, Lcom/flurry/sdk/d;->b()V

    goto/16 :goto_2

    .line 33319
    :cond_b
    sget-object v0, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    const-string v1, "Ad unit is not rewardable, onVideoCompleted listener will not fire"

    invoke-static {v13, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 39039
    :pswitch_7
    iget-object v0, v6, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/au;

    .line 38337
    invoke-virtual {v0}, Lcom/flurry/sdk/au;->i()Ljava/lang/String;

    .line 38339
    sget-object v0, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Firing onClicked, adObject="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40035
    iget-object v2, v6, Lcom/flurry/sdk/b;->d:Lcom/flurry/sdk/r;

    .line 38339
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 41035
    iget-object v0, v6, Lcom/flurry/sdk/b;->d:Lcom/flurry/sdk/r;

    .line 38341
    instance-of v0, v0, Lcom/flurry/sdk/x;

    if-eqz v0, :cond_c

    .line 38342
    invoke-static {}, Lcom/flurry/sdk/f;->a()Lcom/flurry/sdk/f;

    move-result-object v0

    const-string v1, "nativeAdClick"

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/f;->a(Ljava/lang/String;)V

    .line 38345
    :cond_c
    new-instance v0, Lcom/flurry/sdk/d;

    invoke-direct {v0}, Lcom/flurry/sdk/d;-><init>()V

    .line 42035
    iget-object v1, v6, Lcom/flurry/sdk/b;->d:Lcom/flurry/sdk/r;

    .line 38346
    iput-object v1, v0, Lcom/flurry/sdk/d;->a:Lcom/flurry/sdk/r;

    .line 38347
    sget-object v1, Lcom/flurry/sdk/d$a;->h:Lcom/flurry/sdk/d$a;

    iput-object v1, v0, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    .line 38348
    invoke-virtual {v0}, Lcom/flurry/sdk/d;->b()V

    .line 42039
    iget-object v8, v6, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/au;

    .line 38352
    invoke-virtual {v8}, Lcom/flurry/sdk/au;->c()Lcom/flurry/sdk/fr;

    move-result-object v0

    .line 38353
    if-eqz v0, :cond_6

    .line 43039
    iget-object v1, v6, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/au;

    .line 38355
    invoke-virtual {v1}, Lcom/flurry/sdk/au;->f()Lcom/flurry/sdk/gp;

    move-result-object v9

    .line 38356
    invoke-virtual {v0}, Lcom/flurry/sdk/fr;->b()Ljava/lang/String;

    move-result-object v2

    .line 38357
    if-eqz v9, :cond_d

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 38359
    invoke-virtual {v8, v9}, Lcom/flurry/sdk/au;->a(Lcom/flurry/sdk/gp;)V

    .line 38360
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    invoke-static {}, Lcom/flurry/sdk/i;->c()Lcom/flurry/sdk/g;

    move-result-object v0

    .line 44031
    iget-object v1, v6, Lcom/flurry/sdk/b;->c:Landroid/content/Context;

    .line 44035
    iget-object v4, v6, Lcom/flurry/sdk/b;->d:Lcom/flurry/sdk/r;

    .line 44777
    if-nez v1, :cond_e

    .line 44778
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/g;->a:Ljava/lang/String;

    const-string v2, "Cannot process redirect, null context"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 38363
    :cond_d
    :goto_5
    if-eqz v9, :cond_6

    .line 45102
    iget-boolean v0, v9, Lcom/flurry/sdk/gp;->h:Z

    .line 38363
    if-nez v0, :cond_6

    .line 45106
    iput-boolean v3, v9, Lcom/flurry/sdk/gp;->h:Z

    .line 38365
    invoke-virtual {v8, v9}, Lcom/flurry/sdk/au;->a(Lcom/flurry/sdk/gp;)V

    .line 46039
    iget-object v0, v6, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/au;

    .line 38366
    iget-object v1, v6, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bc;

    .line 46079
    iget-object v1, v1, Lcom/flurry/sdk/bc;->ag:Ljava/lang/String;

    .line 47043
    iget-object v2, v6, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/au;

    invoke-virtual {v2}, Lcom/flurry/sdk/au;->d()Lcom/flurry/sdk/cn;

    move-result-object v2

    .line 38366
    iget-object v2, v2, Lcom/flurry/sdk/cn;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/fs;->c(Lcom/flurry/sdk/au;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 44786
    :cond_e
    invoke-virtual/range {v0 .. v5}, Lcom/flurry/sdk/g;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/flurry/sdk/r;Z)V

    goto :goto_5

    .line 47585
    :pswitch_8
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    .line 48251
    iget-object v0, v0, Lcom/flurry/sdk/i;->i:Lcom/flurry/sdk/ab;

    .line 49035
    iget-object v0, v6, Lcom/flurry/sdk/b;->d:Lcom/flurry/sdk/r;

    .line 47585
    invoke-static {v0}, Lcom/flurry/sdk/ab;->a(Lcom/flurry/sdk/r;)V

    .line 47586
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    .line 49251
    iget-object v0, v0, Lcom/flurry/sdk/i;->i:Lcom/flurry/sdk/ab;

    .line 47586
    invoke-virtual {v0}, Lcom/flurry/sdk/ab;->d()V

    goto/16 :goto_2

    .line 145
    :pswitch_9
    invoke-static {v6, v7}, Lcom/flurry/sdk/h;->c(Lcom/flurry/sdk/b;Ljava/util/List;)V

    goto/16 :goto_2

    .line 149
    :pswitch_a
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/a;

    .line 50025
    iget-object v2, v0, Lcom/flurry/sdk/a;->a:Lcom/flurry/sdk/ba;

    .line 150
    sget-object v3, Lcom/flurry/sdk/ba;->m:Lcom/flurry/sdk/ba;

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/ba;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 151
    const-string v2, "is_privacy"

    const-string v3, "true"

    invoke-virtual {v0, v2, v3}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_6

    .line 157
    :pswitch_b
    invoke-static {v6}, Lcom/flurry/sdk/h;->b(Lcom/flurry/sdk/b;)V

    goto/16 :goto_2

    .line 50026
    :pswitch_c
    sget-object v0, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Firing onVideoClose, adObject="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50033
    iget-object v2, v6, Lcom/flurry/sdk/b;->d:Lcom/flurry/sdk/r;

    .line 50026
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 50028
    new-instance v0, Lcom/flurry/sdk/d;

    invoke-direct {v0}, Lcom/flurry/sdk/d;-><init>()V

    .line 50034
    iget-object v1, v6, Lcom/flurry/sdk/b;->d:Lcom/flurry/sdk/r;

    .line 50029
    iput-object v1, v0, Lcom/flurry/sdk/d;->a:Lcom/flurry/sdk/r;

    .line 50030
    sget-object v1, Lcom/flurry/sdk/d$a;->f:Lcom/flurry/sdk/d$a;

    iput-object v1, v0, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    .line 50031
    invoke-virtual {v0}, Lcom/flurry/sdk/d;->b()V

    goto/16 :goto_2

    .line 165
    :pswitch_d
    invoke-static {v6}, Lcom/flurry/sdk/h;->b(Lcom/flurry/sdk/b;)V

    goto/16 :goto_2

    .line 50035
    :pswitch_e
    sget-object v0, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Firing onAdImpressionLogged, adObject="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50042
    iget-object v2, v6, Lcom/flurry/sdk/b;->d:Lcom/flurry/sdk/r;

    .line 50035
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 50037
    new-instance v0, Lcom/flurry/sdk/d;

    invoke-direct {v0}, Lcom/flurry/sdk/d;-><init>()V

    .line 50043
    iget-object v1, v6, Lcom/flurry/sdk/b;->d:Lcom/flurry/sdk/r;

    .line 50038
    iput-object v1, v0, Lcom/flurry/sdk/d;->a:Lcom/flurry/sdk/r;

    .line 50039
    sget-object v1, Lcom/flurry/sdk/d$a;->j:Lcom/flurry/sdk/d$a;

    iput-object v1, v0, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    .line 50040
    invoke-virtual {v0}, Lcom/flurry/sdk/d;->b()V

    goto/16 :goto_2

    .line 50048
    :pswitch_f
    iget-object v0, v6, Lcom/flurry/sdk/b;->d:Lcom/flurry/sdk/r;

    .line 50044
    instance-of v0, v0, Lcom/flurry/sdk/x;

    if-eqz v0, :cond_6

    .line 50045
    invoke-static {}, Lcom/flurry/sdk/f;->a()Lcom/flurry/sdk/f;

    move-result-object v0

    const-string v1, "nativeAdFilled"

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/f;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 177
    :pswitch_10
    invoke-static {v6, v7}, Lcom/flurry/sdk/h;->a(Lcom/flurry/sdk/b;Ljava/util/List;)V

    goto/16 :goto_2

    .line 50049
    :pswitch_11
    iget-object v0, v6, Lcom/flurry/sdk/b;->b:Ljava/util/Map;

    sget-object v1, Lcom/flurry/sdk/bc;->d:Lcom/flurry/sdk/bc;

    .line 50054
    iget-object v1, v1, Lcom/flurry/sdk/bc;->ag:Ljava/lang/String;

    .line 50049
    invoke-interface {v0, v1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 50050
    const-string v0, "VerifyPackageLog"

    const-string v1, "onPackageNotVerified() ready to fire PRE-RENDER."

    invoke-static {v13, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 50051
    invoke-static {v6}, Lcom/flurry/sdk/h;->a(Lcom/flurry/sdk/b;)V

    goto/16 :goto_2

    .line 50055
    :pswitch_12
    sget-object v0, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Firing onExpanded, adObject="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50062
    iget-object v2, v6, Lcom/flurry/sdk/b;->d:Lcom/flurry/sdk/r;

    .line 50055
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 50057
    new-instance v0, Lcom/flurry/sdk/d;

    invoke-direct {v0}, Lcom/flurry/sdk/d;-><init>()V

    .line 50063
    iget-object v1, v6, Lcom/flurry/sdk/b;->d:Lcom/flurry/sdk/r;

    .line 50058
    iput-object v1, v0, Lcom/flurry/sdk/d;->a:Lcom/flurry/sdk/r;

    .line 50059
    sget-object v1, Lcom/flurry/sdk/d$a;->l:Lcom/flurry/sdk/d$a;

    iput-object v1, v0, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    .line 50060
    invoke-virtual {v0}, Lcom/flurry/sdk/d;->b()V

    goto/16 :goto_2

    .line 50064
    :pswitch_13
    sget-object v0, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Firing onCollapsed, adObject="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50071
    iget-object v2, v6, Lcom/flurry/sdk/b;->d:Lcom/flurry/sdk/r;

    .line 50064
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 50066
    new-instance v0, Lcom/flurry/sdk/d;

    invoke-direct {v0}, Lcom/flurry/sdk/d;-><init>()V

    .line 50072
    iget-object v1, v6, Lcom/flurry/sdk/b;->d:Lcom/flurry/sdk/r;

    .line 50067
    iput-object v1, v0, Lcom/flurry/sdk/d;->a:Lcom/flurry/sdk/r;

    .line 50068
    sget-object v1, Lcom/flurry/sdk/d$a;->m:Lcom/flurry/sdk/d$a;

    iput-object v1, v0, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    .line 50069
    invoke-virtual {v0}, Lcom/flurry/sdk/d;->b()V

    goto/16 :goto_2

    .line 50073
    :pswitch_14
    sget-object v0, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Firing onOpen, adObject="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50080
    iget-object v2, v6, Lcom/flurry/sdk/b;->d:Lcom/flurry/sdk/r;

    .line 50073
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 50075
    new-instance v0, Lcom/flurry/sdk/d;

    invoke-direct {v0}, Lcom/flurry/sdk/d;-><init>()V

    .line 50081
    iget-object v1, v6, Lcom/flurry/sdk/b;->d:Lcom/flurry/sdk/r;

    .line 50076
    iput-object v1, v0, Lcom/flurry/sdk/d;->a:Lcom/flurry/sdk/r;

    .line 50077
    sget-object v1, Lcom/flurry/sdk/d$a;->e:Lcom/flurry/sdk/d$a;

    iput-object v1, v0, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    .line 50078
    invoke-virtual {v0}, Lcom/flurry/sdk/d;->b()V

    goto/16 :goto_2

    .line 50082
    :pswitch_15
    sget-object v0, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Firing onAppExit, adObject="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50091
    iget-object v2, v6, Lcom/flurry/sdk/b;->d:Lcom/flurry/sdk/r;

    .line 50082
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 50084
    new-instance v0, Lcom/flurry/sdk/d;

    invoke-direct {v0}, Lcom/flurry/sdk/d;-><init>()V

    .line 50092
    iget-object v1, v6, Lcom/flurry/sdk/b;->d:Lcom/flurry/sdk/r;

    .line 50085
    iput-object v1, v0, Lcom/flurry/sdk/d;->a:Lcom/flurry/sdk/r;

    .line 50086
    sget-object v1, Lcom/flurry/sdk/d$a;->g:Lcom/flurry/sdk/d$a;

    iput-object v1, v0, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    .line 50087
    invoke-virtual {v0}, Lcom/flurry/sdk/d;->b()V

    .line 50089
    invoke-static {}, Lcom/flurry/sdk/h;->b()V

    goto/16 :goto_2

    .line 50103
    :pswitch_16
    iget-object v1, v6, Lcom/flurry/sdk/b;->d:Lcom/flurry/sdk/r;

    .line 50096
    iget-object v0, v6, Lcom/flurry/sdk/b;->b:Ljava/util/Map;

    .line 50098
    if-eqz v0, :cond_6

    const-string v2, "phoneNumber"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 50099
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tel://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "phoneNumber"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 50100
    invoke-interface {v1}, Lcom/flurry/sdk/r;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/flurry/sdk/fo;->a(Landroid/content/Context;Landroid/net/Uri;)Z

    goto/16 :goto_2

    .line 50104
    :pswitch_17
    sget-object v0, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Firing onCallBeaconFire, adObject="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50106
    iget-object v2, v6, Lcom/flurry/sdk/b;->d:Lcom/flurry/sdk/r;

    .line 50104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_10
    move v1, v5

    goto/16 :goto_3

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch
.end method

.method private static a(Lcom/flurry/sdk/c;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/c;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 558
    const/4 v1, 0x0

    .line 560
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/flurry/sdk/a;

    .line 50125
    iget-object v0, v2, Lcom/flurry/sdk/a;->a:Lcom/flurry/sdk/ba;

    .line 561
    sget-object v3, Lcom/flurry/sdk/ba;->c:Lcom/flurry/sdk/ba;

    invoke-virtual {v0, v3}, Lcom/flurry/sdk/ba;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 563
    const-string v0, "__sendToServer"

    const-string v1, "true"

    invoke-virtual {v2, v0, v1}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-object v3, v2

    .line 50126
    :goto_1
    iget-object v0, v2, Lcom/flurry/sdk/a;->a:Lcom/flurry/sdk/ba;

    .line 566
    sget-object v1, Lcom/flurry/sdk/ba;->l:Lcom/flurry/sdk/ba;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ba;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50127
    iget-object v0, v2, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 567
    iget-object v0, v0, Lcom/flurry/sdk/b;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 568
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 571
    :cond_0
    sget-object v0, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/flurry/sdk/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    invoke-static {}, Lcom/flurry/sdk/i;->c()Lcom/flurry/sdk/g;

    move-result-object v0

    iget v1, p0, Lcom/flurry/sdk/c;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/flurry/sdk/g;->a(Lcom/flurry/sdk/a;I)V

    move-object v1, v3

    .line 573
    goto :goto_0

    .line 575
    :cond_1
    if-nez v1, :cond_2

    .line 576
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 577
    const-string v1, "__sendToServer"

    const-string v2, "false"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    new-instance v1, Lcom/flurry/sdk/a;

    sget-object v2, Lcom/flurry/sdk/ba;->c:Lcom/flurry/sdk/ba;

    iget-object v3, p0, Lcom/flurry/sdk/c;->a:Lcom/flurry/sdk/b;

    invoke-direct {v1, v2, v0, v3}, Lcom/flurry/sdk/a;-><init>(Lcom/flurry/sdk/ba;Ljava/util/Map;Lcom/flurry/sdk/b;)V

    .line 579
    sget-object v0, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/flurry/sdk/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/flurry/sdk/km;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    invoke-static {}, Lcom/flurry/sdk/i;->c()Lcom/flurry/sdk/g;

    move-result-object v0

    iget v2, p0, Lcom/flurry/sdk/c;->b:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/g;->a(Lcom/flurry/sdk/a;I)V

    .line 582
    :cond_2
    return-void

    :cond_3
    move-object v3, v1

    goto :goto_1
.end method

.method private static b()V
    .locals 2

    .prologue
    .line 460
    new-instance v0, Lcom/flurry/sdk/gx;

    invoke-direct {v0}, Lcom/flurry/sdk/gx;-><init>()V

    .line 461
    sget v1, Lcom/flurry/sdk/gx$a;->b:I

    iput v1, v0, Lcom/flurry/sdk/gx;->d:I

    .line 50114
    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ki;->a(Lcom/flurry/sdk/kg;)V

    .line 463
    return-void
.end method

.method private static b(Lcom/flurry/sdk/b;)V
    .locals 4

    .prologue
    .line 466
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Firing onClose, adObject="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50116
    iget-object v3, p0, Lcom/flurry/sdk/b;->d:Lcom/flurry/sdk/r;

    .line 466
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 468
    new-instance v0, Lcom/flurry/sdk/d;

    invoke-direct {v0}, Lcom/flurry/sdk/d;-><init>()V

    .line 50117
    iget-object v1, p0, Lcom/flurry/sdk/b;->d:Lcom/flurry/sdk/r;

    .line 469
    iput-object v1, v0, Lcom/flurry/sdk/d;->a:Lcom/flurry/sdk/r;

    .line 470
    sget-object v1, Lcom/flurry/sdk/d$a;->f:Lcom/flurry/sdk/d$a;

    iput-object v1, v0, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    .line 471
    invoke-virtual {v0}, Lcom/flurry/sdk/d;->b()V

    .line 473
    invoke-static {}, Lcom/flurry/sdk/h;->b()V

    .line 474
    return-void
.end method

.method private static b(Lcom/flurry/sdk/b;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/b;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 402
    const/4 v1, 0x1

    .line 403
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/a;

    .line 404
    sget-object v3, Lcom/flurry/sdk/ba;->f:Lcom/flurry/sdk/ba;

    .line 50111
    iget-object v0, v0, Lcom/flurry/sdk/a;->a:Lcom/flurry/sdk/ba;

    .line 404
    invoke-virtual {v3, v0}, Lcom/flurry/sdk/ba;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    const/4 v0, 0x0

    .line 409
    :goto_0
    if-eqz v0, :cond_1

    .line 410
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/h;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Firing onFetchFailed, adObject="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50112
    iget-object v3, p0, Lcom/flurry/sdk/b;->d:Lcom/flurry/sdk/r;

    .line 410
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 412
    new-instance v0, Lcom/flurry/sdk/d;

    invoke-direct {v0}, Lcom/flurry/sdk/d;-><init>()V

    .line 50113
    iget-object v1, p0, Lcom/flurry/sdk/b;->d:Lcom/flurry/sdk/r;

    .line 413
    iput-object v1, v0, Lcom/flurry/sdk/d;->a:Lcom/flurry/sdk/r;

    .line 414
    sget-object v1, Lcom/flurry/sdk/d$a;->b:Lcom/flurry/sdk/d$a;

    iput-object v1, v0, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    .line 415
    invoke-virtual {v0}, Lcom/flurry/sdk/d;->b()V

    .line 417
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private static c(Lcom/flurry/sdk/b;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/b;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 501
    .line 50118
    iget-object v0, p0, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/au;

    .line 501
    iget-object v2, p0, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bc;

    .line 50119
    iget-object v2, v2, Lcom/flurry/sdk/bc;->ag:Ljava/lang/String;

    .line 50120
    iget-object v3, p0, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/au;

    invoke-virtual {v3}, Lcom/flurry/sdk/au;->d()Lcom/flurry/sdk/cn;

    move-result-object v3

    .line 501
    iget-object v3, v3, Lcom/flurry/sdk/cn;->f:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/fs;->a(Lcom/flurry/sdk/au;Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/a;

    .line 504
    sget-object v3, Lcom/flurry/sdk/h;->d:Ljava/util/Set;

    .line 50121
    iget-object v0, v0, Lcom/flurry/sdk/a;->a:Lcom/flurry/sdk/ba;

    .line 504
    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    const/4 v0, 0x1

    .line 510
    :goto_0
    if-nez v0, :cond_1

    .line 511
    new-instance v0, Lcom/flurry/sdk/a;

    sget-object v2, Lcom/flurry/sdk/ba;->g:Lcom/flurry/sdk/ba;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v2, v3, p0}, Lcom/flurry/sdk/a;-><init>(Lcom/flurry/sdk/ba;Ljava/util/Map;Lcom/flurry/sdk/b;)V

    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 512
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    .line 50122
    iget-object v0, v0, Lcom/flurry/sdk/i;->i:Lcom/flurry/sdk/ab;

    .line 50123
    iget-object v0, p0, Lcom/flurry/sdk/b;->d:Lcom/flurry/sdk/r;

    .line 512
    invoke-static {v0}, Lcom/flurry/sdk/ab;->a(Lcom/flurry/sdk/r;)V

    .line 513
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    .line 50124
    iget-object v0, v0, Lcom/flurry/sdk/i;->i:Lcom/flurry/sdk/ab;

    .line 513
    invoke-virtual {v0}, Lcom/flurry/sdk/ab;->d()V

    .line 515
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method
