.class Lcom/adcolony/sdk/bg$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bg;->W()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/bg;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bg;)V
    .locals 0

    .prologue
    .line 1568
    iput-object p1, p0, Lcom/adcolony/sdk/bg$18;->a:Lcom/adcolony/sdk/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 1572
    iget-object v0, p0, Lcom/adcolony/sdk/bg$18;->a:Lcom/adcolony/sdk/bg;

    iget-object v0, v0, Lcom/adcolony/sdk/bg;->p:Lcom/adcolony/sdk/ci;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ci;->b()V

    .line 1573
    iget-object v0, p0, Lcom/adcolony/sdk/bg$18;->a:Lcom/adcolony/sdk/bg;

    iget-object v0, v0, Lcom/adcolony/sdk/bg;->p:Lcom/adcolony/sdk/ci;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ci;->a()V

    .line 1574
    iget-object v0, p0, Lcom/adcolony/sdk/bg$18;->a:Lcom/adcolony/sdk/bg;

    iget-object v0, v0, Lcom/adcolony/sdk/bg;->n:Lcom/adcolony/sdk/ck;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ck;->c()V

    .line 1575
    iget-object v0, p0, Lcom/adcolony/sdk/bg$18;->a:Lcom/adcolony/sdk/bg;

    iget-object v0, v0, Lcom/adcolony/sdk/bg;->o:Lcom/adcolony/sdk/cf;

    invoke-virtual {v0}, Lcom/adcolony/sdk/cf;->c()V

    .line 1576
    return-void
.end method
