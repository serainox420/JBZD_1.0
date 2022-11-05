.class Lpl/jbzd/app/view/feed/FeedFragment$9;
.super Ljava/lang/Object;
.source "FeedFragment.java"

# interfaces
.implements Lpl/jbzd/app/view/feed/FeedAdapter$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/view/feed/FeedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/view/feed/FeedFragment;


# direct methods
.method constructor <init>(Lpl/jbzd/app/view/feed/FeedFragment;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lpl/jbzd/app/view/feed/FeedFragment$9;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$9;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->c()Lpl/jbzd/app/view/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lpl/jbzd/app/view/BaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$9;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->c()Lpl/jbzd/app/view/BaseActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 332
    :cond_0
    return-void
.end method
