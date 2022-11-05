.class Lpl/jbzd/app/ui/view/comment/CommentsView$7;
.super Ljava/lang/Object;
.source "CommentsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/ui/view/comment/CommentsView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/ui/view/comment/CommentsView;


# direct methods
.method constructor <init>(Lpl/jbzd/app/ui/view/comment/CommentsView;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$7;->a:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 182
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lpl/jbzd/core/a/a;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a00c1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 188
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$7;->a:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/comment/CommentsView;->c(Lpl/jbzd/app/ui/view/comment/CommentsView;)Lcom/mobsandgeeks/saripaar/Validator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobsandgeeks/saripaar/Validator;->validate()V

    goto :goto_0
.end method
