.class Lpl/jbzd/app/view/comments/CommentsActivity$2;
.super Ljava/lang/Object;
.source "CommentsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 94
    iput-object p1, p0, Lpl/jbzd/app/view/comments/CommentsActivity$2;->a:Lpl/jbzd/app/view/comments/CommentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lpl/jbzd/app/view/comments/CommentsActivity$2;->a:Lpl/jbzd/app/view/comments/CommentsActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/comments/CommentsActivity;->onBackPressed()V

    .line 98
    return-void
.end method
