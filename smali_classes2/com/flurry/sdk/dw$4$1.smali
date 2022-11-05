.class final Lcom/flurry/sdk/dw$4$1;
.super Lcom/flurry/sdk/ma;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/dw$4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/dw$4;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/dw$4;)V
    .locals 0

    .prologue
    .line 573
    iput-object p1, p0, Lcom/flurry/sdk/dw$4$1;->a:Lcom/flurry/sdk/dw$4;

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/flurry/sdk/dw$4$1;->a:Lcom/flurry/sdk/dw$4;

    iget-object v0, v0, Lcom/flurry/sdk/dw$4;->b:Lcom/flurry/sdk/dw;

    invoke-static {v0}, Lcom/flurry/sdk/dw;->g(Lcom/flurry/sdk/dw;)V

    .line 577
    return-void
.end method
