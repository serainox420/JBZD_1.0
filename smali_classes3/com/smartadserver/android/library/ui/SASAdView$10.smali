.class Lcom/smartadserver/android/library/ui/SASAdView$10;
.super Ljava/lang/Object;
.source "SASAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/SASAdView;->B()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/SASAdView;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/SASAdView;)V
    .locals 0

    .prologue
    .line 2393
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdView$10;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2396
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2397
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$10;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->v(Lcom/smartadserver/android/library/ui/SASAdView;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView$10;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v1}, Lcom/smartadserver/android/library/ui/SASAdView;->x(Lcom/smartadserver/android/library/ui/SASAdView;)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2401
    :goto_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$10;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->v(Lcom/smartadserver/android/library/ui/SASAdView;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 2402
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$10;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->w(Lcom/smartadserver/android/library/ui/SASAdView;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "preview removed. Please reload this placement"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2403
    return-void

    .line 2399
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$10;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->v(Lcom/smartadserver/android/library/ui/SASAdView;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView$10;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v1}, Lcom/smartadserver/android/library/ui/SASAdView;->x(Lcom/smartadserver/android/library/ui/SASAdView;)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
