.class public Landroid/support/v7/media/g$g;
.super Ljava/lang/Object;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field a:Landroid/support/v7/media/a;

.field private final b:Landroid/support/v7/media/g$e;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Landroid/net/Uri;

.field private h:Z

.field private i:Z

.field private j:I

.field private k:Z

.field private final l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation
.end field

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Landroid/view/Display;

.field private t:I

.field private u:Landroid/os/Bundle;

.field private v:Landroid/content/IntentSender;


# direct methods
.method constructor <init>(Landroid/support/v7/media/g$e;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 944
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 807
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/g$g;->l:Ljava/util/ArrayList;

    .line 815
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/media/g$g;->t:I

    .line 945
    iput-object p1, p0, Landroid/support/v7/media/g$g;->b:Landroid/support/v7/media/g$e;

    .line 946
    iput-object p2, p0, Landroid/support/v7/media/g$g;->c:Ljava/lang/String;

    .line 947
    iput-object p3, p0, Landroid/support/v7/media/g$g;->d:Ljava/lang/String;

    .line 948
    return-void
.end method

.method static synthetic a(Landroid/support/v7/media/g$g;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Landroid/support/v7/media/g$g;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Landroid/support/v7/media/g$g;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Landroid/support/v7/media/g$g;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Landroid/support/v7/media/g$g;)Z
    .locals 1

    .prologue
    .line 796
    iget-boolean v0, p0, Landroid/support/v7/media/g$g;->h:Z

    return v0
.end method

.method private static d(Landroid/support/v7/media/g$g;)Z
    .locals 2

    .prologue
    .line 1298
    invoke-virtual {p0}, Landroid/support/v7/media/g$g;->x()Landroid/support/v7/media/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/media/c;->c()Landroid/support/v7/media/c$c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/media/c$c;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method a(Landroid/support/v7/media/a;)I
    .locals 2

    .prologue
    .line 1471
    const/4 v0, 0x0

    .line 1472
    iget-object v1, p0, Landroid/support/v7/media/g$g;->a:Landroid/support/v7/media/a;

    if-eq v1, p1, :cond_0

    .line 1473
    invoke-virtual {p0, p1}, Landroid/support/v7/media/g$g;->b(Landroid/support/v7/media/a;)I

    move-result v0

    .line 1475
    :cond_0
    return v0
.end method

.method public a(I)V
    .locals 3

    .prologue
    .line 1354
    invoke-static {}, Landroid/support/v7/media/g;->e()V

    .line 1355
    sget-object v0, Landroid/support/v7/media/g;->b:Landroid/support/v7/media/g$d;

    iget v1, p0, Landroid/support/v7/media/g$g;->r:I

    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/media/g$d;->a(Landroid/support/v7/media/g$g;I)V

    .line 1356
    return-void
.end method

.method public a(Landroid/support/v7/media/f;)Z
    .locals 2

    .prologue
    .line 1115
    if-nez p1, :cond_0

    .line 1116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "selector must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1118
    :cond_0
    invoke-static {}, Landroid/support/v7/media/g;->e()V

    .line 1119
    iget-object v0, p0, Landroid/support/v7/media/g$g;->l:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/support/v7/media/f;->a(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1141
    if-nez p1, :cond_0

    .line 1142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "category must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1144
    :cond_0
    invoke-static {}, Landroid/support/v7/media/g;->e()V

    .line 1146
    iget-object v0, p0, Landroid/support/v7/media/g$g;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 1147
    :goto_0
    if-ge v2, v3, :cond_2

    .line 1148
    iget-object v0, p0, Landroid/support/v7/media/g$g;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1149
    const/4 v0, 0x1

    .line 1152
    :goto_1
    return v0

    .line 1147
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1152
    goto :goto_1
.end method

.method b(Landroid/support/v7/media/a;)I
    .locals 3

    .prologue
    .line 1479
    const/4 v0, 0x0

    .line 1480
    iput-object p1, p0, Landroid/support/v7/media/g$g;->a:Landroid/support/v7/media/a;

    .line 1481
    if-eqz p1, :cond_10

    .line 1482
    iget-object v1, p0, Landroid/support/v7/media/g$g;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/support/v7/media/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v7/media/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1483
    invoke-virtual {p1}, Landroid/support/v7/media/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/g$g;->e:Ljava/lang/String;

    .line 1484
    const/4 v0, 0x1

    .line 1486
    :cond_0
    iget-object v1, p0, Landroid/support/v7/media/g$g;->f:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/support/v7/media/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v7/media/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1487
    invoke-virtual {p1}, Landroid/support/v7/media/a;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/media/g$g;->f:Ljava/lang/String;

    .line 1488
    or-int/lit8 v0, v0, 0x1

    .line 1490
    :cond_1
    iget-object v1, p0, Landroid/support/v7/media/g$g;->g:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/support/v7/media/a;->e()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v7/media/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1491
    invoke-virtual {p1}, Landroid/support/v7/media/a;->e()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/media/g$g;->g:Landroid/net/Uri;

    .line 1492
    or-int/lit8 v0, v0, 0x1

    .line 1494
    :cond_2
    iget-boolean v1, p0, Landroid/support/v7/media/g$g;->h:Z

    invoke-virtual {p1}, Landroid/support/v7/media/a;->f()Z

    move-result v2

    if-eq v1, v2, :cond_3

    .line 1495
    invoke-virtual {p1}, Landroid/support/v7/media/a;->f()Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/media/g$g;->h:Z

    .line 1496
    or-int/lit8 v0, v0, 0x1

    .line 1498
    :cond_3
    iget-boolean v1, p0, Landroid/support/v7/media/g$g;->i:Z

    invoke-virtual {p1}, Landroid/support/v7/media/a;->g()Z

    move-result v2

    if-eq v1, v2, :cond_4

    .line 1499
    invoke-virtual {p1}, Landroid/support/v7/media/a;->g()Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/media/g$g;->i:Z

    .line 1500
    or-int/lit8 v0, v0, 0x1

    .line 1502
    :cond_4
    iget v1, p0, Landroid/support/v7/media/g$g;->j:I

    invoke-virtual {p1}, Landroid/support/v7/media/a;->h()I

    move-result v2

    if-eq v1, v2, :cond_5

    .line 1503
    invoke-virtual {p1}, Landroid/support/v7/media/a;->h()I

    move-result v1

    iput v1, p0, Landroid/support/v7/media/g$g;->j:I

    .line 1504
    or-int/lit8 v0, v0, 0x1

    .line 1506
    :cond_5
    iget-object v1, p0, Landroid/support/v7/media/g$g;->l:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/support/v7/media/a;->k()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1507
    iget-object v1, p0, Landroid/support/v7/media/g$g;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1508
    iget-object v1, p0, Landroid/support/v7/media/g$g;->l:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/support/v7/media/a;->k()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1509
    or-int/lit8 v0, v0, 0x1

    .line 1511
    :cond_6
    iget v1, p0, Landroid/support/v7/media/g$g;->m:I

    invoke-virtual {p1}, Landroid/support/v7/media/a;->m()I

    move-result v2

    if-eq v1, v2, :cond_7

    .line 1512
    invoke-virtual {p1}, Landroid/support/v7/media/a;->m()I

    move-result v1

    iput v1, p0, Landroid/support/v7/media/g$g;->m:I

    .line 1513
    or-int/lit8 v0, v0, 0x1

    .line 1515
    :cond_7
    iget v1, p0, Landroid/support/v7/media/g$g;->n:I

    invoke-virtual {p1}, Landroid/support/v7/media/a;->n()I

    move-result v2

    if-eq v1, v2, :cond_8

    .line 1516
    invoke-virtual {p1}, Landroid/support/v7/media/a;->n()I

    move-result v1

    iput v1, p0, Landroid/support/v7/media/g$g;->n:I

    .line 1517
    or-int/lit8 v0, v0, 0x1

    .line 1519
    :cond_8
    iget v1, p0, Landroid/support/v7/media/g$g;->o:I

    invoke-virtual {p1}, Landroid/support/v7/media/a;->o()I

    move-result v2

    if-eq v1, v2, :cond_9

    .line 1520
    invoke-virtual {p1}, Landroid/support/v7/media/a;->o()I

    move-result v1

    iput v1, p0, Landroid/support/v7/media/g$g;->o:I

    .line 1521
    or-int/lit8 v0, v0, 0x1

    .line 1523
    :cond_9
    iget v1, p0, Landroid/support/v7/media/g$g;->p:I

    invoke-virtual {p1}, Landroid/support/v7/media/a;->r()I

    move-result v2

    if-eq v1, v2, :cond_a

    .line 1524
    invoke-virtual {p1}, Landroid/support/v7/media/a;->r()I

    move-result v1

    iput v1, p0, Landroid/support/v7/media/g$g;->p:I

    .line 1525
    or-int/lit8 v0, v0, 0x3

    .line 1527
    :cond_a
    iget v1, p0, Landroid/support/v7/media/g$g;->q:I

    invoke-virtual {p1}, Landroid/support/v7/media/a;->p()I

    move-result v2

    if-eq v1, v2, :cond_b

    .line 1528
    invoke-virtual {p1}, Landroid/support/v7/media/a;->p()I

    move-result v1

    iput v1, p0, Landroid/support/v7/media/g$g;->q:I

    .line 1529
    or-int/lit8 v0, v0, 0x3

    .line 1531
    :cond_b
    iget v1, p0, Landroid/support/v7/media/g$g;->r:I

    invoke-virtual {p1}, Landroid/support/v7/media/a;->q()I

    move-result v2

    if-eq v1, v2, :cond_c

    .line 1532
    invoke-virtual {p1}, Landroid/support/v7/media/a;->q()I

    move-result v1

    iput v1, p0, Landroid/support/v7/media/g$g;->r:I

    .line 1533
    or-int/lit8 v0, v0, 0x3

    .line 1535
    :cond_c
    iget v1, p0, Landroid/support/v7/media/g$g;->t:I

    invoke-virtual {p1}, Landroid/support/v7/media/a;->s()I

    move-result v2

    if-eq v1, v2, :cond_d

    .line 1536
    invoke-virtual {p1}, Landroid/support/v7/media/a;->s()I

    move-result v1

    iput v1, p0, Landroid/support/v7/media/g$g;->t:I

    .line 1537
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/media/g$g;->s:Landroid/view/Display;

    .line 1538
    or-int/lit8 v0, v0, 0x5

    .line 1540
    :cond_d
    iget-object v1, p0, Landroid/support/v7/media/g$g;->u:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/support/v7/media/a;->t()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v7/media/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 1541
    invoke-virtual {p1}, Landroid/support/v7/media/a;->t()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/media/g$g;->u:Landroid/os/Bundle;

    .line 1542
    or-int/lit8 v0, v0, 0x1

    .line 1544
    :cond_e
    iget-object v1, p0, Landroid/support/v7/media/g$g;->v:Landroid/content/IntentSender;

    invoke-virtual {p1}, Landroid/support/v7/media/a;->j()Landroid/content/IntentSender;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v7/media/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 1545
    invoke-virtual {p1}, Landroid/support/v7/media/a;->j()Landroid/content/IntentSender;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/media/g$g;->v:Landroid/content/IntentSender;

    .line 1546
    or-int/lit8 v0, v0, 0x1

    .line 1548
    :cond_f
    iget-boolean v1, p0, Landroid/support/v7/media/g$g;->k:Z

    invoke-virtual {p1}, Landroid/support/v7/media/a;->i()Z

    move-result v2

    if-eq v1, v2, :cond_10

    .line 1549
    invoke-virtual {p1}, Landroid/support/v7/media/a;->i()Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/media/g$g;->k:Z

    .line 1550
    or-int/lit8 v0, v0, 0x5

    .line 1553
    :cond_10
    return v0
.end method

.method public b()Landroid/support/v7/media/g$e;
    .locals 1

    .prologue
    .line 954
    iget-object v0, p0, Landroid/support/v7/media/g$g;->b:Landroid/support/v7/media/g$e;

    return-object v0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 1368
    invoke-static {}, Landroid/support/v7/media/g;->e()V

    .line 1369
    if-eqz p1, :cond_0

    .line 1370
    sget-object v0, Landroid/support/v7/media/g;->b:Landroid/support/v7/media/g$d;

    invoke-virtual {v0, p0, p1}, Landroid/support/v7/media/g$d;->b(Landroid/support/v7/media/g$g;I)V

    .line 1372
    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 969
    iget-object v0, p0, Landroid/support/v7/media/g$g;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 983
    iget-object v0, p0, Landroid/support/v7/media/g$g;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 997
    iget-object v0, p0, Landroid/support/v7/media/g$g;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1009
    iget-object v0, p0, Landroid/support/v7/media/g$g;->g:Landroid/net/Uri;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 1018
    iget-boolean v0, p0, Landroid/support/v7/media/g$g;->h:Z

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 1028
    iget-boolean v0, p0, Landroid/support/v7/media/g$g;->i:Z

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 1039
    iget v0, p0, Landroid/support/v7/media/g$g;->j:I

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 1050
    invoke-static {}, Landroid/support/v7/media/g;->e()V

    .line 1051
    sget-object v0, Landroid/support/v7/media/g;->b:Landroid/support/v7/media/g$d;

    invoke-virtual {v0}, Landroid/support/v7/media/g$d;->d()Landroid/support/v7/media/g$g;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 1062
    invoke-static {}, Landroid/support/v7/media/g;->e()V

    .line 1063
    sget-object v0, Landroid/support/v7/media/g;->b:Landroid/support/v7/media/g$d;

    invoke-virtual {v0}, Landroid/support/v7/media/g$d;->c()Landroid/support/v7/media/g$g;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 1259
    iget v0, p0, Landroid/support/v7/media/g$g;->m:I

    return v0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 1268
    iget v0, p0, Landroid/support/v7/media/g$g;->n:I

    return v0
.end method

.method public n()I
    .locals 1

    .prologue
    .line 1278
    iget v0, p0, Landroid/support/v7/media/g$g;->o:I

    return v0
.end method

.method public o()Z
    .locals 3
    .annotation build Landroid/support/annotation/RestrictTo;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1287
    invoke-virtual {p0}, Landroid/support/v7/media/g$g;->k()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Landroid/support/v7/media/g$g;->o:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 1294
    :cond_0
    :goto_0
    return v0

    .line 1292
    :cond_1
    invoke-static {p0}, Landroid/support/v7/media/g$g;->d(Landroid/support/v7/media/g$g;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "android.media.intent.category.LIVE_AUDIO"

    .line 1293
    invoke-virtual {p0, v1}, Landroid/support/v7/media/g$g;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "android.media.intent.category.LIVE_VIDEO"

    .line 1294
    invoke-virtual {p0, v1}, Landroid/support/v7/media/g$g;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()I
    .locals 1

    .prologue
    .line 1310
    iget v0, p0, Landroid/support/v7/media/g$g;->p:I

    return v0
.end method

.method public q()I
    .locals 1

    .prologue
    .line 1320
    iget v0, p0, Landroid/support/v7/media/g$g;->q:I

    return v0
.end method

.method public r()I
    .locals 1

    .prologue
    .line 1330
    iget v0, p0, Landroid/support/v7/media/g$g;->r:I

    return v0
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 1341
    iget-boolean v0, p0, Landroid/support/v7/media/g$g;->k:Z

    return v0
.end method

.method public t()I
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
    .end annotation

    .prologue
    .line 1418
    iget v0, p0, Landroid/support/v7/media/g$g;->t:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaRouter.RouteInfo{ uniqueId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/media/g$g;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/media/g$g;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/media/g$g;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", iconUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/media/g$g;->g:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/media/g$g;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", connecting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/media/g$g;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", connectionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/media/g$g;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", canDisconnect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/media/g$g;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playbackType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/media/g$g;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playbackStream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/media/g$g;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/media/g$g;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", volumeHandling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/media/g$g;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", volume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/media/g$g;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", volumeMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/media/g$g;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", presentationDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/media/g$g;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/media/g$g;->u:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", settingsIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/media/g$g;->v:Landroid/content/IntentSender;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", providerPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/media/g$g;->b:Landroid/support/v7/media/g$e;

    .line 1466
    invoke-virtual {v1}, Landroid/support/v7/media/g$e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1427
    iget-object v0, p0, Landroid/support/v7/media/g$g;->u:Landroid/os/Bundle;

    return-object v0
.end method

.method public v()V
    .locals 1

    .prologue
    .line 1443
    invoke-static {}, Landroid/support/v7/media/g;->e()V

    .line 1444
    sget-object v0, Landroid/support/v7/media/g;->b:Landroid/support/v7/media/g$d;

    invoke-virtual {v0, p0}, Landroid/support/v7/media/g$d;->a(Landroid/support/v7/media/g$g;)V

    .line 1445
    return-void
.end method

.method w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1557
    iget-object v0, p0, Landroid/support/v7/media/g$g;->c:Ljava/lang/String;

    return-object v0
.end method

.method public x()Landroid/support/v7/media/c;
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
    .end annotation

    .prologue
    .line 1563
    iget-object v0, p0, Landroid/support/v7/media/g$g;->b:Landroid/support/v7/media/g$e;

    invoke-virtual {v0}, Landroid/support/v7/media/g$e;->a()Landroid/support/v7/media/c;

    move-result-object v0

    return-object v0
.end method
