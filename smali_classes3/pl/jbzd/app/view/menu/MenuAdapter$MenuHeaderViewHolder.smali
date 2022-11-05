.class Lpl/jbzd/app/view/menu/MenuAdapter$MenuHeaderViewHolder;
.super Lpl/jbzd/core/b;
.source "MenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/jbzd/app/view/menu/MenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MenuHeaderViewHolder"
.end annotation


# instance fields
.field avatar:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field avatarUrl:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field btnSettings:Lpl/jbzd/core/ui/view/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field btnSignIn:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field username:Lpl/jbzd/core/ui/view/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lpl/jbzd/core/b;-><init>(Landroid/view/View;)V

    .line 73
    return-void
.end method
