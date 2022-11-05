.class Lpl/jbzd/app/view/feed/FeedFragment$6;
.super Ljava/lang/Object;
.source "FeedFragment.java"

# interfaces
.implements Lio/realm/l$a$a;


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

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Lpl/jbzd/app/view/feed/FeedFragment;


# direct methods
.method constructor <init>(Lpl/jbzd/app/view/feed/FeedFragment;Ljava/util/List;ZZ)V
    .locals 0

    .prologue
    .line 1150
    iput-object p1, p0, Lpl/jbzd/app/view/feed/FeedFragment$6;->d:Lpl/jbzd/app/view/feed/FeedFragment;

    iput-object p2, p0, Lpl/jbzd/app/view/feed/FeedFragment$6;->a:Ljava/util/List;

    iput-boolean p3, p0, Lpl/jbzd/app/view/feed/FeedFragment$6;->b:Z

    iput-boolean p4, p0, Lpl/jbzd/app/view/feed/FeedFragment$6;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 1153
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$6;->d:Lpl/jbzd/app/view/feed/FeedFragment;

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$6;->d:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v1}, Lpl/jbzd/app/view/feed/FeedFragment;->n(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/view/feed/FeedAdapter$c;

    move-result-object v1

    iget-object v2, p0, Lpl/jbzd/app/view/feed/FeedFragment$6;->a:Ljava/util/List;

    invoke-static {v1, v2}, Lpl/jbzd/app/view/feed/a/a;->a(Lpl/jbzd/app/view/feed/FeedAdapter$c;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iget-boolean v2, p0, Lpl/jbzd/app/view/feed/FeedFragment$6;->b:Z

    iget-boolean v3, p0, Lpl/jbzd/app/view/feed/FeedFragment$6;->c:Z

    invoke-static {v0, v1, v2, v3}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Lpl/jbzd/app/view/feed/FeedFragment;Ljava/util/List;ZZ)V

    .line 1154
    return-void
.end method
