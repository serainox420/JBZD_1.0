.class Lcom/smartadserver/android/library/ui/SASAdView$2;
.super Ljava/lang/Object;
.source "SASAdView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/SASAdView;->f(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:I

.field final synthetic c:Landroid/widget/ImageView;

.field final synthetic d:Lcom/smartadserver/android/library/ui/SASAdView;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/SASAdView;ILandroid/widget/ImageView;)V
    .locals 1

    .prologue
    .line 2098
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdView$2;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    iput p2, p0, Lcom/smartadserver/android/library/ui/SASAdView$2;->b:I

    iput-object p3, p0, Lcom/smartadserver/android/library/ui/SASAdView$2;->c:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2099
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$2;->a:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2102
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$2;->a:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$2;->b:I

    .line 2103
    :goto_0
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView$2;->d:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v1}, Lcom/smartadserver/android/library/ui/SASAdView;->r(Lcom/smartadserver/android/library/ui/SASAdView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    .line 2104
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$2;->a:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$2;->a:Z

    .line 2105
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView$2;->c:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$2;->a:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/smartadserver/android/library/f/a;->B:Landroid/graphics/Bitmap;

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2106
    return-void

    .line 2102
    :cond_0
    iget v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$2;->b:I

    neg-int v0, v0

    goto :goto_0

    .line 2104
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 2105
    :cond_2
    sget-object v0, Lcom/smartadserver/android/library/f/a;->A:Landroid/graphics/Bitmap;

    goto :goto_2
.end method
