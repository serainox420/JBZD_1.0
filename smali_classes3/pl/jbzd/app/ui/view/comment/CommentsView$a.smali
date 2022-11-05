.class public Lpl/jbzd/app/ui/view/comment/CommentsView$a;
.super Landroid/support/v7/widget/RecyclerView$g;
.source "CommentsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/jbzd/app/ui/view/comment/CommentsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 879
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$g;-><init>()V

    .line 880
    iput p1, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$a;->a:I

    .line 881
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$r;)V
    .locals 1

    .prologue
    .line 887
    iget v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$a;->a:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 888
    return-void
.end method
