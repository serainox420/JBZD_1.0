.class final Lcom/flurry/sdk/dv$1$3;
.super Lcom/flurry/sdk/ma;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/dv$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/dv$1;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/dv$1;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/flurry/sdk/dv$1$3;->a:Lcom/flurry/sdk/dv$1;

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/flurry/sdk/dv$1$3;->a:Lcom/flurry/sdk/dv$1;

    iget-object v0, v0, Lcom/flurry/sdk/dv$1;->a:Lcom/flurry/sdk/dv;

    invoke-static {v0}, Lcom/flurry/sdk/dv;->d(Lcom/flurry/sdk/dv;)V

    .line 113
    return-void
.end method
