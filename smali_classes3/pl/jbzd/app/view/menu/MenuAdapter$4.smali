.class Lpl/jbzd/app/view/menu/MenuAdapter$4;
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
    .line 187
    iput-object p1, p0, Lpl/jbzd/app/view/menu/MenuAdapter$4;->a:Lpl/jbzd/app/view/menu/MenuAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lpl/jbzd/app/view/menu/MenuAdapter$4;->a:Lpl/jbzd/app/view/menu/MenuAdapter;

    invoke-static {v0}, Lpl/jbzd/app/view/menu/MenuAdapter;->a(Lpl/jbzd/app/view/menu/MenuAdapter;)Lpl/jbzd/app/view/menu/MenuAdapter$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lpl/jbzd/app/view/menu/MenuAdapter$4;->a:Lpl/jbzd/app/view/menu/MenuAdapter;

    invoke-static {v0}, Lpl/jbzd/app/view/menu/MenuAdapter;->a(Lpl/jbzd/app/view/menu/MenuAdapter;)Lpl/jbzd/app/view/menu/MenuAdapter$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lpl/jbzd/app/view/menu/MenuAdapter$a;->d(Landroid/view/View;)V

    .line 193
    :cond_0
    return-void
.end method
