.class Lcom/adcolony/sdk/ca$a$c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ca$a$c;->a(Lcom/adcolony/sdk/bk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/bk;

.field final synthetic b:Lcom/adcolony/sdk/ca$a$c;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ca$a$c;Lcom/adcolony/sdk/bk;)V
    .locals 0

    .prologue
    .line 735
    iput-object p1, p0, Lcom/adcolony/sdk/ca$a$c$2;->b:Lcom/adcolony/sdk/ca$a$c;

    iput-object p2, p0, Lcom/adcolony/sdk/ca$a$c$2;->a:Lcom/adcolony/sdk/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 738
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$c$2;->b:Lcom/adcolony/sdk/ca$a$c;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a$c;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->g(Lcom/adcolony/sdk/ca;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleCloseView() called"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 739
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$c$2;->b:Lcom/adcolony/sdk/ca$a$c;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a$c;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->d(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/cm;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 740
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$c$2;->b:Lcom/adcolony/sdk/ca$a$c;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a$c;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->d(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/cm;

    move-result-object v0

    iget-object v0, v0, Lcom/adcolony/sdk/cm;->a:Lcom/adcolony/sdk/cm$a;

    sget-object v1, Lcom/adcolony/sdk/cm$a;->m:Lcom/adcolony/sdk/cm$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$c$2;->b:Lcom/adcolony/sdk/ca$a$c;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a$c;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    .line 741
    invoke-static {v0}, Lcom/adcolony/sdk/ca;->d(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/cm;

    move-result-object v0

    iget-object v0, v0, Lcom/adcolony/sdk/cm;->a:Lcom/adcolony/sdk/cm$a;

    sget-object v1, Lcom/adcolony/sdk/cm$a;->l:Lcom/adcolony/sdk/cm$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$c$2;->b:Lcom/adcolony/sdk/ca$a$c;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a$c;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    .line 742
    invoke-static {v0}, Lcom/adcolony/sdk/ca;->d(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/cm;

    move-result-object v0

    iget-object v0, v0, Lcom/adcolony/sdk/cm;->a:Lcom/adcolony/sdk/cm$a;

    sget-object v1, Lcom/adcolony/sdk/cm$a;->o:Lcom/adcolony/sdk/cm$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$c$2;->b:Lcom/adcolony/sdk/ca$a$c;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a$c;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    .line 743
    invoke-static {v0}, Lcom/adcolony/sdk/ca;->d(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/cm;

    move-result-object v0

    iget-object v0, v0, Lcom/adcolony/sdk/cm;->a:Lcom/adcolony/sdk/cm$a;

    sget-object v1, Lcom/adcolony/sdk/cm$a;->n:Lcom/adcolony/sdk/cm$a;

    if-ne v0, v1, :cond_5

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$c$2;->b:Lcom/adcolony/sdk/ca$a$c;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a$c;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->d(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/cm;

    move-result-object v0

    iget-object v0, v0, Lcom/adcolony/sdk/cm;->a:Lcom/adcolony/sdk/cm$a;

    sget-object v1, Lcom/adcolony/sdk/cm$a;->m:Lcom/adcolony/sdk/cm$a;

    if-ne v0, v1, :cond_2

    .line 747
    sget-object v0, Lcom/adcolony/sdk/cm;->l:Landroid/view/animation/TranslateAnimation;

    .line 755
    :goto_0
    iget-object v1, p0, Lcom/adcolony/sdk/ca$a$c$2;->b:Lcom/adcolony/sdk/ca$a$c;

    iget-object v1, v1, Lcom/adcolony/sdk/ca$a$c;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v1, v1, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    invoke-static {v1}, Lcom/adcolony/sdk/ca;->d(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/cm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/cm;->h()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 756
    new-instance v1, Lcom/adcolony/sdk/ca$a$c$2$1;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/ca$a$c$2$1;-><init>(Lcom/adcolony/sdk/ca$a$c$2;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 770
    iget-object v1, p0, Lcom/adcolony/sdk/ca$a$c$2;->b:Lcom/adcolony/sdk/ca$a$c;

    iget-object v1, v1, Lcom/adcolony/sdk/ca$a$c;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v1, v1, Lcom/adcolony/sdk/ca$a;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 776
    :cond_1
    :goto_1
    return-void

    .line 748
    :cond_2
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$c$2;->b:Lcom/adcolony/sdk/ca$a$c;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a$c;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->d(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/cm;

    move-result-object v0

    iget-object v0, v0, Lcom/adcolony/sdk/cm;->a:Lcom/adcolony/sdk/cm$a;

    sget-object v1, Lcom/adcolony/sdk/cm$a;->l:Lcom/adcolony/sdk/cm$a;

    if-ne v0, v1, :cond_3

    .line 749
    sget-object v0, Lcom/adcolony/sdk/cm;->k:Landroid/view/animation/TranslateAnimation;

    goto :goto_0

    .line 750
    :cond_3
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$c$2;->b:Lcom/adcolony/sdk/ca$a$c;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a$c;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->d(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/cm;

    move-result-object v0

    iget-object v0, v0, Lcom/adcolony/sdk/cm;->a:Lcom/adcolony/sdk/cm$a;

    sget-object v1, Lcom/adcolony/sdk/cm$a;->o:Lcom/adcolony/sdk/cm$a;

    if-ne v0, v1, :cond_4

    .line 751
    sget-object v0, Lcom/adcolony/sdk/cm;->m:Landroid/view/animation/TranslateAnimation;

    goto :goto_0

    .line 753
    :cond_4
    sget-object v0, Lcom/adcolony/sdk/cm;->n:Landroid/view/animation/TranslateAnimation;

    goto :goto_0

    .line 773
    :cond_5
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$c$2;->b:Lcom/adcolony/sdk/ca$a$c;

    iget-object v1, p0, Lcom/adcolony/sdk/ca$a$c$2;->a:Lcom/adcolony/sdk/bk;

    invoke-static {v0, v1}, Lcom/adcolony/sdk/ca$a$c;->a(Lcom/adcolony/sdk/ca$a$c;Lcom/adcolony/sdk/bk;)V

    goto :goto_1
.end method
