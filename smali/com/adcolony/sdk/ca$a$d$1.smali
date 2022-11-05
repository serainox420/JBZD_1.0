.class Lcom/adcolony/sdk/ca$a$d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ca$a$d;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/ca$a$d;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ca$a$d;)V
    .locals 0

    .prologue
    .line 663
    iput-object p1, p0, Lcom/adcolony/sdk/ca$a$d$1;->a:Lcom/adcolony/sdk/ca$a$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 666
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$d$1;->a:Lcom/adcolony/sdk/ca$a$d;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a$d;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->a(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/cn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/cn;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$d$1;->a:Lcom/adcolony/sdk/ca$a$d;

    invoke-static {v0}, Lcom/adcolony/sdk/ca$a$d;->a(Lcom/adcolony/sdk/ca$a$d;)Lcom/adcolony/sdk/cm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/cm;->w()V

    .line 668
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$d$1;->a:Lcom/adcolony/sdk/ca$a$d;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a$d;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->a(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/cn;

    move-result-object v0

    sget-object v1, Lcom/adcolony/sdk/cm$a;->i:Lcom/adcolony/sdk/cm$a;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/cn;->a(Lcom/adcolony/sdk/cm$a;)V

    .line 670
    :cond_0
    return-void
.end method
