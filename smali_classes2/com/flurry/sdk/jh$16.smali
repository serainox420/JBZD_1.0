.class final Lcom/flurry/sdk/jh$16;
.super Lcom/flurry/sdk/ma;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/jh;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/jh;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/jh;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/flurry/sdk/jh$16;->a:Lcom/flurry/sdk/jh;

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 285
    invoke-static {}, Lcom/flurry/sdk/hr;->a()Lcom/flurry/sdk/hr;

    move-result-object v0

    .line 1086
    iget-object v0, v0, Lcom/flurry/sdk/hr;->a:Lcom/flurry/sdk/im;

    .line 285
    invoke-virtual {v0}, Lcom/flurry/sdk/im;->b()V

    .line 286
    return-void
.end method
