.class Lpl/jbzd/app/view/feed/FeedFragment$14$2;
.super Ljava/lang/Object;
.source "FeedFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/view/feed/FeedFragment$14;->a(Landroid/view/View;Lpl/jbzd/app/view/feed/holders/d;Lpl/jbzd/app/model/Media;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/view/feed/FeedFragment$14;


# direct methods
.method constructor <init>(Lpl/jbzd/app/view/feed/FeedFragment$14;)V
    .locals 0

    .prologue
    .line 627
    iput-object p1, p0, Lpl/jbzd/app/view/feed/FeedFragment$14$2;->a:Lpl/jbzd/app/view/feed/FeedFragment$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 631
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$14$2;->a:Lpl/jbzd/app/view/feed/FeedFragment$14;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->d(Lpl/jbzd/app/view/feed/FeedFragment;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$14$2;->a:Lpl/jbzd/app/view/feed/FeedFragment$14;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->d(Lpl/jbzd/app/view/feed/FeedFragment;)I

    move-result v0

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$14$2;->a:Lpl/jbzd/app/view/feed/FeedFragment$14;

    iget-object v1, v1, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v1}, Lpl/jbzd/app/view/feed/FeedFragment;->c(Lpl/jbzd/app/view/feed/FeedFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 633
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$14$2;->a:Lpl/jbzd/app/view/feed/FeedFragment$14;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->c(Lpl/jbzd/app/view/feed/FeedFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$14$2;->a:Lpl/jbzd/app/view/feed/FeedFragment$14;

    iget-object v1, v1, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v1}, Lpl/jbzd/app/view/feed/FeedFragment;->d(Lpl/jbzd/app/view/feed/FeedFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lpl/jbzd/app/view/feed/a/c;

    if-eqz v0, :cond_1

    .line 634
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$14$2;->a:Lpl/jbzd/app/view/feed/FeedFragment$14;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->c(Lpl/jbzd/app/view/feed/FeedFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$14$2;->a:Lpl/jbzd/app/view/feed/FeedFragment$14;

    iget-object v1, v1, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v1}, Lpl/jbzd/app/view/feed/FeedFragment;->d(Lpl/jbzd/app/view/feed/FeedFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/feed/a/c;

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/a/c;->d()V

    .line 640
    :goto_0
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$14$2;->a:Lpl/jbzd/app/view/feed/FeedFragment$14;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Lpl/jbzd/app/view/feed/FeedFragment;I)I

    .line 642
    :cond_0
    return-void

    .line 637
    :cond_1
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$14$2;->a:Lpl/jbzd/app/view/feed/FeedFragment$14;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->c(Lpl/jbzd/app/view/feed/FeedFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$14$2;->a:Lpl/jbzd/app/view/feed/FeedFragment$14;

    iget-object v1, v1, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v1}, Lpl/jbzd/app/view/feed/FeedFragment;->d(Lpl/jbzd/app/view/feed/FeedFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/feed/a/a;

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/a/a;->c()V

    goto :goto_0
.end method
