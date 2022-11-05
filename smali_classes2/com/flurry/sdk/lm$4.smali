.class final Lcom/flurry/sdk/lm$4;
.super Lcom/flurry/sdk/ma;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/lm;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/lk;

.field final synthetic b:Lcom/flurry/sdk/lm;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/lm;Lcom/flurry/sdk/lk;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/flurry/sdk/lm$4;->b:Lcom/flurry/sdk/lm;

    iput-object p2, p0, Lcom/flurry/sdk/lm$4;->a:Lcom/flurry/sdk/lk;

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/flurry/sdk/lm$4;->b:Lcom/flurry/sdk/lm;

    iget-object v1, p0, Lcom/flurry/sdk/lm$4;->a:Lcom/flurry/sdk/lk;

    invoke-static {v0, v1}, Lcom/flurry/sdk/lm;->a(Lcom/flurry/sdk/lm;Lcom/flurry/sdk/lk;)V

    .line 327
    return-void
.end method
