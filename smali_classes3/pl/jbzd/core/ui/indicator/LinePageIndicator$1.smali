.class Lpl/jbzd/core/ui/indicator/LinePageIndicator$1;
.super Ljava/lang/Object;
.source "LinePageIndicator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/core/ui/indicator/LinePageIndicator;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/core/ui/indicator/LinePageIndicator;


# direct methods
.method constructor <init>(Lpl/jbzd/core/ui/indicator/LinePageIndicator;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator$1;->a:Lpl/jbzd/core/ui/indicator/LinePageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 205
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 206
    iget-object v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator$1;->a:Lpl/jbzd/core/ui/indicator/LinePageIndicator;

    invoke-virtual {v0}, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 211
    :goto_0
    iget-object v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator$1;->a:Lpl/jbzd/core/ui/indicator/LinePageIndicator;

    iget-object v1, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator$1;->a:Lpl/jbzd/core/ui/indicator/LinePageIndicator;

    invoke-static {v1}, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->a(Lpl/jbzd/core/ui/indicator/LinePageIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-static {v0, v1}, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->a(Lpl/jbzd/core/ui/indicator/LinePageIndicator;I)I

    .line 212
    iget-object v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator$1;->a:Lpl/jbzd/core/ui/indicator/LinePageIndicator;

    iget-object v1, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator$1;->a:Lpl/jbzd/core/ui/indicator/LinePageIndicator;

    invoke-static {v1}, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->b(Lpl/jbzd/core/ui/indicator/LinePageIndicator;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->a(Lpl/jbzd/core/ui/indicator/LinePageIndicator;II)V

    .line 213
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lpl/jbzd/core/ui/indicator/LinePageIndicator$1;->a:Lpl/jbzd/core/ui/indicator/LinePageIndicator;

    invoke-virtual {v0}, Lpl/jbzd/core/ui/indicator/LinePageIndicator;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
