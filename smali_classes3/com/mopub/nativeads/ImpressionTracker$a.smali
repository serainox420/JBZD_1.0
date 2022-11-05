.class Lcom/mopub/nativeads/ImpressionTracker$a;
.super Ljava/lang/Object;
.source "ImpressionTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Lcom/mopub/common/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/ImpressionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/nativeads/ImpressionTracker;

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


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/ImpressionTracker;)V
    .locals 1

    .prologue
    .line 165
    iput-object p1, p0, Lcom/mopub/nativeads/ImpressionTracker$a;->a:Lcom/mopub/nativeads/ImpressionTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/ImpressionTracker$a;->b:Ljava/util/ArrayList;

    .line 167
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 171
    iget-object v0, p0, Lcom/mopub/nativeads/ImpressionTracker$a;->a:Lcom/mopub/nativeads/ImpressionTracker;

    invoke-static {v0}, Lcom/mopub/nativeads/ImpressionTracker;->b(Lcom/mopub/nativeads/ImpressionTracker;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 172
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 173
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/k;

    .line 176
    iget-object v2, p0, Lcom/mopub/nativeads/ImpressionTracker$a;->a:Lcom/mopub/nativeads/ImpressionTracker;

    invoke-static {v2}, Lcom/mopub/nativeads/ImpressionTracker;->c(Lcom/mopub/nativeads/ImpressionTracker;)Lcom/mopub/nativeads/l$b;

    move-result-object v4

    iget-wide v6, v0, Lcom/mopub/nativeads/k;->b:J

    iget-object v2, v0, Lcom/mopub/nativeads/k;->a:Ljava/lang/Object;

    check-cast v2, Lcom/mopub/nativeads/ImpressionInterface;

    invoke-interface {v2}, Lcom/mopub/nativeads/ImpressionInterface;->getImpressionMinTimeViewed()I

    move-result v2

    invoke-virtual {v4, v6, v7, v2}, Lcom/mopub/nativeads/l$b;->a(JI)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    iget-object v2, v0, Lcom/mopub/nativeads/k;->a:Ljava/lang/Object;

    check-cast v2, Lcom/mopub/nativeads/ImpressionInterface;

    invoke-interface {v2, v1}, Lcom/mopub/nativeads/ImpressionInterface;->recordImpression(Landroid/view/View;)V

    .line 183
    iget-object v0, v0, Lcom/mopub/nativeads/k;->a:Ljava/lang/Object;

    check-cast v0, Lcom/mopub/nativeads/ImpressionInterface;

    invoke-interface {v0}, Lcom/mopub/nativeads/ImpressionInterface;->setImpressionRecorded()V

    .line 186
    iget-object v0, p0, Lcom/mopub/nativeads/ImpressionTracker$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/mopub/nativeads/ImpressionTracker$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 190
    iget-object v2, p0, Lcom/mopub/nativeads/ImpressionTracker$a;->a:Lcom/mopub/nativeads/ImpressionTracker;

    invoke-virtual {v2, v0}, Lcom/mopub/nativeads/ImpressionTracker;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/mopub/nativeads/ImpressionTracker$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 194
    iget-object v0, p0, Lcom/mopub/nativeads/ImpressionTracker$a;->a:Lcom/mopub/nativeads/ImpressionTracker;

    invoke-static {v0}, Lcom/mopub/nativeads/ImpressionTracker;->b(Lcom/mopub/nativeads/ImpressionTracker;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 195
    iget-object v0, p0, Lcom/mopub/nativeads/ImpressionTracker$a;->a:Lcom/mopub/nativeads/ImpressionTracker;

    invoke-virtual {v0}, Lcom/mopub/nativeads/ImpressionTracker;->a()V

    .line 197
    :cond_3
    return-void
.end method
