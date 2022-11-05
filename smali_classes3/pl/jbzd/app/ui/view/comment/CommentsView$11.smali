.class Lpl/jbzd/app/ui/view/comment/CommentsView$11;
.super Ljava/lang/Object;
.source "CommentsView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/ui/view/comment/CommentsView;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lpl/jbzd/app/model/Comment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/ui/view/comment/CommentsView;


# direct methods
.method constructor <init>(Lpl/jbzd/app/ui/view/comment/CommentsView;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$11;->a:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lpl/jbzd/app/model/Comment;Lpl/jbzd/app/model/Comment;)I
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 337
    invoke-virtual {p1}, Lpl/jbzd/app/model/Comment;->realmGet$plus()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 338
    invoke-virtual {p1}, Lpl/jbzd/app/model/Comment;->realmGet$minus()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 339
    invoke-virtual {p2}, Lpl/jbzd/app/model/Comment;->realmGet$plus()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 340
    invoke-virtual {p2}, Lpl/jbzd/app/model/Comment;->realmGet$minus()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 341
    sub-int v3, v2, v3

    .line 342
    sub-int v5, v4, v5

    .line 344
    if-ne v3, v5, :cond_3

    .line 346
    if-le v2, v4, :cond_1

    .line 356
    :cond_0
    :goto_0
    return v0

    .line 349
    :cond_1
    if-ge v2, v4, :cond_2

    move v0, v1

    .line 350
    goto :goto_0

    .line 353
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 356
    :cond_3
    if-gt v3, v5, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 333
    check-cast p1, Lpl/jbzd/app/model/Comment;

    check-cast p2, Lpl/jbzd/app/model/Comment;

    invoke-virtual {p0, p1, p2}, Lpl/jbzd/app/ui/view/comment/CommentsView$11;->a(Lpl/jbzd/app/model/Comment;Lpl/jbzd/app/model/Comment;)I

    move-result v0

    return v0
.end method
