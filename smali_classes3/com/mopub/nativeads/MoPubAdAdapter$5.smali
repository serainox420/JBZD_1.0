.class Lcom/mopub/nativeads/MoPubAdAdapter$5;
.super Ljava/lang/Object;
.source "MoPubAdAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/MoPubAdAdapter;->setOnItemLongClickListener(Landroid/widget/ListView;Landroid/widget/AdapterView$OnItemLongClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/AdapterView$OnItemLongClickListener;

.field final synthetic b:Lcom/mopub/nativeads/MoPubAdAdapter;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/MoPubAdAdapter;Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0

    .prologue
    .line 514
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubAdAdapter$5;->b:Lcom/mopub/nativeads/MoPubAdAdapter;

    iput-object p2, p0, Lcom/mopub/nativeads/MoPubAdAdapter$5;->a:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 518
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubAdAdapter$5;->b:Lcom/mopub/nativeads/MoPubAdAdapter;

    invoke-virtual {v0, p3}, Lcom/mopub/nativeads/MoPubAdAdapter;->isAd(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mopub/nativeads/MoPubAdAdapter$5;->a:Landroid/widget/AdapterView$OnItemLongClickListener;

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubAdAdapter$5;->b:Lcom/mopub/nativeads/MoPubAdAdapter;

    invoke-static {v1}, Lcom/mopub/nativeads/MoPubAdAdapter;->b(Lcom/mopub/nativeads/MoPubAdAdapter;)Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getOriginalPosition(I)I

    move-result v3

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
