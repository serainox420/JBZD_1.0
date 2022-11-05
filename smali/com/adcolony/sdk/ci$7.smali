.class Lcom/adcolony/sdk/ci$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ci;->f()V
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
    .line 645
    iput-object p1, p0, Lcom/adcolony/sdk/ci$7;->a:Lcom/adcolony/sdk/ci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 648
    iget-object v0, p0, Lcom/adcolony/sdk/ci$7;->a:Lcom/adcolony/sdk/ci;

    iget-object v0, v0, Lcom/adcolony/sdk/ci;->H:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 649
    iget-object v0, p0, Lcom/adcolony/sdk/ci$7;->a:Lcom/adcolony/sdk/ci;

    iget-object v0, v0, Lcom/adcolony/sdk/ci;->H:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 650
    const-string v1, "yvolverSignature"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 651
    const-string v1, "yvolverSignature"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    :cond_0
    iget-object v1, p0, Lcom/adcolony/sdk/ci$7;->a:Lcom/adcolony/sdk/ci;

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/ci;->a(Ljava/util/Map;)V

    .line 655
    :cond_1
    return-void
.end method
