.class Lcom/adcolony/sdk/ci$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ci;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/ci;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ci;)V
    .locals 0

    .prologue
    .line 660
    iput-object p1, p0, Lcom/adcolony/sdk/ci$8;->a:Lcom/adcolony/sdk/ci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 663
    iget-object v0, p0, Lcom/adcolony/sdk/ci$8;->a:Lcom/adcolony/sdk/ci;

    iget-object v0, v0, Lcom/adcolony/sdk/ci;->G:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 664
    iget-object v0, p0, Lcom/adcolony/sdk/ci$8;->a:Lcom/adcolony/sdk/ci;

    iget-object v0, v0, Lcom/adcolony/sdk/ci;->G:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 665
    const-string v1, "yvolverSignature"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 666
    const-string v1, "yvolverSignature"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    :cond_0
    iget-object v1, p0, Lcom/adcolony/sdk/ci$8;->a:Lcom/adcolony/sdk/ci;

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/ci;->b(Ljava/util/Map;)V

    .line 670
    :cond_1
    return-void
.end method
