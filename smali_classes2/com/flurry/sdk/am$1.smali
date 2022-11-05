.class final Lcom/flurry/sdk/am$1;
.super Lcom/flurry/sdk/ma;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/am;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/am;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/am;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/flurry/sdk/am$1;->a:Lcom/flurry/sdk/am;

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/flurry/sdk/am$1;->a:Lcom/flurry/sdk/am;

    invoke-static {v0}, Lcom/flurry/sdk/am;->a(Lcom/flurry/sdk/am;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/flurry/sdk/am$1;->a:Lcom/flurry/sdk/am;

    invoke-static {v0}, Lcom/flurry/sdk/am;->b(Lcom/flurry/sdk/am;)V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/am$1;->a:Lcom/flurry/sdk/am;

    invoke-static {v0}, Lcom/flurry/sdk/am;->c(Lcom/flurry/sdk/am;)V

    goto :goto_0
.end method
