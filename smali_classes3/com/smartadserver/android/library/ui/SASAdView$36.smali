.class Lcom/smartadserver/android/library/ui/SASAdView$36;
.super Ljava/lang/Object;
.source "SASAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/SASAdView;->a()V
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
    .line 1810
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdView$36;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1813
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$36;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->c(Lcom/smartadserver/android/library/ui/SASAdView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1815
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$36;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->l(Lcom/smartadserver/android/library/ui/SASAdView;)V

    .line 1816
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$36;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->m(Lcom/smartadserver/android/library/ui/SASAdView;)V

    .line 1819
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$36;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->j(Lcom/smartadserver/android/library/ui/SASAdView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1820
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$36;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView$36;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/ui/SASAdView;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASAdView$36;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->k(Lcom/smartadserver/android/library/ui/SASAdView;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->setY(F)V

    .line 1821
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$36;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    new-instance v1, Lcom/smartadserver/android/library/ui/SASAdView$36$1;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/ui/SASAdView$36$1;-><init>(Lcom/smartadserver/android/library/ui/SASAdView$36;)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->post(Ljava/lang/Runnable;)Z

    .line 1829
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$36;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->h(Lcom/smartadserver/android/library/ui/SASAdView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1830
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$36;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->b(Lcom/smartadserver/android/library/ui/SASAdView;Z)Z

    .line 1831
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$36;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Lcom/smartadserver/android/library/ui/SASAdView;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    .line 1833
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$36;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->o(Lcom/smartadserver/android/library/ui/SASAdView;)V

    .line 1839
    :cond_1
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$36;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->h:Lcom/smartadserver/android/library/controller/a;

    iget-object v0, v0, Lcom/smartadserver/android/library/controller/a;->c:Lcom/smartadserver/android/library/controller/mraid/f;

    if-eqz v0, :cond_2

    .line 1841
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$36;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->h:Lcom/smartadserver/android/library/controller/a;

    iget-object v0, v0, Lcom/smartadserver/android/library/controller/a;->c:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->b()V

    .line 1845
    :cond_2
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$36;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    new-instance v1, Lcom/smartadserver/android/library/ui/SASAdView$36$2;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/ui/SASAdView$36$2;-><init>(Lcom/smartadserver/android/library/ui/SASAdView$36;)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->post(Ljava/lang/Runnable;)Z

    .line 1851
    return-void
.end method
