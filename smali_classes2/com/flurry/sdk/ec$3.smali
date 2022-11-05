.class final Lcom/flurry/sdk/ec$3;
.super Lcom/flurry/sdk/ma;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ec;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ec;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/flurry/sdk/ec$3;->a:Lcom/flurry/sdk/ec;

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 230
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    .line 1240
    iget-object v0, v0, Lcom/flurry/sdk/i;->f:Lcom/flurry/sdk/dp;

    .line 2080
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/flurry/sdk/kx;->c:Z

    .line 231
    invoke-static {}, Lcom/flurry/sdk/en;->a()Lcom/flurry/sdk/en;

    move-result-object v0

    .line 3064
    iget-object v0, v0, Lcom/flurry/sdk/en;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 232
    return-void
.end method
