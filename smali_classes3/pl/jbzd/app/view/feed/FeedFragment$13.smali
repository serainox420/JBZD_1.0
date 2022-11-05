.class Lpl/jbzd/app/view/feed/FeedFragment$13;
.super Ljava/lang/Object;
.source "FeedFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/view/feed/FeedFragment;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lpl/jbzd/app/view/feed/FeedFragment;


# direct methods
.method constructor <init>(Lpl/jbzd/app/view/feed/FeedFragment;I)V
    .locals 0

    .prologue
    .line 426
    iput-object p1, p0, Lpl/jbzd/app/view/feed/FeedFragment$13;->b:Lpl/jbzd/app/view/feed/FeedFragment;

    iput p2, p0, Lpl/jbzd/app/view/feed/FeedFragment$13;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$13;->b:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->f(Lpl/jbzd/app/view/feed/FeedFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$13;->b:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->g(Lpl/jbzd/app/view/feed/FeedFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$13;->b:Lpl/jbzd/app/view/feed/FeedFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Lpl/jbzd/app/view/feed/FeedFragment;Z)Z

    .line 433
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$13;->b:Lpl/jbzd/app/view/feed/FeedFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Z)V

    .line 436
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$13;->b:Lpl/jbzd/app/view/feed/FeedFragment;

    iget v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$13;->a:I

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/feed/FeedFragment;->a(I)V

    .line 437
    return-void
.end method
