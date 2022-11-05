.class public Lpl/jbzd/app/view/feed/holders/GalleryViewHolder_ViewBinding;
.super Lpl/jbzd/app/view/feed/holders/StandardViewHolder_ViewBinding;
.source "GalleryViewHolder_ViewBinding.java"


# instance fields
.field private b:Lpl/jbzd/app/view/feed/holders/GalleryViewHolder;


# direct methods
.method public constructor <init>(Lpl/jbzd/app/view/feed/holders/GalleryViewHolder;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lpl/jbzd/app/view/feed/holders/StandardViewHolder_ViewBinding;-><init>(Lpl/jbzd/app/view/feed/holders/StandardViewHolder;Landroid/view/View;)V

    .line 20
    iput-object p1, p0, Lpl/jbzd/app/view/feed/holders/GalleryViewHolder_ViewBinding;->b:Lpl/jbzd/app/view/feed/holders/GalleryViewHolder;

    .line 22
    const v0, 0x7f11016a

    const-string v1, "field \'txtPhotosCounter\'"

    const-class v2, Lpl/jbzd/core/ui/view/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/TextView;

    iput-object v0, p1, Lpl/jbzd/app/view/feed/holders/GalleryViewHolder;->txtPhotosCounter:Lpl/jbzd/core/ui/view/TextView;

    .line 23
    const v0, 0x7f11016b

    const-string v1, "field \'txtPhotosForm\'"

    const-class v2, Lpl/jbzd/core/ui/view/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/TextView;

    iput-object v0, p1, Lpl/jbzd/app/view/feed/holders/GalleryViewHolder;->txtPhotosForm:Lpl/jbzd/core/ui/view/TextView;

    .line 24
    const v0, 0x7f110169

    const-string v1, "field \'btnShow\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lpl/jbzd/app/view/feed/holders/GalleryViewHolder;->btnShow:Landroid/widget/LinearLayout;

    .line 25
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    iget-object v0, p0, Lpl/jbzd/app/view/feed/holders/GalleryViewHolder_ViewBinding;->b:Lpl/jbzd/app/view/feed/holders/GalleryViewHolder;

    .line 30
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_0
    iput-object v1, p0, Lpl/jbzd/app/view/feed/holders/GalleryViewHolder_ViewBinding;->b:Lpl/jbzd/app/view/feed/holders/GalleryViewHolder;

    .line 33
    iput-object v1, v0, Lpl/jbzd/app/view/feed/holders/GalleryViewHolder;->txtPhotosCounter:Lpl/jbzd/core/ui/view/TextView;

    .line 34
    iput-object v1, v0, Lpl/jbzd/app/view/feed/holders/GalleryViewHolder;->txtPhotosForm:Lpl/jbzd/core/ui/view/TextView;

    .line 35
    iput-object v1, v0, Lpl/jbzd/app/view/feed/holders/GalleryViewHolder;->btnShow:Landroid/widget/LinearLayout;

    .line 37
    invoke-super {p0}, Lpl/jbzd/app/view/feed/holders/StandardViewHolder_ViewBinding;->a()V

    .line 38
    return-void
.end method
