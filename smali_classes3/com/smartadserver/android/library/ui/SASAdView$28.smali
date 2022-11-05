.class Lcom/smartadserver/android/library/ui/SASAdView$28;
.super Ljava/lang/Object;
.source "SASAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/SASAdView;->a(Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View$OnClickListener;

.field final synthetic b:Lcom/smartadserver/android/library/ui/SASAdView;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/SASAdView;Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 3315
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdView$28;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iput-object p2, p0, Lcom/smartadserver/android/library/ui/SASAdView$28;->a:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 3317
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$28;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->n:Lcom/smartadserver/android/library/model/SASAdElement;

    if-eqz v0, :cond_0

    .line 3318
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$28;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->o:Lcom/smartadserver/android/library/ui/SASCloseButton;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView$28;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v1, v1, Lcom/smartadserver/android/library/ui/SASAdView;->n:Lcom/smartadserver/android/library/model/SASAdElement;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/model/SASAdElement;->getCloseButtonPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASCloseButton;->setCloseButtonPosition(I)V

    .line 3320
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$28;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getCloseButtonAppearanceDelay()I

    move-result v0

    .line 3321
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView$28;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v1, v1, Lcom/smartadserver/android/library/ui/SASAdView;->o:Lcom/smartadserver/android/library/ui/SASCloseButton;

    invoke-virtual {v1, v2, v2}, Lcom/smartadserver/android/library/ui/SASCloseButton;->a(II)V

    .line 3322
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView$28;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v1, v1, Lcom/smartadserver/android/library/ui/SASAdView;->o:Lcom/smartadserver/android/library/ui/SASCloseButton;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/smartadserver/android/library/ui/SASAdView$28;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v3}, Lcom/smartadserver/android/library/ui/SASAdView;->t()Z

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/smartadserver/android/library/ui/SASCloseButton;->a(IIZ)V

    .line 3324
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$28;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/d;

    if-eqz v0, :cond_1

    .line 3325
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$28;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/d;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView$28;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/d;->setCloseButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3328
    :cond_1
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$28;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->o:Lcom/smartadserver/android/library/ui/SASCloseButton;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView$28;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASCloseButton;->setCloseButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3329
    return-void
.end method
