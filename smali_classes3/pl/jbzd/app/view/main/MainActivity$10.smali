.class Lpl/jbzd/app/view/main/MainActivity$10;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lpl/jbzd/api/auth/LoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/view/main/MainActivity;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/view/menu/MenuAdapter;

.field final synthetic b:Lpl/jbzd/app/view/main/MainActivity;


# direct methods
.method constructor <init>(Lpl/jbzd/app/view/main/MainActivity;Lpl/jbzd/app/view/menu/MenuAdapter;)V
    .locals 0

    .prologue
    .line 656
    iput-object p1, p0, Lpl/jbzd/app/view/main/MainActivity$10;->b:Lpl/jbzd/app/view/main/MainActivity;

    iput-object p2, p0, Lpl/jbzd/app/view/main/MainActivity$10;->a:Lpl/jbzd/app/view/menu/MenuAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lpl/jbzd/api/response/UserResponse;)V
    .locals 7

    .prologue
    const/4 v2, -0x1

    .line 666
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity$10;->a:Lpl/jbzd/app/view/menu/MenuAdapter;

    if-eqz v0, :cond_1

    .line 668
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity$10;->a:Lpl/jbzd/app/view/menu/MenuAdapter;

    sget-object v1, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->FAVORITE:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v1}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/menu/MenuAdapter;->a(I)I

    move-result v0

    .line 670
    if-ne v0, v2, :cond_0

    .line 672
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity$10;->a:Lpl/jbzd/app/view/menu/MenuAdapter;

    sget-object v1, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->HOME:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v1}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/menu/MenuAdapter;->a(I)I

    move-result v0

    .line 673
    if-ne v0, v2, :cond_2

    const/4 v0, 0x3

    .line 674
    :goto_0
    iget-object v1, p0, Lpl/jbzd/app/view/main/MainActivity$10;->b:Lpl/jbzd/app/view/main/MainActivity;

    invoke-static {v1}, Lpl/jbzd/app/view/main/MainActivity;->d(Lpl/jbzd/app/view/main/MainActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lpl/jbzd/app/view/menu/model/Item;

    sget-object v3, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->FAVORITE:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v3}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->ordinal()I

    move-result v3

    const v4, 0x7f020198

    iget-object v5, p0, Lpl/jbzd/app/view/main/MainActivity$10;->b:Lpl/jbzd/app/view/main/MainActivity;

    const v6, 0x7f0a00e6

    invoke-virtual {v5, v6}, Lpl/jbzd/app/view/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lpl/jbzd/app/view/menu/model/Item;-><init>(IILjava/lang/String;)V

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 677
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity$10;->a:Lpl/jbzd/app/view/menu/MenuAdapter;

    invoke-virtual {v0}, Lpl/jbzd/app/view/menu/MenuAdapter;->notifyDataSetChanged()V

    .line 679
    :cond_1
    return-void

    .line 673
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
