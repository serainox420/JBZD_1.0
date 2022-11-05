.class Lpl/jbzd/core/ui/indicator/LinePageIndicator$2;
.super Ljava/lang/Object;
.source "LinePageIndicator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/core/ui/indicator/LinePageIndicator;->a(ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lpl/jbzd/core/ui/indicator/LinePageIndicator;


# direct methods
.method constructor <init>(Lpl/jbzd/core/ui/indicator/LinePageIndicator;I)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator$2;->b:Lpl/jbzd/core/ui/indicator/LinePageIndicator;

    iput p2, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator$2;->b:Lpl/jbzd/core/ui/indicator/LinePageIndicator;

    invoke-static {v0}, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->a(Lpl/jbzd/core/ui/indicator/LinePageIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget v1, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator$2;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 244
    return-void
.end method
