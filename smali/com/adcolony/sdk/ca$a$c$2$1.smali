.class Lcom/adcolony/sdk/ca$a$c$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ca$a$c$2;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/ca$a$c$2;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ca$a$c$2;)V
    .locals 0

    .prologue
    .line 756
    iput-object p1, p0, Lcom/adcolony/sdk/ca$a$c$2$1;->a:Lcom/adcolony/sdk/ca$a$c$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 763
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$c$2$1;->a:Lcom/adcolony/sdk/ca$a$c$2;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a$c$2;->b:Lcom/adcolony/sdk/ca$a$c;

    iget-object v1, p0, Lcom/adcolony/sdk/ca$a$c$2$1;->a:Lcom/adcolony/sdk/ca$a$c$2;

    iget-object v1, v1, Lcom/adcolony/sdk/ca$a$c$2;->a:Lcom/adcolony/sdk/bk;

    invoke-static {v0, v1}, Lcom/adcolony/sdk/ca$a$c;->a(Lcom/adcolony/sdk/ca$a$c;Lcom/adcolony/sdk/bk;)V

    .line 764
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 768
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 759
    return-void
.end method
