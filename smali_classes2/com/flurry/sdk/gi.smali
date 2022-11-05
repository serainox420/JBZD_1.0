.class public final Lcom/flurry/sdk/gi;
.super Lcom/flurry/sdk/gm;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/gz$a;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/sdk/gm;-><init>(Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/gz$a;)V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/sdk/gi;->e:I

    .line 21
    iget-object v0, p0, Lcom/flurry/sdk/gi;->a:Lcom/flurry/sdk/gu;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/flurry/sdk/gu;

    invoke-direct {v0, p1}, Lcom/flurry/sdk/gu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/gi;->a:Lcom/flurry/sdk/gu;

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/gi;->a:Lcom/flurry/sdk/gu;

    if-eqz v0, :cond_1

    .line 25
    iget-object v0, p0, Lcom/flurry/sdk/gi;->a:Lcom/flurry/sdk/gu;

    .line 1071
    iput-object p0, v0, Lcom/flurry/sdk/gu;->a:Lcom/flurry/sdk/gu$a;

    .line 27
    :cond_1
    invoke-interface {p2}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    .line 2078
    iget-object v0, v0, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 3058
    iget-object v0, v0, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 27
    iget-boolean v0, v0, Lcom/flurry/sdk/cs;->t:Z

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gi;->setAutoPlay(Z)V

    .line 28
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;FF)V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0, p1, p2, p3}, Lcom/flurry/sdk/gm;->a(Ljava/lang/String;FF)V

    .line 49
    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_0

    .line 50
    iget v0, p0, Lcom/flurry/sdk/gi;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/sdk/gi;->e:I

    .line 52
    :cond_0
    return-void
.end method

.method protected final getViewParams()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/flurry/sdk/gi;->e:I

    if-nez v0, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/flurry/sdk/gi;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->f()Lcom/flurry/sdk/gp;

    move-result-object v0

    .line 3118
    iget v0, v0, Lcom/flurry/sdk/gp;->j:I

    .line 34
    iput v0, p0, Lcom/flurry/sdk/gi;->e:I

    .line 36
    :cond_0
    iget v0, p0, Lcom/flurry/sdk/gi;->e:I

    return v0
.end method

.method public final initLayout()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 56
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 59
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 60
    iget-object v1, p0, Lcom/flurry/sdk/gi;->a:Lcom/flurry/sdk/gu;

    .line 3288
    iget-object v1, v1, Lcom/flurry/sdk/gu;->d:Landroid/widget/RelativeLayout;

    .line 60
    invoke-virtual {p0, v1, v0}, Lcom/flurry/sdk/gi;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    invoke-virtual {p0}, Lcom/flurry/sdk/gi;->showProgressDialog()V

    .line 62
    return-void
.end method

.method public final setAutoPlay(Z)V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    invoke-super {p0, v0}, Lcom/flurry/sdk/gm;->setAutoPlay(Z)V

    .line 42
    return-void
.end method
