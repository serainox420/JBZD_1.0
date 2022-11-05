.class Lcom/moat/analytics/mobile/aol/WebViewHoundImpl;
.super Ljava/lang/Object;
.source "WebViewHoundImpl.java"

# interfaces
.implements Lcom/moat/analytics/mobile/aol/WebViewHound;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/aol/WebViewHoundImpl$IterableViewGroup;
    }
.end annotation


# static fields
.field private static final MAX_HUNT_STEPS:I = 0x64

.field private static final TAG:Ljava/lang/String; = "MoatWebViewHound"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sniff(Landroid/view/ViewGroup;)Lcom/moat/analytics/mobile/aol/base/functional/Optional;
    .locals 8
    .annotation build Lcom/moat/analytics/mobile/aol/base/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Lcom/moat/analytics/mobile/aol/base/functional/Optional",
            "<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/aol/base/exception/MoatException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 25
    instance-of v0, p1, Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 26
    check-cast p1, Landroid/webkit/WebView;

    invoke-static {p1}, Lcom/moat/analytics/mobile/aol/base/functional/Optional;->of(Ljava/lang/Object;)Lcom/moat/analytics/mobile/aol/base/functional/Optional;

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    .line 28
    :cond_0
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 29
    invoke-interface {v4, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 32
    const/4 v0, 0x0

    move-object v1, v2

    .line 33
    :goto_1
    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    const/16 v3, 0x64

    if-ge v0, v3, :cond_5

    .line 34
    add-int/lit8 v3, v0, 0x1

    .line 35
    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 36
    new-instance v6, Lcom/moat/analytics/mobile/aol/WebViewHoundImpl$IterableViewGroup;

    invoke-direct {v6, v0, v2}, Lcom/moat/analytics/mobile/aol/WebViewHoundImpl$IterableViewGroup;-><init>(Landroid/view/ViewGroup;Lcom/moat/analytics/mobile/aol/WebViewHoundImpl$1;)V

    .line 37
    invoke-virtual {v6}, Lcom/moat/analytics/mobile/aol/WebViewHoundImpl$IterableViewGroup;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 38
    instance-of v7, v0, Landroid/webkit/WebView;

    if-eqz v7, :cond_2

    .line 39
    if-nez v1, :cond_3

    move-object v1, v0

    .line 40
    check-cast v1, Landroid/webkit/WebView;

    .line 47
    :cond_2
    instance-of v7, v0, Landroid/view/ViewGroup;

    if-eqz v7, :cond_1

    .line 48
    check-cast v0, Landroid/view/ViewGroup;

    .line 49
    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 53
    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-interface {v4, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 42
    :cond_3
    const-string v0, "MoatWebViewHound"

    const-string v1, "Ambiguous ad container: multiple WebViews reside within it."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    :cond_4
    move v0, v3

    .line 57
    goto :goto_1

    .line 58
    :cond_5
    invoke-static {v1}, Lcom/moat/analytics/mobile/aol/base/functional/Optional;->ofNullable(Ljava/lang/Object;)Lcom/moat/analytics/mobile/aol/base/functional/Optional;

    move-result-object v0

    goto :goto_0
.end method
