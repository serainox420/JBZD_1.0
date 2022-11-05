.class final Lcom/flurry/sdk/gu$2;
.super Lcom/flurry/sdk/ma;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/gu;->a(Ljava/lang/String;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:Lcom/flurry/sdk/gu;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gu;FF)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/flurry/sdk/gu$2;->c:Lcom/flurry/sdk/gu;

    iput p2, p0, Lcom/flurry/sdk/gu$2;->a:F

    iput p3, p0, Lcom/flurry/sdk/gu$2;->b:F

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 377
    iget-object v0, p0, Lcom/flurry/sdk/gu$2;->c:Lcom/flurry/sdk/gu;

    invoke-static {v0}, Lcom/flurry/sdk/gu;->a(Lcom/flurry/sdk/gu;)Lcom/flurry/sdk/gv;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/flurry/sdk/gu$2;->c:Lcom/flurry/sdk/gu;

    invoke-static {v0}, Lcom/flurry/sdk/gu;->a(Lcom/flurry/sdk/gu;)Lcom/flurry/sdk/gv;

    move-result-object v0

    iget v1, p0, Lcom/flurry/sdk/gu$2;->a:F

    iget v2, p0, Lcom/flurry/sdk/gu$2;->b:F

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/gv;->a(FF)V

    .line 380
    :cond_0
    return-void
.end method
