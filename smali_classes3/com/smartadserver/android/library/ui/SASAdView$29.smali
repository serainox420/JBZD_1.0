.class Lcom/smartadserver/android/library/ui/SASAdView$29;
.super Ljava/lang/Object;
.source "SASAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/SASAdView;->b(Landroid/view/View$OnClickListener;)V
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
    .line 3338
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdView$29;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iput-object p2, p0, Lcom/smartadserver/android/library/ui/SASAdView$29;->a:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v2, 0x32

    .line 3340
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$29;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->n:Lcom/smartadserver/android/library/model/SASAdElement;

    if-eqz v0, :cond_0

    .line 3341
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$29;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->o:Lcom/smartadserver/android/library/ui/SASCloseButton;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView$29;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v1, v1, Lcom/smartadserver/android/library/ui/SASAdView;->n:Lcom/smartadserver/android/library/model/SASAdElement;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/model/SASAdElement;->getCloseButtonPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASCloseButton;->setCloseButtonPosition(I)V

    .line 3343
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$29;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->o:Lcom/smartadserver/android/library/ui/SASCloseButton;

    invoke-virtual {v0, v2, v2}, Lcom/smartadserver/android/library/ui/SASCloseButton;->a(II)V

    .line 3344
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$29;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->o:Lcom/smartadserver/android/library/ui/SASCloseButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASCloseButton;->setCloseButtonVisibility(I)V

    .line 3345
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$29;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/d;

    if-eqz v0, :cond_1

    .line 3346
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$29;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/d;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView$29;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/d;->setCloseButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3348
    :cond_1
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$29;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->o:Lcom/smartadserver/android/library/ui/SASCloseButton;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView$29;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASCloseButton;->setCloseButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3349
    return-void
.end method
