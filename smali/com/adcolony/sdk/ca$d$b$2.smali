.class Lcom/adcolony/sdk/ca$d$b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ca$d$b;->a(Lcom/adcolony/sdk/bk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/bk;

.field final synthetic b:Lcom/adcolony/sdk/ca$d$b;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ca$d$b;Lcom/adcolony/sdk/bk;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/adcolony/sdk/ca$d$b$2;->b:Lcom/adcolony/sdk/ca$d$b;

    iput-object p2, p0, Lcom/adcolony/sdk/ca$d$b$2;->a:Lcom/adcolony/sdk/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$b$2;->b:Lcom/adcolony/sdk/ca$d$b;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d$b;->a:Lcom/adcolony/sdk/ca$d;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ca$d;->c()V

    .line 384
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$b$2;->a:Lcom/adcolony/sdk/bk;

    sget-object v1, Lcom/adcolony/sdk/bn$a;->a:Lcom/adcolony/sdk/bn$a;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bk;->a(Lcom/adcolony/sdk/bn$a;)V

    .line 385
    return-void
.end method
