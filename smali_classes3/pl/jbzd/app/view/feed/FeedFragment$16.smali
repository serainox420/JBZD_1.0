.class Lpl/jbzd/app/view/feed/FeedFragment$16;
.super Ljava/lang/Object;
.source "FeedFragment.java"

# interfaces
.implements Lio/realm/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/view/feed/FeedFragment;->a(Lio/realm/l;Ljava/util/List;ZIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lpl/jbzd/app/view/feed/FeedFragment;


# direct methods
.method constructor <init>(Lpl/jbzd/app/view/feed/FeedFragment;Ljava/util/List;II)V
    .locals 0

    .prologue
    .line 1047
    iput-object p1, p0, Lpl/jbzd/app/view/feed/FeedFragment$16;->d:Lpl/jbzd/app/view/feed/FeedFragment;

    iput-object p2, p0, Lpl/jbzd/app/view/feed/FeedFragment$16;->a:Ljava/util/List;

    iput p3, p0, Lpl/jbzd/app/view/feed/FeedFragment$16;->b:I

    iput p4, p0, Lpl/jbzd/app/view/feed/FeedFragment$16;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/realm/l;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x1

    .line 1050
    const-class v0, Lpl/jbzd/app/model/Media;

    invoke-virtual {p1, v0}, Lio/realm/l;->a(Ljava/lang/Class;)Lio/realm/v;

    move-result-object v3

    .line 1051
    const-string v1, "id"

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$16;->a:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Media;

    invoke-virtual {v0}, Lpl/jbzd/app/model/Media;->realmGet$id()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lio/realm/v;->a(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/v;

    move v1, v2

    .line 1053
    :goto_0
    iget v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$16;->b:I

    if-ge v1, v0, :cond_0

    .line 1054
    invoke-virtual {v3}, Lio/realm/v;->a()Lio/realm/v;

    move-result-object v4

    const-string v5, "id"

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$16;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Media;

    invoke-virtual {v0}, Lpl/jbzd/app/model/Media;->realmGet$id()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lio/realm/v;->a(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/v;

    .line 1053
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1057
    :cond_0
    invoke-virtual {v3}, Lio/realm/v;->b()Lio/realm/w;

    move-result-object v3

    .line 1059
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$16;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Media;

    .line 1061
    iget v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$16;->c:I

    if-ne v1, v2, :cond_5

    invoke-virtual {v0, v2}, Lpl/jbzd/app/model/Media;->realmSet$in_queue(Z)V

    .line 1064
    :cond_2
    :goto_2
    invoke-virtual {v3}, Lio/realm/w;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/jbzd/app/model/Media;

    .line 1065
    invoke-virtual {v1}, Lpl/jbzd/app/model/Media;->realmGet$id()I

    move-result v6

    invoke-virtual {v0}, Lpl/jbzd/app/model/Media;->realmGet$id()I

    move-result v7

    if-ne v6, v7, :cond_3

    .line 1067
    invoke-virtual {v1}, Lpl/jbzd/app/model/Media;->realmGet$voted()I

    move-result v5

    if-lez v5, :cond_4

    invoke-virtual {v0}, Lpl/jbzd/app/model/Media;->realmGet$vote_score()I

    move-result v5

    if-lez v5, :cond_4

    .line 1068
    invoke-virtual {v0, v2}, Lpl/jbzd/app/model/Media;->realmSet$voted(I)V

    .line 1071
    :cond_4
    invoke-virtual {v1}, Lpl/jbzd/app/model/Media;->realmGet$is_favorite()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1072
    invoke-virtual {v0, v2}, Lpl/jbzd/app/model/Media;->realmSet$is_favorite(Z)V

    goto :goto_1

    .line 1062
    :cond_5
    iget v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$16;->c:I

    const/4 v5, -0x1

    if-ne v1, v5, :cond_2

    invoke-virtual {v0, v8}, Lpl/jbzd/app/model/Media;->realmSet$in_queue(Z)V

    goto :goto_2

    .line 1080
    :cond_6
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$16;->a:Ljava/util/List;

    invoke-virtual {p1, v0}, Lio/realm/l;->a(Ljava/lang/Iterable;)Ljava/util/List;

    .line 1081
    return-void
.end method
