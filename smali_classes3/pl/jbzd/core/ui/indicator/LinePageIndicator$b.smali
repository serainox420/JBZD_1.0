.class Lpl/jbzd/core/ui/indicator/LinePageIndicator$b;
.super Ljava/lang/Object;
.source "LinePageIndicator.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/jbzd/core/ui/indicator/LinePageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/core/ui/indicator/LinePageIndicator;


# direct methods
.method private constructor <init>(Lpl/jbzd/core/ui/indicator/LinePageIndicator;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator$b;->a:Lpl/jbzd/core/ui/indicator/LinePageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lpl/jbzd/core/ui/indicator/LinePageIndicator;Lpl/jbzd/core/ui/indicator/LinePageIndicator$1;)V
    .locals 0

    .prologue
    .line 330
    invoke-direct {p0, p1}, Lpl/jbzd/core/ui/indicator/LinePageIndicator$b;-><init>(Lpl/jbzd/core/ui/indicator/LinePageIndicator;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .prologue
    .line 349
    if-nez p1, :cond_0

    .line 350
    iget-object v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator$b;->a:Lpl/jbzd/core/ui/indicator/LinePageIndicator;

    iget-object v1, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator$b;->a:Lpl/jbzd/core/ui/indicator/LinePageIndicator;

    invoke-static {v1}, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->a(Lpl/jbzd/core/ui/indicator/LinePageIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->a(Lpl/jbzd/core/ui/indicator/LinePageIndicator;II)V

    .line 353
    :cond_0
    iget-object v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator$b;->a:Lpl/jbzd/core/ui/indicator/LinePageIndicator;

    iget-object v0, v0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->a:Landroid/support/v4/view/ViewPager$e;

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator$b;->a:Lpl/jbzd/core/ui/indicator/LinePageIndicator;

    iget-object v0, v0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->a:Landroid/support/v4/view/ViewPager$e;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$e;->a(I)V

    .line 356
    :cond_1
    return-void
.end method

.method public a(IFI)V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator$b;->a:Lpl/jbzd/core/ui/indicator/LinePageIndicator;

    invoke-static {v0, p1}, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->a(Lpl/jbzd/core/ui/indicator/LinePageIndicator;I)I

    .line 336
    iget-object v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator$b;->a:Lpl/jbzd/core/ui/indicator/LinePageIndicator;

    invoke-static {v0, p2}, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->a(Lpl/jbzd/core/ui/indicator/LinePageIndicator;F)F

    .line 338
    iget-object v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator$b;->a:Lpl/jbzd/core/ui/indicator/LinePageIndicator;

    iget-object v1, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator$b;->a:Lpl/jbzd/core/ui/indicator/LinePageIndicator;

    invoke-static {v1}, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->c(Lpl/jbzd/core/ui/indicator/LinePageIndicator;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    invoke-static {v0, p1, v1}, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->a(Lpl/jbzd/core/ui/indicator/LinePageIndicator;II)V

    .line 340
    iget-object v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator$b;->a:Lpl/jbzd/core/ui/indicator/LinePageIndicator;

    invoke-virtual {v0}, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->invalidate()V

    .line 342
    iget-object v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator$b;->a:Lpl/jbzd/core/ui/indicator/LinePageIndicator;

    iget-object v0, v0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->a:Landroid/support/v4/view/ViewPager$e;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator$b;->a:Lpl/jbzd/core/ui/indicator/LinePageIndicator;

    iget-object v0, v0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->a:Landroid/support/v4/view/ViewPager$e;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$e;->a(IFI)V

    .line 345
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator$b;->a:Lpl/jbzd/core/ui/indicator/LinePageIndicator;

    iget-object v0, v0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->a:Landroid/support/v4/view/ViewPager$e;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator$b;->a:Lpl/jbzd/core/ui/indicator/LinePageIndicator;

    iget-object v0, v0, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->a:Landroid/support/v4/view/ViewPager$e;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$e;->b(I)V

    .line 363
    :cond_0
    return-void
.end method
