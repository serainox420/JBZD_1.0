.class Lpl/jbzd/app/view/feed/FeedFragment$2;
.super Ljava/lang/Object;
.source "FeedFragment.java"

# interfaces
.implements Lio/realm/l$a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/view/feed/FeedFragment;->a(Lio/realm/l;Ljava/util/List;ZIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Z

.field final synthetic e:Lpl/jbzd/app/view/feed/FeedFragment;


# direct methods
.method constructor <init>(Lpl/jbzd/app/view/feed/FeedFragment;ZZLjava/util/List;Z)V
    .locals 0

    .prologue
    .line 1082
    iput-object p1, p0, Lpl/jbzd/app/view/feed/FeedFragment$2;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    iput-boolean p2, p0, Lpl/jbzd/app/view/feed/FeedFragment$2;->a:Z

    iput-boolean p3, p0, Lpl/jbzd/app/view/feed/FeedFragment$2;->b:Z

    iput-object p4, p0, Lpl/jbzd/app/view/feed/FeedFragment$2;->c:Ljava/util/List;

    iput-boolean p5, p0, Lpl/jbzd/app/view/feed/FeedFragment$2;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 1085
    iget-boolean v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$2;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$2;->b:Z

    if-eqz v0, :cond_0

    .line 1086
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$2;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$2;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v1}, Lpl/jbzd/app/view/feed/FeedFragment;->n(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/view/feed/FeedAdapter$c;

    move-result-object v1

    iget-object v2, p0, Lpl/jbzd/app/view/feed/FeedFragment$2;->c:Ljava/util/List;

    invoke-static {v1, v2}, Lpl/jbzd/app/view/feed/a/a;->a(Lpl/jbzd/app/view/feed/FeedAdapter$c;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lpl/jbzd/app/view/feed/FeedFragment;->b(Lpl/jbzd/app/view/feed/FeedFragment;Ljava/util/List;)V

    .line 1091
    :goto_0
    return-void

    .line 1089
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$2;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$2;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v1}, Lpl/jbzd/app/view/feed/FeedFragment;->n(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/view/feed/FeedAdapter$c;

    move-result-object v1

    iget-object v2, p0, Lpl/jbzd/app/view/feed/FeedFragment$2;->c:Ljava/util/List;

    invoke-static {v1, v2}, Lpl/jbzd/app/view/feed/a/a;->a(Lpl/jbzd/app/view/feed/FeedAdapter$c;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iget-boolean v2, p0, Lpl/jbzd/app/view/feed/FeedFragment$2;->a:Z

    iget-boolean v3, p0, Lpl/jbzd/app/view/feed/FeedFragment$2;->d:Z

    invoke-static {v0, v1, v2, v3}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Lpl/jbzd/app/view/feed/FeedFragment;Ljava/util/List;ZZ)V

    goto :goto_0
.end method
