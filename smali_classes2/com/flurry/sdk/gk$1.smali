.class final Lcom/flurry/sdk/gk$1;
.super Lcom/flurry/sdk/ma;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/gk;->a(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gk;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gk;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/flurry/sdk/gk$1;->a:Lcom/flurry/sdk/gk;

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/flurry/sdk/gk$1;->a:Lcom/flurry/sdk/gk;

    iget-object v0, v0, Lcom/flurry/sdk/gk;->a:Lcom/flurry/sdk/gu;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/flurry/sdk/gk$1;->a:Lcom/flurry/sdk/gk;

    iget-object v0, v0, Lcom/flurry/sdk/gk;->a:Lcom/flurry/sdk/gu;

    invoke-virtual {v0}, Lcom/flurry/sdk/gu;->k()V

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/gk$1;->a:Lcom/flurry/sdk/gk;

    invoke-static {v0}, Lcom/flurry/sdk/gk;->a(Lcom/flurry/sdk/gk;)V

    .line 296
    return-void
.end method
