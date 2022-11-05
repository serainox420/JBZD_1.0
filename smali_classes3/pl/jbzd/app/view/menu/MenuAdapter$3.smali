.class Lpl/jbzd/app/view/menu/MenuAdapter$3;
.super Ljava/lang/Object;
.source "MenuAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/view/menu/MenuAdapter;->a(Landroid/view/ViewGroup;I)Lpl/jbzd/core/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/view/menu/MenuAdapter;


# direct methods
.method constructor <init>(Lpl/jbzd/app/view/menu/MenuAdapter;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lpl/jbzd/app/view/menu/MenuAdapter$3;->a:Lpl/jbzd/app/view/menu/MenuAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lpl/jbzd/app/view/menu/MenuAdapter$3;->a:Lpl/jbzd/app/view/menu/MenuAdapter;

    invoke-static {v0}, Lpl/jbzd/app/view/menu/MenuAdapter;->a(Lpl/jbzd/app/view/menu/MenuAdapter;)Lpl/jbzd/app/view/menu/MenuAdapter$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 170
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lpl/jbzd/api/ApiClient;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/view/menu/MenuAdapter$3;->a:Lpl/jbzd/app/view/menu/MenuAdapter;

    invoke-static {v0}, Lpl/jbzd/app/view/menu/MenuAdapter;->a(Lpl/jbzd/app/view/menu/MenuAdapter;)Lpl/jbzd/app/view/menu/MenuAdapter$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lpl/jbzd/app/view/menu/MenuAdapter$a;->b(Landroid/view/View;)V

    .line 177
    :cond_1
    :goto_0
    return-void

    .line 174
    :cond_2
    iget-object v0, p0, Lpl/jbzd/app/view/menu/MenuAdapter$3;->a:Lpl/jbzd/app/view/menu/MenuAdapter;

    invoke-static {v0}, Lpl/jbzd/app/view/menu/MenuAdapter;->a(Lpl/jbzd/app/view/menu/MenuAdapter;)Lpl/jbzd/app/view/menu/MenuAdapter$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lpl/jbzd/app/view/menu/MenuAdapter$a;->c(Landroid/view/View;)V

    goto :goto_0
.end method
