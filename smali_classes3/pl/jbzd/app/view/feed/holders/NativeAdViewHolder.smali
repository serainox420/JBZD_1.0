.class public Lpl/jbzd/app/view/feed/holders/NativeAdViewHolder;
.super Lpl/jbzd/core/ui/view/a;
.source "NativeAdViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpl/jbzd/core/ui/view/a",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field public layout:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lpl/jbzd/core/ui/view/a;-><init>(Landroid/view/View;)V

    .line 22
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 28
    return-void
.end method
