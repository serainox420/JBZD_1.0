.class public Lpl/jbzd/app/view/feed/holders/UserViewHolder;
.super Lpl/jbzd/core/ui/view/a;
.source "UserViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpl/jbzd/core/ui/view/a",
        "<",
        "Lpl/jbzd/app/model/User;",
        ">;"
    }
.end annotation


# instance fields
.field public avatar:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field public txtUsername:Lpl/jbzd/core/ui/view/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lpl/jbzd/core/ui/view/a;-><init>(Landroid/view/View;)V

    .line 43
    return-void
.end method


# virtual methods
.method public a(Lpl/jbzd/app/model/User;)V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lpl/jbzd/app/view/feed/holders/UserViewHolder;->txtUsername:Lpl/jbzd/core/ui/view/TextView;

    invoke-virtual {p1}, Lpl/jbzd/app/model/User;->realmGet$username()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {p1}, Lpl/jbzd/app/model/User;->realmGet$avatar()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lpl/jbzd/app/model/User;->realmGet$avatar()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lpl/jbzd/app/view/feed/holders/UserViewHolder;->avatar:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lpl/jbzd/app/model/User;->realmGet$avatar()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Landroid/net/Uri;)V

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/view/feed/holders/UserViewHolder;->avatar:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    const v1, 0x7f02005c

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->setPlaceholderImage(I)V

    goto :goto_0
.end method
