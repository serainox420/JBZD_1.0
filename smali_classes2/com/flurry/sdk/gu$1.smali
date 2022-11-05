.class final Lcom/flurry/sdk/gu$1;
.super Lcom/flurry/sdk/ma;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/gu;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/flurry/sdk/gu;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gu;I)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/flurry/sdk/gu$1;->b:Lcom/flurry/sdk/gu;

    iput p2, p0, Lcom/flurry/sdk/gu$1;->a:I

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/flurry/sdk/gu$1;->b:Lcom/flurry/sdk/gu;

    invoke-static {v0}, Lcom/flurry/sdk/gu;->a(Lcom/flurry/sdk/gu;)Lcom/flurry/sdk/gv;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/flurry/sdk/gu$1;->b:Lcom/flurry/sdk/gu;

    invoke-static {v0}, Lcom/flurry/sdk/gu;->a(Lcom/flurry/sdk/gu;)Lcom/flurry/sdk/gv;

    move-result-object v0

    iget v1, p0, Lcom/flurry/sdk/gu$1;->a:I

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gv;->a(I)V

    .line 199
    :cond_0
    return-void
.end method
