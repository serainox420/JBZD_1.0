.class Lpl/jbzd/app/view/feed/FeedFragment$4;
.super Ljava/lang/Object;
.source "FeedFragment.java"

# interfaces
.implements Lio/realm/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/view/feed/FeedFragment;->a(Lio/realm/l;Ljava/util/List;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:I

.field final synthetic c:Lpl/jbzd/app/view/feed/FeedFragment;


# direct methods
.method constructor <init>(Lpl/jbzd/app/view/feed/FeedFragment;Ljava/util/List;I)V
    .locals 0

    .prologue
    .line 1110
    iput-object p1, p0, Lpl/jbzd/app/view/feed/FeedFragment$4;->c:Lpl/jbzd/app/view/feed/FeedFragment;

    iput-object p2, p0, Lpl/jbzd/app/view/feed/FeedFragment$4;->a:Ljava/util/List;

    iput p3, p0, Lpl/jbzd/app/view/feed/FeedFragment$4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/realm/l;)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 1114
    const-class v0, Lpl/jbzd/app/model/Comment;

    invoke-virtual {p1, v0}, Lio/realm/l;->a(Ljava/lang/Class;)Lio/realm/v;

    move-result-object v3

    .line 1115
    const-string v1, "id"

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$4;->a:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Comment;

    invoke-virtual {v0}, Lpl/jbzd/app/model/Comment;->realmGet$id()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lio/realm/v;->a(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/v;

    move v1, v2

    .line 1117
    :goto_0
    iget v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$4;->b:I

    if-ge v1, v0, :cond_0

    .line 1118
    invoke-virtual {v3}, Lio/realm/v;->a()Lio/realm/v;

    move-result-object v4

    const-string v5, "id"

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$4;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Comment;

    invoke-virtual {v0}, Lpl/jbzd/app/model/Comment;->realmGet$id()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lio/realm/v;->a(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/v;

    .line 1117
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1121
    :cond_0
    invoke-virtual {v3}, Lio/realm/v;->b()Lio/realm/w;

    move-result-object v3

    .line 1123
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$4;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Comment;

    .line 1125
    invoke-virtual {v3}, Lio/realm/w;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/jbzd/app/model/Comment;

    .line 1127
    invoke-virtual {v0}, Lpl/jbzd/app/model/Comment;->realmGet$id()I

    move-result v6

    invoke-virtual {v1}, Lpl/jbzd/app/model/Comment;->realmGet$id()I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 1129
    invoke-virtual {v1}, Lpl/jbzd/app/model/Comment;->realmGet$media_id()I

    move-result v5

    invoke-virtual {v0, v5}, Lpl/jbzd/app/model/Comment;->realmSet$media_id(I)V

    .line 1131
    invoke-virtual {v1}, Lpl/jbzd/app/model/Comment;->realmGet$voted()I

    move-result v5

    if-lez v5, :cond_3

    invoke-virtual {v0}, Lpl/jbzd/app/model/Comment;->realmGet$plus()I

    move-result v5

    if-lez v5, :cond_3

    .line 1132
    invoke-virtual {v0, v2}, Lpl/jbzd/app/model/Comment;->realmSet$voted(I)V

    goto :goto_1

    .line 1134
    :cond_3
    invoke-virtual {v1}, Lpl/jbzd/app/model/Comment;->realmGet$voted()I

    move-result v1

    if-gez v1, :cond_1

    invoke-virtual {v0}, Lpl/jbzd/app/model/Comment;->realmGet$minus()I

    move-result v1

    if-lez v1, :cond_1

    .line 1135
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lpl/jbzd/app/model/Comment;->realmSet$voted(I)V

    goto :goto_1

    .line 1143
    :cond_4
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$4;->a:Ljava/util/List;

    invoke-virtual {p1, v0}, Lio/realm/l;->a(Ljava/lang/Iterable;)Ljava/util/List;

    .line 1144
    return-void
.end method
