.class public final Lpl/jbzd/app/a/a;
.super Ljava/lang/Object;
.source "CommentController.java"


# direct methods
.method public static a(Lio/realm/l;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/l;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lpl/jbzd/app/model/Comment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    const-class v0, Lpl/jbzd/app/model/Comment;

    invoke-virtual {p0, v0}, Lio/realm/l;->a(Ljava/lang/Class;)Lio/realm/v;

    move-result-object v0

    const-string v1, "user.id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/realm/v;->a(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/v;

    move-result-object v0

    const-string v1, "created_at"

    sget-object v2, Lio/realm/Sort;->ASCENDING:Lio/realm/Sort;

    invoke-virtual {v0, v1, v2}, Lio/realm/v;->a(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/w;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lio/realm/w;->size()I

    move-result v1

    .line 20
    if-lez v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lio/realm/w;->subList(II)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Lio/realm/l;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/l;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lpl/jbzd/app/model/Comment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    const-class v0, Lpl/jbzd/app/model/Comment;

    invoke-virtual {p0, v0}, Lio/realm/l;->a(Ljava/lang/Class;)Lio/realm/v;

    move-result-object v0

    const-string v1, "media_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/realm/v;->a(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/v;

    move-result-object v0

    const-string v1, "created_at"

    sget-object v2, Lio/realm/Sort;->DESCENDING:Lio/realm/Sort;

    invoke-virtual {v0, v1, v2}, Lio/realm/v;->a(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/w;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lio/realm/w;->size()I

    move-result v1

    .line 27
    if-lez v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lio/realm/w;->subList(II)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
