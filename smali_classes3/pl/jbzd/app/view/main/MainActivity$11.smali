.class Lpl/jbzd/app/view/main/MainActivity$11;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lpl/jbzd/api/auth/LogoutCallback;


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
    .line 682
    iput-object p1, p0, Lpl/jbzd/app/view/main/MainActivity$11;->b:Lpl/jbzd/app/view/main/MainActivity;

    iput-object p2, p0, Lpl/jbzd/app/view/main/MainActivity$11;->a:Lpl/jbzd/app/view/menu/MenuAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess()V
    .locals 2

    .prologue
    .line 686
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity$11;->a:Lpl/jbzd/app/view/menu/MenuAdapter;

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity$11;->a:Lpl/jbzd/app/view/menu/MenuAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/menu/MenuAdapter;->notifyItemChanged(I)V

    .line 690
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity$11;->a:Lpl/jbzd/app/view/menu/MenuAdapter;

    sget-object v1, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->FAVORITE:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v1}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/menu/MenuAdapter;->a(I)I

    move-result v0

    .line 692
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 694
    iget-object v1, p0, Lpl/jbzd/app/view/main/MainActivity$11;->b:Lpl/jbzd/app/view/main/MainActivity;

    invoke-static {v1}, Lpl/jbzd/app/view/main/MainActivity;->d(Lpl/jbzd/app/view/main/MainActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 695
    iget-object v1, p0, Lpl/jbzd/app/view/main/MainActivity$11;->a:Lpl/jbzd/app/view/menu/MenuAdapter;

    invoke-virtual {v1, v0}, Lpl/jbzd/app/view/menu/MenuAdapter;->notifyItemRemoved(I)V

    .line 698
    :cond_0
    return-void
.end method
