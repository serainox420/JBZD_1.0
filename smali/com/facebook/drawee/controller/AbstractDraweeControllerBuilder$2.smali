.class Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$2;
.super Ljava/lang/Object;
.source "AbstractDraweeControllerBuilder.java"

# interfaces
.implements Lcom/facebook/common/internal/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getDataSourceSupplierForRequest(Ljava/lang/Object;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)Lcom/facebook/common/internal/Supplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/common/internal/Supplier",
        "<",
        "Lcom/facebook/datasource/DataSource",
        "<TIMAGE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

.field final synthetic val$cacheLevel:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;

.field final synthetic val$callerContext:Ljava/lang/Object;

.field final synthetic val$imageRequest:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;Ljava/lang/Object;Ljava/lang/Object;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$2;->this$0:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    iput-object p2, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$2;->val$imageRequest:Ljava/lang/Object;

    iput-object p3, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$2;->val$callerContext:Ljava/lang/Object;

    iput-object p4, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$2;->val$cacheLevel:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/facebook/datasource/DataSource;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/datasource/DataSource",
            "<TIMAGE;>;"
        }
    .end annotation

    .prologue
    .line 386
    iget-object v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$2;->this$0:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    iget-object v1, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$2;->val$imageRequest:Ljava/lang/Object;

    iget-object v2, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$2;->val$callerContext:Ljava/lang/Object;

    iget-object v3, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$2;->val$cacheLevel:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->getDataSourceForRequest(Ljava/lang/Object;Ljava/lang/Object;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)Lcom/facebook/datasource/DataSource;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$2;->get()Lcom/facebook/datasource/DataSource;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 390
    invoke-static {p0}, Lcom/facebook/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "request"

    iget-object v2, p0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$2;->val$imageRequest:Ljava/lang/Object;

    .line 391
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 392
    invoke-virtual {v0}, Lcom/facebook/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 390
    return-object v0
.end method
