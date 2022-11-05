.class Lcom/mopub/nativeads/l$c;
.super Ljava/lang/Object;
.source "VisibilityTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/nativeads/l;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/l;)V
    .locals 1

    .prologue
    .line 231
    iput-object p1, p0, Lcom/mopub/nativeads/l$c;->a:Lcom/mopub/nativeads/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/l$c;->c:Ljava/util/ArrayList;

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/l$c;->b:Ljava/util/ArrayList;

    .line 234
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 238
    iget-object v0, p0, Lcom/mopub/nativeads/l$c;->a:Lcom/mopub/nativeads/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mopub/nativeads/l;->a(Lcom/mopub/nativeads/l;Z)Z

    .line 239
    iget-object v0, p0, Lcom/mopub/nativeads/l$c;->a:Lcom/mopub/nativeads/l;

    invoke-static {v0}, Lcom/mopub/nativeads/l;->a(Lcom/mopub/nativeads/l;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 240
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 241
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mopub/nativeads/l$a;

    iget v4, v2, Lcom/mopub/nativeads/l$a;->a:I

    .line 242
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mopub/nativeads/l$a;

    iget v2, v2, Lcom/mopub/nativeads/l$a;->b:I

    .line 243
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/l$a;

    iget-object v0, v0, Lcom/mopub/nativeads/l$a;->d:Landroid/view/View;

    .line 245
    iget-object v5, p0, Lcom/mopub/nativeads/l$c;->a:Lcom/mopub/nativeads/l;

    invoke-static {v5}, Lcom/mopub/nativeads/l;->b(Lcom/mopub/nativeads/l;)Lcom/mopub/nativeads/l$b;

    move-result-object v5

    invoke-virtual {v5, v0, v1, v4}, Lcom/mopub/nativeads/l$b;->a(Landroid/view/View;Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 246
    iget-object v0, p0, Lcom/mopub/nativeads/l$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 247
    :cond_1
    iget-object v4, p0, Lcom/mopub/nativeads/l$c;->a:Lcom/mopub/nativeads/l;

    invoke-static {v4}, Lcom/mopub/nativeads/l;->b(Lcom/mopub/nativeads/l;)Lcom/mopub/nativeads/l$b;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v2}, Lcom/mopub/nativeads/l$b;->a(Landroid/view/View;Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/mopub/nativeads/l$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 252
    :cond_2
    iget-object v0, p0, Lcom/mopub/nativeads/l$c;->a:Lcom/mopub/nativeads/l;

    invoke-static {v0}, Lcom/mopub/nativeads/l;->c(Lcom/mopub/nativeads/l;)Lcom/mopub/nativeads/l$d;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 253
    iget-object v0, p0, Lcom/mopub/nativeads/l$c;->a:Lcom/mopub/nativeads/l;

    invoke-static {v0}, Lcom/mopub/nativeads/l;->c(Lcom/mopub/nativeads/l;)Lcom/mopub/nativeads/l$d;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/nativeads/l$c;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/mopub/nativeads/l$c;->c:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Lcom/mopub/nativeads/l$d;->onVisibilityChanged(Ljava/util/List;Ljava/util/List;)V

    .line 257
    :cond_3
    iget-object v0, p0, Lcom/mopub/nativeads/l$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 258
    iget-object v0, p0, Lcom/mopub/nativeads/l$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 259
    return-void
.end method
