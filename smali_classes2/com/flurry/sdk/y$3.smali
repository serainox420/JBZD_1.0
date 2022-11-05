.class final Lcom/flurry/sdk/y$3;
.super Lcom/flurry/sdk/ma;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/y;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/flurry/sdk/y;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/y;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/flurry/sdk/y$3;->b:Lcom/flurry/sdk/y;

    iput-object p2, p0, Lcom/flurry/sdk/y$3;->a:Ljava/util/List;

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 191
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    .line 1251
    iget-object v0, v0, Lcom/flurry/sdk/i;->i:Lcom/flurry/sdk/ab;

    .line 191
    iget-object v1, p0, Lcom/flurry/sdk/y$3;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ab;->a(Ljava/util/List;)V

    .line 192
    return-void
.end method
