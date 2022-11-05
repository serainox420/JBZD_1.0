.class Lpl/jbzd/app/view/comments/CommentsActivity$1;
.super Ljava/lang/Object;
.source "CommentsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/view/comments/CommentsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/view/comments/CommentsActivity;


# direct methods
.method constructor <init>(Lpl/jbzd/app/view/comments/CommentsActivity;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lpl/jbzd/app/view/comments/CommentsActivity$1;->a:Lpl/jbzd/app/view/comments/CommentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 89
    iget-object v0, p0, Lpl/jbzd/app/view/comments/CommentsActivity$1;->a:Lpl/jbzd/app/view/comments/CommentsActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/comments/CommentsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->b(Z)V

    .line 90
    iget-object v0, p0, Lpl/jbzd/app/view/comments/CommentsActivity$1;->a:Lpl/jbzd/app/view/comments/CommentsActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/comments/CommentsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->a(Z)V

    .line 91
    return-void
.end method
