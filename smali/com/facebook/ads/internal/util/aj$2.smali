.class Lcom/facebook/ads/internal/util/aj$2;
.super Lcom/facebook/ads/internal/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/util/aj;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/g/f;Lcom/facebook/ads/internal/util/aj$a;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/facebook/ads/internal/g/f;

.field final synthetic g:Lcom/facebook/ads/internal/util/aj;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/util/aj;DDDZLjava/lang/String;Lcom/facebook/ads/internal/g/f;)V
    .locals 12

    iput-object p1, p0, Lcom/facebook/ads/internal/util/aj$2;->g:Lcom/facebook/ads/internal/util/aj;

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/facebook/ads/internal/util/aj$2;->e:Ljava/lang/String;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/facebook/ads/internal/util/aj$2;->f:Lcom/facebook/ads/internal/g/f;

    move-object v3, p0

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move/from16 v10, p8

    invoke-direct/range {v3 .. v10}, Lcom/facebook/ads/internal/b/b;-><init>(DDDZ)V

    return-void
.end method


# virtual methods
.method protected a(ZZLcom/facebook/ads/internal/b/c;)V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/util/aj$2;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/util/aj$2;->f:Lcom/facebook/ads/internal/g/f;

    iget-object v1, p0, Lcom/facebook/ads/internal/util/aj$2;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/ads/internal/util/aj$2;->g:Lcom/facebook/ads/internal/util/aj;

    sget-object v3, Lcom/facebook/ads/internal/util/aj$b;->i:Lcom/facebook/ads/internal/util/aj$b;

    invoke-static {v2, v3}, Lcom/facebook/ads/internal/util/aj;->a(Lcom/facebook/ads/internal/util/aj;Lcom/facebook/ads/internal/util/aj$b;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/internal/g/f;->d(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/util/aj$2;->g:Lcom/facebook/ads/internal/util/aj;

    sget-object v1, Lcom/facebook/ads/internal/util/aj$b;->i:Lcom/facebook/ads/internal/util/aj$b;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/util/aj;->a(Lcom/facebook/ads/internal/util/aj$b;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/internal/util/aj$2;->f:Lcom/facebook/ads/internal/g/f;

    iget-object v2, p0, Lcom/facebook/ads/internal/util/aj$2;->g:Lcom/facebook/ads/internal/util/aj;

    invoke-static {v2}, Lcom/facebook/ads/internal/util/aj;->a(Lcom/facebook/ads/internal/util/aj;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/internal/g/f;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method
