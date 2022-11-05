.class public final Lpl/jbzd/app/a/b;
.super Ljava/lang/Object;
.source "MediaController.java"


# direct methods
.method public static a(Lio/realm/l;II)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/l;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lpl/jbzd/app/model/Media;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 26
    const-class v0, Lpl/jbzd/app/model/Media;

    invoke-virtual {p0, v0}, Lio/realm/l;->a(Ljava/lang/Class;)Lio/realm/v;

    move-result-object v0

    const-string v1, "in_queue"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/realm/v;->a(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/v;

    move-result-object v0

    const-string v1, "date"

    sget-object v2, Lio/realm/Sort;->DESCENDING:Lio/realm/Sort;

    invoke-virtual {v0, v1, v2}, Lio/realm/v;->a(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/w;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lio/realm/w;->size()I

    move-result v1

    .line 28
    add-int/lit8 v2, p1, -0x1

    mul-int/2addr v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 29
    if-le v1, v2, :cond_0

    mul-int v3, p1, p2

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lio/realm/w;->subList(II)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lio/realm/l;III)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/l;",
            "III)",
            "Ljava/util/List",
            "<",
            "Lpl/jbzd/app/model/Media;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    const-class v0, Lpl/jbzd/app/model/Media;

    invoke-virtual {p0, v0}, Lio/realm/l;->a(Ljava/lang/Class;)Lio/realm/v;

    move-result-object v0

    const-string v1, "user_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/realm/v;->a(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/v;

    move-result-object v0

    const-string v1, "date"

    sget-object v2, Lio/realm/Sort;->DESCENDING:Lio/realm/Sort;

    invoke-virtual {v0, v1, v2}, Lio/realm/v;->a(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/w;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lio/realm/w;->size()I

    move-result v1

    .line 36
    add-int/lit8 v2, p2, -0x1

    mul-int/2addr v2, p3

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 37
    if-le v1, v2, :cond_0

    mul-int v3, p2, p3

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lio/realm/w;->subList(II)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lio/realm/l;I)Lpl/jbzd/app/model/User;
    .locals 3

    .prologue
    .line 21
    const-class v0, Lpl/jbzd/app/model/User;

    invoke-virtual {p0, v0}, Lio/realm/l;->a(Ljava/lang/Class;)Lio/realm/v;

    move-result-object v0

    const-string v1, "id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/realm/v;->a(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/v;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/v;->c()Lio/realm/t;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/User;

    return-object v0
.end method

.method public static b(Lio/realm/l;II)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/l;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lpl/jbzd/app/model/Media;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    const-class v0, Lpl/jbzd/app/model/Media;

    invoke-virtual {p0, v0}, Lio/realm/l;->a(Ljava/lang/Class;)Lio/realm/v;

    move-result-object v0

    const-string v1, "in_queue"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/realm/v;->a(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/v;

    move-result-object v0

    const-string v1, "date"

    sget-object v2, Lio/realm/Sort;->DESCENDING:Lio/realm/Sort;

    invoke-virtual {v0, v1, v2}, Lio/realm/v;->a(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/w;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lio/realm/w;->size()I

    move-result v1

    .line 44
    add-int/lit8 v2, p1, -0x1

    mul-int/2addr v2, p2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 45
    if-le v1, v2, :cond_0

    mul-int v3, p1, p2

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lio/realm/w;->subList(II)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Lio/realm/l;II)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/l;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lpl/jbzd/app/model/Media;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    const-class v0, Lpl/jbzd/app/model/Media;

    invoke-virtual {p0, v0}, Lio/realm/l;->a(Ljava/lang/Class;)Lio/realm/v;

    move-result-object v0

    const-string v1, "is_favorite"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/realm/v;->a(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/v;

    move-result-object v0

    const-string v1, "date"

    sget-object v2, Lio/realm/Sort;->DESCENDING:Lio/realm/Sort;

    invoke-virtual {v0, v1, v2}, Lio/realm/v;->a(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/w;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lio/realm/w;->size()I

    move-result v1

    .line 52
    add-int/lit8 v2, p1, -0x1

    mul-int/2addr v2, p2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 53
    if-le v1, v2, :cond_0

    mul-int v3, p1, p2

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lio/realm/w;->subList(II)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Lio/realm/l;II)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/l;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lpl/jbzd/app/model/Media;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    const-class v0, Lpl/jbzd/app/model/Media;

    invoke-virtual {p0, v0}, Lio/realm/l;->a(Ljava/lang/Class;)Lio/realm/v;

    move-result-object v0

    const-string v1, "vote_score"

    sget-object v2, Lio/realm/Sort;->DESCENDING:Lio/realm/Sort;

    invoke-virtual {v0, v1, v2}, Lio/realm/v;->a(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/w;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lio/realm/w;->size()I

    move-result v1

    .line 60
    add-int/lit8 v2, p1, -0x1

    mul-int/2addr v2, p2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 61
    if-le v1, v2, :cond_0

    mul-int v3, p1, p2

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lio/realm/w;->subList(II)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Lio/realm/l;II)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/l;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lpl/jbzd/app/model/Media;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 66
    const-class v0, Lpl/jbzd/app/model/Media;

    invoke-virtual {p0, v0}, Lio/realm/l;->a(Ljava/lang/Class;)Lio/realm/v;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/v;->b()Lio/realm/w;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lio/realm/w;->size()I

    move-result v1

    .line 68
    add-int/lit8 v2, p1, -0x1

    mul-int/2addr v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 70
    if-le v1, v2, :cond_0

    .line 72
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 73
    invoke-virtual {v0, v3, v1}, Lio/realm/w;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 74
    invoke-static {v2}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 75
    add-int/lit8 v0, p1, -0x1

    mul-int/2addr v0, p2

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int v3, p1, p2

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-interface {v2, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 78
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
