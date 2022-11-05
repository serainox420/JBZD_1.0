.class Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemViewHolder;
.super Lpl/jbzd/core/b;
.source "MenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/jbzd/app/view/menu/MenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MenuItemViewHolder"
.end annotation


# instance fields
.field item:Lpl/jbzd/core/ui/view/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lpl/jbzd/core/b;-><init>(Landroid/view/View;)V

    .line 55
    return-void
.end method
