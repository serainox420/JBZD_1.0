.class final Lcom/flurry/sdk/aq$1$1;
.super Lcom/flurry/sdk/ma;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/aq$1;->onEvent(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/aq$1;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/aq$1;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/flurry/sdk/aq$1$1;->a:Lcom/flurry/sdk/aq$1;

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/flurry/sdk/aq$1$1;->a:Lcom/flurry/sdk/aq$1;

    iget-object v0, v0, Lcom/flurry/sdk/aq$1;->a:Lcom/flurry/sdk/aq;

    invoke-static {v0}, Lcom/flurry/sdk/aq;->b(Lcom/flurry/sdk/aq;)Lcom/flurry/sdk/ai;

    move-result-object v0

    if-nez v0, :cond_0

    .line 306
    :goto_0
    return-void

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/aq$1$1;->a:Lcom/flurry/sdk/aq$1;

    iget-object v0, v0, Lcom/flurry/sdk/aq$1;->a:Lcom/flurry/sdk/aq;

    invoke-virtual {v0}, Lcom/flurry/sdk/aq;->b()V

    .line 305
    iget-object v0, p0, Lcom/flurry/sdk/aq$1$1;->a:Lcom/flurry/sdk/aq$1;

    iget-object v0, v0, Lcom/flurry/sdk/aq$1;->a:Lcom/flurry/sdk/aq;

    invoke-virtual {v0}, Lcom/flurry/sdk/aq;->a()V

    goto :goto_0
.end method
