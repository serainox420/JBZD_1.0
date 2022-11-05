.class final Lcom/flurry/sdk/en$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/eo$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/en;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Lcom/flurry/sdk/en;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/en;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/flurry/sdk/en$1;->c:Lcom/flurry/sdk/en;

    iput-object p2, p0, Lcom/flurry/sdk/en$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/flurry/sdk/en$1;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 51
    iget-object v1, p0, Lcom/flurry/sdk/en$1;->c:Lcom/flurry/sdk/en;

    iget-object v0, p0, Lcom/flurry/sdk/en$1;->a:Ljava/lang/String;

    .line 1069
    iget-object v2, v1, Lcom/flurry/sdk/en;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    iget-object v0, v1, Lcom/flurry/sdk/en;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    const/4 v2, 0x7

    if-le v0, v2, :cond_0

    .line 1071
    iget-object v0, v1, Lcom/flurry/sdk/en;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1072
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1073
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1074
    iget-object v1, v1, Lcom/flurry/sdk/en;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/en$1;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/flurry/sdk/en$1;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 55
    :cond_1
    return-void
.end method
