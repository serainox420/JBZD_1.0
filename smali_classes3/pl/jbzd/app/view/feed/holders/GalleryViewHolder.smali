.class public Lpl/jbzd/app/view/feed/holders/GalleryViewHolder;
.super Lpl/jbzd/app/view/feed/holders/StandardViewHolder;
.source "GalleryViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpl/jbzd/app/view/feed/holders/StandardViewHolder",
        "<",
        "Lpl/jbzd/app/view/feed/a/b;",
        ">;"
    }
.end annotation


# instance fields
.field public btnShow:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field public txtPhotosCounter:Lpl/jbzd/core/ui/view/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field public txtPhotosForm:Lpl/jbzd/core/ui/view/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;-><init>(Landroid/view/View;)V

    .line 25
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lpl/jbzd/app/view/feed/a/a;)V
    .locals 0

    .prologue
    .line 17
    check-cast p1, Lpl/jbzd/app/view/feed/a/b;

    invoke-virtual {p0, p1}, Lpl/jbzd/app/view/feed/holders/GalleryViewHolder;->a(Lpl/jbzd/app/view/feed/a/b;)V

    return-void
.end method

.method public a(Lpl/jbzd/app/view/feed/a/b;)V
    .locals 5

    .prologue
    .line 30
    invoke-super {p0, p1}, Lpl/jbzd/app/view/feed/holders/StandardViewHolder;->a(Lpl/jbzd/app/view/feed/a/a;)V

    .line 31
    iget-object v0, p1, Lpl/jbzd/app/view/feed/a/b;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    check-cast v0, Lpl/jbzd/app/model/Media;

    check-cast v0, Lpl/jbzd/app/model/Media;

    .line 32
    iget-object v1, p0, Lpl/jbzd/app/view/feed/holders/GalleryViewHolder;->txtPhotosCounter:Lpl/jbzd/core/ui/view/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lpl/jbzd/app/model/Media;->realmGet$pictures()Lio/realm/q;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/q;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lpl/jbzd/core/ui/view/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v1, p0, Lpl/jbzd/app/view/feed/holders/GalleryViewHolder;->txtPhotosForm:Lpl/jbzd/core/ui/view/TextView;

    invoke-virtual {v0}, Lpl/jbzd/app/model/Media;->realmGet$pictures()Lio/realm/q;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/q;->size()I

    move-result v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "zdj\u0119cie"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "zdj\u0119cia"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "zdj\u0119\u0107"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lpl/jbzd/core/a/e;->a(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lpl/jbzd/core/ui/view/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    return-void
.end method
