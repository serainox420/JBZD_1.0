.class final Lcom/flurry/sdk/dv$6$1;
.super Lcom/flurry/sdk/ma;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/dv$6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/dv$6;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/dv$6;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/flurry/sdk/dv$6$1;->a:Lcom/flurry/sdk/dv$6;

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/flurry/sdk/dv$6$1;->a:Lcom/flurry/sdk/dv$6;

    iget-object v0, v0, Lcom/flurry/sdk/dv$6;->a:Lcom/flurry/sdk/dv;

    invoke-static {v0}, Lcom/flurry/sdk/dv;->g(Lcom/flurry/sdk/dv;)V

    .line 147
    return-void
.end method
