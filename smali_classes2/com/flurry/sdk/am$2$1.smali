.class final Lcom/flurry/sdk/am$2$1;
.super Lcom/flurry/sdk/ma;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/am$2;->a(Lcom/flurry/sdk/ku;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/am$2;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/am$2;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/flurry/sdk/am$2$1;->a:Lcom/flurry/sdk/am$2;

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/flurry/sdk/am$2$1;->a:Lcom/flurry/sdk/am$2;

    iget-object v0, v0, Lcom/flurry/sdk/am$2;->a:Lcom/flurry/sdk/am;

    invoke-static {v0}, Lcom/flurry/sdk/am;->g(Lcom/flurry/sdk/am;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/flurry/sdk/am$2$1;->a:Lcom/flurry/sdk/am$2;

    iget-object v0, v0, Lcom/flurry/sdk/am$2;->a:Lcom/flurry/sdk/am;

    invoke-virtual {v0}, Lcom/flurry/sdk/am;->e()V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/am$2$1;->a:Lcom/flurry/sdk/am$2;

    iget-object v0, v0, Lcom/flurry/sdk/am$2;->a:Lcom/flurry/sdk/am;

    invoke-static {v0}, Lcom/flurry/sdk/am;->h(Lcom/flurry/sdk/am;)V

    .line 171
    return-void
.end method
