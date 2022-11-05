.class Lcom/adcolony/sdk/ca$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adcolony/sdk/ca$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/ca$a;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ca$a;)V
    .locals 0

    .prologue
    .line 789
    iput-object p1, p0, Lcom/adcolony/sdk/ca$a$a;->a:Lcom/adcolony/sdk/ca$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 792
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$a;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->a:Lcom/adcolony/sdk/ca$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$a;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->b:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$a;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->d(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/cm;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 793
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->au()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$a;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    .line 794
    invoke-static {v0}, Lcom/adcolony/sdk/ca;->a(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/cn;

    move-result-object v0

    iget-object v0, v0, Lcom/adcolony/sdk/cn;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 795
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$a;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->a(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/cn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/cn;->e()V

    .line 802
    :cond_1
    :goto_0
    return-void

    .line 799
    :cond_2
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$a;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->b:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 800
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$a;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->b:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/adcolony/sdk/ca$a$a;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v1, v1, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    iget-object v2, p0, Lcom/adcolony/sdk/ca$a$a;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v2, v2, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    invoke-static {v2}, Lcom/adcolony/sdk/ca;->d(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/cm;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adcolony/sdk/ca;->a(Lcom/adcolony/sdk/ca;Lcom/adcolony/sdk/cm;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
