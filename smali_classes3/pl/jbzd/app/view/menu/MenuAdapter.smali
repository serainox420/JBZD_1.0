.class public Lpl/jbzd/app/view/menu/MenuAdapter;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "MenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/jbzd/app/view/menu/MenuAdapter$MenuFooterViewHolder;,
        Lpl/jbzd/app/view/menu/MenuAdapter$MenuHeaderViewHolder;,
        Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemHeaderViewHolder;,
        Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemViewHolder;,
        Lpl/jbzd/app/view/menu/MenuAdapter$a;,
        Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Lpl/jbzd/core/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lpl/jbzd/app/view/menu/model/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lpl/jbzd/app/view/menu/MenuAdapter$a;


# direct methods
.method public constructor <init>(Ljava/util/List;Lpl/jbzd/app/view/menu/MenuAdapter$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lpl/jbzd/app/view/menu/model/a;",
            ">;",
            "Lpl/jbzd/app/view/menu/MenuAdapter$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 88
    iput-object p1, p0, Lpl/jbzd/app/view/menu/MenuAdapter;->a:Ljava/util/List;

    .line 89
    iput-object p2, p0, Lpl/jbzd/app/view/menu/MenuAdapter;->b:Lpl/jbzd/app/view/menu/MenuAdapter$a;

    .line 90
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lpl/jbzd/app/view/menu/MenuAdapter;->setHasStableIds(Z)V

    .line 91
    return-void
.end method

.method static synthetic a(Lpl/jbzd/app/view/menu/MenuAdapter;)Lpl/jbzd/app/view/menu/MenuAdapter$a;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lpl/jbzd/app/view/menu/MenuAdapter;->b:Lpl/jbzd/app/view/menu/MenuAdapter$a;

    return-object v0
.end method

.method static synthetic b(Lpl/jbzd/app/view/menu/MenuAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lpl/jbzd/app/view/menu/MenuAdapter;->a:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a(I)I
    .locals 4

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 97
    iget-object v1, p0, Lpl/jbzd/app/view/menu/MenuAdapter;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/menu/model/a;

    .line 99
    instance-of v3, v0, Lpl/jbzd/app/view/menu/model/Item;

    if-eqz v3, :cond_2

    check-cast v0, Lpl/jbzd/app/view/menu/model/Item;

    iget v0, v0, Lpl/jbzd/app/view/menu/model/Item;->b:I

    if-ne v0, p1, :cond_2

    .line 106
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/view/menu/MenuAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 107
    const/4 v1, -0x1

    .line 110
    :cond_1
    return v1

    .line 103
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 104
    goto :goto_0
.end method

.method public a(Landroid/view/ViewGroup;I)Lpl/jbzd/core/b;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 127
    const/4 v0, 0x0

    .line 129
    sget-object v1, Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;->ITEM:Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;

    invoke-virtual {v1}, Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;->ordinal()I

    move-result v1

    if-ne p2, v1, :cond_1

    .line 131
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040069

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 132
    new-instance v0, Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemViewHolder;

    invoke-direct {v0, v1}, Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemViewHolder;-><init>(Landroid/view/View;)V

    .line 134
    iget-object v1, v0, Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemViewHolder;->item:Lpl/jbzd/core/ui/view/TextView;

    new-instance v2, Lpl/jbzd/app/view/menu/MenuAdapter$1;

    invoke-direct {v2, p0, v0}, Lpl/jbzd/app/view/menu/MenuAdapter$1;-><init>(Lpl/jbzd/app/view/menu/MenuAdapter;Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemViewHolder;)V

    invoke-virtual {v1, v2}, Lpl/jbzd/core/ui/view/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    :cond_0
    :goto_0
    return-object v0

    .line 145
    :cond_1
    sget-object v1, Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;->ITEM_HEADER:Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;

    invoke-virtual {v1}, Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;->ordinal()I

    move-result v1

    if-ne p2, v1, :cond_2

    .line 147
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04006a

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 148
    new-instance v0, Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemHeaderViewHolder;

    invoke-direct {v0, v1}, Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemHeaderViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 150
    :cond_2
    sget-object v1, Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;->MENU_HEADER:Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;

    invoke-virtual {v1}, Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;->ordinal()I

    move-result v1

    if-ne p2, v1, :cond_3

    .line 152
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040068

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 153
    new-instance v0, Lpl/jbzd/app/view/menu/MenuAdapter$MenuHeaderViewHolder;

    invoke-direct {v0, v1}, Lpl/jbzd/app/view/menu/MenuAdapter$MenuHeaderViewHolder;-><init>(Landroid/view/View;)V

    .line 155
    iget-object v1, v0, Lpl/jbzd/app/view/menu/MenuAdapter$MenuHeaderViewHolder;->btnSettings:Lpl/jbzd/core/ui/view/TextView;

    new-instance v2, Lpl/jbzd/app/view/menu/MenuAdapter$2;

    invoke-direct {v2, p0}, Lpl/jbzd/app/view/menu/MenuAdapter$2;-><init>(Lpl/jbzd/app/view/menu/MenuAdapter;)V

    invoke-virtual {v1, v2}, Lpl/jbzd/core/ui/view/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v1, v0, Lpl/jbzd/app/view/menu/MenuAdapter$MenuHeaderViewHolder;->btnSignIn:Landroid/widget/RelativeLayout;

    new-instance v2, Lpl/jbzd/app/view/menu/MenuAdapter$3;

    invoke-direct {v2, p0}, Lpl/jbzd/app/view/menu/MenuAdapter$3;-><init>(Lpl/jbzd/app/view/menu/MenuAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 182
    :cond_3
    sget-object v1, Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;->MENU_FOOTER:Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;

    invoke-virtual {v1}, Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;->ordinal()I

    move-result v1

    if-ne p2, v1, :cond_0

    .line 184
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040067

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 185
    new-instance v0, Lpl/jbzd/app/view/menu/MenuAdapter$MenuFooterViewHolder;

    invoke-direct {v0, v1}, Lpl/jbzd/app/view/menu/MenuAdapter$MenuFooterViewHolder;-><init>(Landroid/view/View;)V

    .line 187
    iget-object v1, v0, Lpl/jbzd/app/view/menu/MenuAdapter$MenuFooterViewHolder;->btnFacebook:Lpl/jbzd/core/ui/view/TextView;

    new-instance v2, Lpl/jbzd/app/view/menu/MenuAdapter$4;

    invoke-direct {v2, p0}, Lpl/jbzd/app/view/menu/MenuAdapter$4;-><init>(Lpl/jbzd/app/view/menu/MenuAdapter;)V

    invoke-virtual {v1, v2}, Lpl/jbzd/core/ui/view/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v1, v0, Lpl/jbzd/app/view/menu/MenuAdapter$MenuFooterViewHolder;->btnInstagram:Lpl/jbzd/core/ui/view/TextView;

    new-instance v2, Lpl/jbzd/app/view/menu/MenuAdapter$5;

    invoke-direct {v2, p0}, Lpl/jbzd/app/view/menu/MenuAdapter$5;-><init>(Lpl/jbzd/app/view/menu/MenuAdapter;)V

    invoke-virtual {v1, v2}, Lpl/jbzd/core/ui/view/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public a(Lpl/jbzd/core/b;I)V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 214
    invoke-virtual {p0, p2}, Lpl/jbzd/app/view/menu/MenuAdapter;->getItemViewType(I)I

    move-result v0

    .line 216
    sget-object v1, Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;->ITEM:Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;

    invoke-virtual {v1}, Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 218
    check-cast p1, Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemViewHolder;

    .line 219
    iget-object v0, p0, Lpl/jbzd/app/view/menu/MenuAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/menu/model/Item;

    .line 221
    iget-object v1, p1, Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemViewHolder;->item:Lpl/jbzd/core/ui/view/TextView;

    iget-object v2, v0, Lpl/jbzd/app/view/menu/model/Item;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lpl/jbzd/core/ui/view/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v1, p1, Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemViewHolder;->item:Lpl/jbzd/core/ui/view/TextView;

    iget v0, v0, Lpl/jbzd/app/view/menu/model/Item;->c:I

    invoke-virtual {v1, v0, v3, v3, v3}, Lpl/jbzd/core/ui/view/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    sget-object v1, Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;->ITEM_HEADER:Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;

    invoke-virtual {v1}, Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 226
    check-cast p1, Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemHeaderViewHolder;

    .line 227
    iget-object v0, p0, Lpl/jbzd/app/view/menu/MenuAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/menu/model/b;

    .line 229
    iget-object v1, p1, Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemHeaderViewHolder;->item:Lpl/jbzd/core/ui/view/TextView;

    iget-object v0, v0, Lpl/jbzd/app/view/menu/model/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lpl/jbzd/core/ui/view/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 231
    :cond_2
    sget-object v1, Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;->MENU_HEADER:Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;

    invoke-virtual {v1}, Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 233
    check-cast p1, Lpl/jbzd/app/view/menu/MenuAdapter$MenuHeaderViewHolder;

    .line 235
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lpl/jbzd/api/ApiClient;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 237
    :cond_3
    iget-object v0, p1, Lpl/jbzd/app/view/menu/MenuAdapter$MenuHeaderViewHolder;->avatarUrl:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    .line 238
    iget-object v0, p1, Lpl/jbzd/app/view/menu/MenuAdapter$MenuHeaderViewHolder;->avatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 240
    iget-object v0, p1, Lpl/jbzd/app/view/menu/MenuAdapter$MenuHeaderViewHolder;->username:Lpl/jbzd/core/ui/view/TextView;

    iget-object v1, p1, Lpl/jbzd/app/view/menu/MenuAdapter$MenuHeaderViewHolder;->username:Lpl/jbzd/core/ui/view/TextView;

    invoke-virtual {v1}, Lpl/jbzd/core/ui/view/TextView;->getPaddingLeft()I

    move-result v1

    const/4 v2, 0x6

    invoke-static {v2}, Lpl/jbzd/core/a/a;->a(I)I

    move-result v2

    iget-object v3, p1, Lpl/jbzd/app/view/menu/MenuAdapter$MenuHeaderViewHolder;->username:Lpl/jbzd/core/ui/view/TextView;

    invoke-virtual {v3}, Lpl/jbzd/core/ui/view/TextView;->getPaddingRight()I

    move-result v3

    iget-object v4, p1, Lpl/jbzd/app/view/menu/MenuAdapter$MenuHeaderViewHolder;->username:Lpl/jbzd/core/ui/view/TextView;

    invoke-virtual {v4}, Lpl/jbzd/core/ui/view/TextView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lpl/jbzd/core/ui/view/TextView;->setPadding(IIII)V

    .line 241
    iget-object v0, p1, Lpl/jbzd/app/view/menu/MenuAdapter$MenuHeaderViewHolder;->username:Lpl/jbzd/core/ui/view/TextView;

    const v1, 0x7f0a00ee

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setText(I)V

    .line 242
    iget-object v0, p1, Lpl/jbzd/app/view/menu/MenuAdapter$MenuHeaderViewHolder;->avatar:Landroid/widget/ImageView;

    const v1, 0x7f02019e

    iget-object v2, p1, Lpl/jbzd/app/view/menu/MenuAdapter$MenuHeaderViewHolder;->avatar:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lpl/jbzd/core/a/a;->a(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 246
    :cond_4
    iget-object v0, p1, Lpl/jbzd/app/view/menu/MenuAdapter$MenuHeaderViewHolder;->username:Lpl/jbzd/core/ui/view/TextView;

    invoke-static {}, Lpl/jbzd/api/ApiClient;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getAvatar()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lpl/jbzd/api/ApiClient;->getAvatar()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 250
    iget-object v0, p1, Lpl/jbzd/app/view/menu/MenuAdapter$MenuHeaderViewHolder;->avatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 251
    iget-object v0, p1, Lpl/jbzd/app/view/menu/MenuAdapter$MenuHeaderViewHolder;->avatarUrl:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v3}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    .line 252
    iget-object v0, p1, Lpl/jbzd/app/view/menu/MenuAdapter$MenuHeaderViewHolder;->avatarUrl:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {}, Lpl/jbzd/api/ApiClient;->getAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 256
    :cond_5
    iget-object v0, p1, Lpl/jbzd/app/view/menu/MenuAdapter$MenuHeaderViewHolder;->avatarUrl:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    .line 257
    iget-object v0, p1, Lpl/jbzd/app/view/menu/MenuAdapter$MenuHeaderViewHolder;->avatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 258
    iget-object v0, p1, Lpl/jbzd/app/view/menu/MenuAdapter$MenuHeaderViewHolder;->avatar:Landroid/widget/ImageView;

    const v1, 0x7f02005c

    iget-object v2, p1, Lpl/jbzd/app/view/menu/MenuAdapter$MenuHeaderViewHolder;->avatar:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lpl/jbzd/core/a/a;->a(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lpl/jbzd/app/view/menu/MenuAdapter;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/view/menu/MenuAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 115
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lpl/jbzd/app/view/menu/MenuAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/menu/model/a;

    iget-object v0, v0, Lpl/jbzd/app/view/menu/model/a;->a:Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;

    invoke-virtual {v0}, Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;->ordinal()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$u;I)V
    .locals 0

    .prologue
    .line 31
    check-cast p1, Lpl/jbzd/core/b;

    invoke-virtual {p0, p1, p2}, Lpl/jbzd/app/view/menu/MenuAdapter;->a(Lpl/jbzd/core/b;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$u;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2}, Lpl/jbzd/app/view/menu/MenuAdapter;->a(Landroid/view/ViewGroup;I)Lpl/jbzd/core/b;

    move-result-object v0

    return-object v0
.end method
