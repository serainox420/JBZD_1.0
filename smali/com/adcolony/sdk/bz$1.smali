.class Lcom/adcolony/sdk/bz$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bz;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/bz;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bz;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/adcolony/sdk/bz$1;->a:Lcom/adcolony/sdk/bz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/adcolony/sdk/bz$1;->a:Lcom/adcolony/sdk/bz;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/adcolony/sdk/bz$1;->a:Lcom/adcolony/sdk/bz;

    iget-object v0, v0, Lcom/adcolony/sdk/bz;->n:Lcom/adcolony/sdk/ck;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/ck;->a(Z)V

    .line 48
    :cond_0
    return-void
.end method
