.class public Lpl/jbzd/app/ui/view/comment/CommentsAdapter$EmptyViewHolder;
.super Lpl/jbzd/core/b;
.source "CommentsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/jbzd/app/ui/view/comment/CommentsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmptyViewHolder"
.end annotation


# instance fields
.field txt:Lpl/jbzd/core/ui/view/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lpl/jbzd/core/b;-><init>(Landroid/view/View;)V

    .line 131
    return-void
.end method
