.class Lcom/mopub/nativeads/MoPubAdAdapter$4;
.super Ljava/lang/Object;
.source "MoPubAdAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/MoPubAdAdapter;->setOnClickListener(Landroid/widget/ListView;Landroid/widget/AdapterView$OnItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/AdapterView$OnItemClickListener;

.field final synthetic b:Lcom/mopub/nativeads/MoPubAdAdapter;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/MoPubAdAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .prologue
    .line 482
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubAdAdapter$4;->b:Lcom/mopub/nativeads/MoPubAdAdapter;

    iput-object p2, p0, Lcom/mopub/nativeads/MoPubAdAdapter$4;->a:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 486
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubAdAdapter$4;->b:Lcom/mopub/nativeads/MoPubAdAdapter;

    invoke-static {v0}, Lcom/mopub/nativeads/MoPubAdAdapter;->b(Lcom/mopub/nativeads/MoPubAdAdapter;)Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->isAd(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubAdAdapter$4;->a:Landroid/widget/AdapterView$OnItemClickListener;

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubAdAdapter$4;->b:Lcom/mopub/nativeads/MoPubAdAdapter;

    invoke-static {v1}, Lcom/mopub/nativeads/MoPubAdAdapter;->b(Lcom/mopub/nativeads/MoPubAdAdapter;)Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getOriginalPosition(I)I

    move-result v3

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 490
    :cond_0
    return-void
.end method
