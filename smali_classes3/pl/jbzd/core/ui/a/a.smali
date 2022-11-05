.class public Lpl/jbzd/core/ui/a/a;
.super Landroid/support/v7/widget/RecyclerView$g;
.source "VerticalSpaceItemDecoration.java"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$g;-><init>()V

    .line 16
    iput p1, p0, Lpl/jbzd/core/ui/a/a;->a:I

    .line 17
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$r;)V
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lpl/jbzd/core/ui/a/a;->a:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 23
    return-void
.end method
