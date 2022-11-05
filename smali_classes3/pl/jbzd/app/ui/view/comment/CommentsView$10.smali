.class Lpl/jbzd/app/ui/view/comment/CommentsView$10;
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
    .line 324
    iput-object p1, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$10;->a:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lpl/jbzd/app/model/Comment;Lpl/jbzd/app/model/Comment;)I
    .locals 2

    .prologue
    .line 327
    invoke-virtual {p2}, Lpl/jbzd/app/model/Comment;->realmGet$created_at()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1}, Lpl/jbzd/app/model/Comment;->realmGet$created_at()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 324
    check-cast p1, Lpl/jbzd/app/model/Comment;

    check-cast p2, Lpl/jbzd/app/model/Comment;

    invoke-virtual {p0, p1, p2}, Lpl/jbzd/app/ui/view/comment/CommentsView$10;->a(Lpl/jbzd/app/model/Comment;Lpl/jbzd/app/model/Comment;)I

    move-result v0

    return v0
.end method
