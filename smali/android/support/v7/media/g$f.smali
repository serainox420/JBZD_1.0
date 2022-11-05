.class public Landroid/support/v7/media/g$f;
.super Landroid/support/v7/media/g$g;
.source "MediaRouter.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/media/g$g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v7/media/g$e;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1576
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/media/g$g;-><init>(Landroid/support/v7/media/g$e;Ljava/lang/String;Ljava/lang/String;)V

    .line 1573
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/g$f;->b:Ljava/util/List;

    .line 1577
    return-void
.end method


# virtual methods
.method a(Landroid/support/v7/media/a;)I
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1620
    .line 1621
    iget-object v0, p0, Landroid/support/v7/media/g$f;->a:Landroid/support/v7/media/a;

    if-eq v0, p1, :cond_5

    .line 1622
    iput-object p1, p0, Landroid/support/v7/media/g$f;->a:Landroid/support/v7/media/a;

    .line 1623
    if-eqz p1, :cond_5

    .line 1624
    invoke-virtual {p1}, Landroid/support/v7/media/a;->b()Ljava/util/List;

    move-result-object v3

    .line 1625
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1626
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    iget-object v5, p0, Landroid/support/v7/media/g$f;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eq v0, v5, :cond_0

    move v0, v1

    .line 1627
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1628
    sget-object v6, Landroid/support/v7/media/g;->b:Landroid/support/v7/media/g$d;

    invoke-virtual {p0}, Landroid/support/v7/media/g$f;->b()Landroid/support/v7/media/g$e;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/support/v7/media/g$d;->a(Landroid/support/v7/media/g$d;Landroid/support/v7/media/g$e;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1629
    sget-object v6, Landroid/support/v7/media/g;->b:Landroid/support/v7/media/g$d;

    invoke-virtual {v6, v0}, Landroid/support/v7/media/g$d;->a(Ljava/lang/String;)Landroid/support/v7/media/g$g;

    move-result-object v0

    .line 1630
    if-eqz v0, :cond_4

    .line 1631
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1632
    if-nez v3, :cond_4

    iget-object v6, p0, Landroid/support/v7/media/g$f;->b:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_2
    move v3, v0

    .line 1636
    goto :goto_1

    :cond_0
    move v0, v2

    .line 1626
    goto :goto_0

    .line 1637
    :cond_1
    if-eqz v3, :cond_2

    .line 1638
    iput-object v4, p0, Landroid/support/v7/media/g$f;->b:Ljava/util/List;

    .line 1642
    :cond_2
    :goto_3
    if-eqz v3, :cond_3

    :goto_4
    invoke-super {p0, p1}, Landroid/support/v7/media/g$g;->b(Landroid/support/v7/media/a;)I

    move-result v0

    or-int/2addr v0, v1

    return v0

    :cond_3
    move v1, v2

    goto :goto_4

    :cond_4
    move v0, v3

    goto :goto_2

    :cond_5
    move v3, v2

    goto :goto_3
.end method

.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/media/g$g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1602
    iget-object v0, p0, Landroid/support/v7/media/g$f;->b:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1607
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-super {p0}, Landroid/support/v7/media/g$g;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1608
    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1609
    iget-object v0, p0, Landroid/support/v7/media/g$f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 1610
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 1611
    if-lez v0, :cond_0

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1612
    :cond_0
    iget-object v3, p0, Landroid/support/v7/media/g$f;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1610
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1614
    :cond_1
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1615
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
