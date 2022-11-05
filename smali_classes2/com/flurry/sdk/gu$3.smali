.class final Lcom/flurry/sdk/gu$3;
.super Lcom/flurry/sdk/ma;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/gu;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/flurry/sdk/gu;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gu;II)V
    .locals 0

    .prologue
    .line 428
    iput-object p1, p0, Lcom/flurry/sdk/gu$3;->c:Lcom/flurry/sdk/gu;

    iput p2, p0, Lcom/flurry/sdk/gu$3;->a:I

    iput p3, p0, Lcom/flurry/sdk/gu$3;->b:I

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/flurry/sdk/gu$3;->c:Lcom/flurry/sdk/gu;

    invoke-static {v0}, Lcom/flurry/sdk/gu;->a(Lcom/flurry/sdk/gu;)Lcom/flurry/sdk/gv;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/flurry/sdk/gu$3;->c:Lcom/flurry/sdk/gu;

    invoke-static {v0}, Lcom/flurry/sdk/gu;->a(Lcom/flurry/sdk/gu;)Lcom/flurry/sdk/gv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/gv;->b()V

    .line 434
    :cond_0
    return-void
.end method
