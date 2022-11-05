.class public final Lcom/flurry/sdk/ey$1;
.super Lcom/flurry/sdk/ma;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ey;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/ey;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/flurry/sdk/ey$1;->a:Lcom/flurry/sdk/ey;

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/flurry/sdk/ey$1;->a:Lcom/flurry/sdk/ey;

    invoke-virtual {v0}, Lcom/flurry/sdk/ey;->a()Ljava/util/Map;

    move-result-object v0

    .line 77
    const-string v1, "data"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/flurry/sdk/ey$1;->a:Lcom/flurry/sdk/ey;

    invoke-static {v1, v0}, Lcom/flurry/sdk/ey;->a(Lcom/flurry/sdk/ey;Ljava/util/Map;)V

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/ey$1;->a:Lcom/flurry/sdk/ey;

    invoke-static {v1, v0}, Lcom/flurry/sdk/ey;->b(Lcom/flurry/sdk/ey;Ljava/util/Map;)V

    goto :goto_0
.end method
