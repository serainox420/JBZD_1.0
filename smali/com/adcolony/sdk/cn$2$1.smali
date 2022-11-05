.class Lcom/adcolony/sdk/cn$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/cn$2;->a(Lcom/adcolony/sdk/bn$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/cn$2;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/cn$2;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/adcolony/sdk/cn$2$1;->a:Lcom/adcolony/sdk/cn$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/adcolony/sdk/cn$2$1;->a:Lcom/adcolony/sdk/cn$2;

    iget-object v0, v0, Lcom/adcolony/sdk/cn$2;->a:Lcom/adcolony/sdk/cn;

    invoke-virtual {v0}, Lcom/adcolony/sdk/cn;->c()V

    .line 346
    return-void
.end method
