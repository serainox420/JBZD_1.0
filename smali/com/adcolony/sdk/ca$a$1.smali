.class Lcom/adcolony/sdk/ca$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ca$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/ca$a;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ca$a;)V
    .locals 0

    .prologue
    .line 473
    iput-object p1, p0, Lcom/adcolony/sdk/ca$a$1;->a:Lcom/adcolony/sdk/ca$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 476
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$1;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->b:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$1;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->b:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$1;->a:Lcom/adcolony/sdk/ca$a;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ca$a;->d()V

    .line 480
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$1;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->c(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/by;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/ca$a$1;->a:Lcom/adcolony/sdk/ca$a;

    invoke-static {v1}, Lcom/adcolony/sdk/ca$a;->a(Lcom/adcolony/sdk/ca$a;)Lcom/adcolony/sdk/ca$a$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/by;->b(Lcom/adcolony/sdk/bv;)V

    .line 481
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$1;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->c(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/by;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/ca$a$1;->a:Lcom/adcolony/sdk/ca$a;

    invoke-static {v1}, Lcom/adcolony/sdk/ca$a;->b(Lcom/adcolony/sdk/ca$a;)Lcom/adcolony/sdk/ca$a$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/by;->b(Lcom/adcolony/sdk/bv;)V

    .line 482
    return-void
.end method
