.class Lcom/adcolony/sdk/bg$33;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bg;->a(Lcom/adcolony/sdk/bw;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/bw;

.field final synthetic b:Lcom/adcolony/sdk/bg;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bg;Lcom/adcolony/sdk/bw;)V
    .locals 0

    .prologue
    .line 582
    iput-object p1, p0, Lcom/adcolony/sdk/bg$33;->b:Lcom/adcolony/sdk/bg;

    iput-object p2, p0, Lcom/adcolony/sdk/bg$33;->a:Lcom/adcolony/sdk/bw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 584
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->m:Lcom/adcolony/sdk/j;

    iget-boolean v0, v0, Lcom/adcolony/sdk/j;->b:Z

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/adcolony/sdk/bg$33;->a:Lcom/adcolony/sdk/bw;

    invoke-interface {v0}, Lcom/adcolony/sdk/bw;->a()V

    .line 589
    :goto_0
    return-void

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/bg$33;->b:Lcom/adcolony/sdk/bg;

    iget-object v0, v0, Lcom/adcolony/sdk/bg;->d:Lcom/adcolony/sdk/by;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Lcom/adcolony/sdk/by;->a(Lcom/adcolony/sdk/bv;J)V

    goto :goto_0
.end method
