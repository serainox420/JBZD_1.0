.class Lcom/moat/analytics/mobile/aol/WebViewHoundImpl$IterableViewGroup$ViewGroupIterator;
.super Ljava/lang/Object;
.source "WebViewHoundImpl.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/aol/WebViewHoundImpl$IterableViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewGroupIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private cursor:I

.field final synthetic this$0:Lcom/moat/analytics/mobile/aol/WebViewHoundImpl$IterableViewGroup;


# direct methods
.method private constructor <init>(Lcom/moat/analytics/mobile/aol/WebViewHoundImpl$IterableViewGroup;)V
    .locals 1

    .prologue
    .line 68
    iput-object p1, p0, Lcom/moat/analytics/mobile/aol/WebViewHoundImpl$IterableViewGroup$ViewGroupIterator;->this$0:Lcom/moat/analytics/mobile/aol/WebViewHoundImpl$IterableViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/moat/analytics/mobile/aol/WebViewHoundImpl$IterableViewGroup$ViewGroupIterator;->cursor:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/moat/analytics/mobile/aol/WebViewHoundImpl$IterableViewGroup;Lcom/moat/analytics/mobile/aol/WebViewHoundImpl$1;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/aol/WebViewHoundImpl$IterableViewGroup$ViewGroupIterator;-><init>(Lcom/moat/analytics/mobile/aol/WebViewHoundImpl$IterableViewGroup;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 73
    iget v0, p0, Lcom/moat/analytics/mobile/aol/WebViewHoundImpl$IterableViewGroup$ViewGroupIterator;->cursor:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/moat/analytics/mobile/aol/WebViewHoundImpl$IterableViewGroup$ViewGroupIterator;->this$0:Lcom/moat/analytics/mobile/aol/WebViewHoundImpl$IterableViewGroup;

    invoke-static {v1}, Lcom/moat/analytics/mobile/aol/WebViewHoundImpl$IterableViewGroup;->access$100(Lcom/moat/analytics/mobile/aol/WebViewHoundImpl$IterableViewGroup;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Landroid/view/View;
    .locals 2

    .prologue
    .line 78
    iget v0, p0, Lcom/moat/analytics/mobile/aol/WebViewHoundImpl$IterableViewGroup$ViewGroupIterator;->cursor:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/moat/analytics/mobile/aol/WebViewHoundImpl$IterableViewGroup$ViewGroupIterator;->cursor:I

    .line 79
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/WebViewHoundImpl$IterableViewGroup$ViewGroupIterator;->this$0:Lcom/moat/analytics/mobile/aol/WebViewHoundImpl$IterableViewGroup;

    invoke-static {v0}, Lcom/moat/analytics/mobile/aol/WebViewHoundImpl$IterableViewGroup;->access$100(Lcom/moat/analytics/mobile/aol/WebViewHoundImpl$IterableViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    iget v1, p0, Lcom/moat/analytics/mobile/aol/WebViewHoundImpl$IterableViewGroup$ViewGroupIterator;->cursor:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/aol/WebViewHoundImpl$IterableViewGroup$ViewGroupIterator;->next()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 84
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented. Under development."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
